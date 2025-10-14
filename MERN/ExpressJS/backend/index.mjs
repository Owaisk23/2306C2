// const express = require('express')
import e from 'express';
import express from 'express';
import path from 'path';
const app = express()
const port = 3000
app.use(express.json());

const dirname = path.resolve();


app.get('/', (req, res) => {
  res.send('Hello World!')
})

// app.get('/contact', (req, res) => {
//   res.send('Hello from Contact Page!')
// })

app.get('/about', (req, res) => {
  res.send('Hello from About Page!')
})
app.get('/image', (req, res) => {
  
    res.sendFile(`${dirname}/static/pixel.jpg`);
})

app.use('/home', express.static(dirname, {index: '/static/index.html'}));

// Router Parameters (The are compulsory)
app.get('/product/:id', (req, res) => {
  res.json({name: 'Product No: ' + req.params.id});
})

app.get('/posts/:id', (req, res) => {
  let postId = req.params.id;
  let postObj = [
    {
      postId: 1,
      title: 'Palestine Ceases Fire',
      content: 'After 1100 days of conflict, a ceasefire was announced between',
    },
    {
      postId: 2,
      title: 'Ukraine War',
      content: 'The war in Ukraine has caused unprecedented destruction and',
    },
    {
      postId: 3,
      title: 'Global Economic Outlook',
      content: 'The global economy is facing significant challenges due to',
    }
  ];

  postObj.map((post) => {
    if(post.postId == postId){
      console.log(post);
      postObj = post;
    }
  })
    res.json(postObj);
})


// Query Parameters (They are option)
app.get('/categories', (req, res) => {
  if(req.query.name){
    res.json({name: "Category: " + req.query.name})
  }
  else {
    res.json({name: "All Categories"})
  }
})

// Request Body (They are used to send data to server)
app.get('/contact', (req, res) => {
  const name = req.body.name;
  const age = req.body.age;
  const city = req.body.city;

  res.json({name: name, age: age, city: city})
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
