const router = require('express').Router();
const { post } = require('../models');

router.post('/', (req, res) => {
  const post_post = async () => {
    try{
      await post(req.body.username, req.body.title, req.body.content);
      res.sendStatus(200);
    } catch(error){
      console.error(error);
    }
  };

  post_post();
});

module.exports = router;