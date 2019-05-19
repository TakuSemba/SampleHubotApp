module.exports = (robot) => {

  robot.respond(/aaa$/i, async (res) => {
    await new Promise((resolve) => setTimeout(resolve, 2000));

    res.send('you said aaa');
  });

  robot.hear (/aa/i, async (res) => {
    await new Promise((resolve) => setTimeout(resolve, 2000));
    res.send('yay')
  });
};
