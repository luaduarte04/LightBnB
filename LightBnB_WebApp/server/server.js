// require database
const database = require('./database');
// require API routes JS FILE
const apiRoutes = require('./apiRoutes');
// require users routes js file
const userRoutes = require('./userRoutes');

// check online to understand more
const path = require('path');




// require express
const express = require('express');
// require cookie
const cookieSession = require('cookie-session');
// require body parser
const bodyParser = require('body-parser');

// to express do something i need to enable by transfoming in a function
// app is my express server
const app = express();

// is just connecting public and joining with the directoy and assigning as the static part for express
app.use(express.static(path.join(__dirname, '../public')));

app.use(cookieSession({
  name: 'session',
  keys: ['key1']
}));

// Decode the input values from the form and insert those in req.body
// req.body = {
//   key: String,
//   key: Array
// }
app.use(bodyParser.urlencoded({ extended: false }));
// whatever json it gets it parses to an object
app.use(bodyParser.json());

// /api/endpoints
// activating apiRoueter for the thing like get and post
const apiRouter = express.Router();
// will take my router and my database and send to the file so it can run the functions in there
apiRoutes(apiRouter, database);
// prefix for all my routes to this route file
app.use('/api', apiRouter);


// /user/endpoints
const userRouter = express.Router();
userRoutes(userRouter, database);
app.use('/users', userRouter);


// that sends a smile face to http://localhost:3000/test is it to test if port and connection are working?
app.get("/test", (req, res) => {
  res.send("🤗");
});

// the port it will be using
const port = process.env.PORT || 3000;
app.listen(port, (err) => console.log(err || `listening on port ${port} 😎`));