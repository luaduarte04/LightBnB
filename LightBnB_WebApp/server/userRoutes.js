// encrypt passoword or ids i dont think it hash
const bcrypt = require('bcrypt');

// why is module export here??
module.exports = function(router, database) {

  // Create a new user
  // is it from the client side? YES!
  // As per the documentation GET request are meant to fetch data from specified resource and
  // POST are meant to submit data to a specified resource.
  // i understand the get is for getting data but when i write here how does that relate with the client? when a client press a button sending info i would write here the action of that button as post? they are posting somenthing, is that it?
  // if a client click in a download button is that i get?
  router.post('/', (req, res) => {
    // so user is equal to info contained in body?
    const user = req.body;
    user.password = bcrypt.hashSync(user.password, 12);
    // so info in database becomes a json when going from a file to another
    // is that why i have to access this function like an object?
    database.addUser(user)
    .then(user => {
      if (!user) {
        res.send({error: "error"});
        return;
      }
      // if it is a usr then a smile face?
      req.session.userId = user.id;
      res.send("🤗");
    })
    // getting err
    .catch(err => res.send(err));
  });


  /**
   * Check if a user exists with a given username and password
   * @param {String} email
   * @param {String} password encrypted
   */
  const login =  function(email, password) {
    // goes inside database get that function and assign an email
    return database.getUserWithEmail(email)
    // email goes in the fuction, function should return user if true otherwise null
    .then(user => {
      // then compare will compare the password with the typed password
      if (bcrypt.compareSync(password, user.password)) {
        // if true login
        return user;
      }
      return null;
    });
  }
  // maybe it was suppose to be in a helper file
  exports.login = login;

  router.post('/login', (req, res) => {
    // EXPLANATION FOR THE CONST BELOW
    // const [one, two, three] = [1,2,3]
    // const one = 1;
    // const two = 2;
    // const three = 3;

    // const email = req.body.email;
    // const password = req.body.password;

    const {email, password} = req.body;

    login(email, password)
    // in login if its not an user error
      .then(user => {
        if (!user) {
          res.send({error: "error"});
          return;
        }
        // assigning id to user obj
        req.session.userId = user.id;
        // then sending to the client
        res.send({user: {name: user.name, email: user.email, id: user.id}});
      })
      .catch(err => res.send(err));
  });
  
  router.post('/logout', (req, res) => {
    req.session.userId = null;
    res.send({});
  });

  // current loged in user
  router.get("/me", (req, res) => {
    const userId = req.session.userId;
    if (!userId) {
      res.send({message: "not logged in"});
      return;
    }

    database.getUserWithId(userId)
      .then(user => {
        if (!user) {
          res.send({error: "no user with that id"});
          return;
        }
    
        res.send({user: {name: user.name, email: user.email, id: userId}});
      })
      .catch(err => res.send(err));
  });

  return router;
}