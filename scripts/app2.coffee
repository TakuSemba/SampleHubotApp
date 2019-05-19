module.exports = (robot) ->

  robot.hear /bbb$/i, (res) ->
    res.send('you said bbb')
    await new Promise((resolve) => setTimeout(resolve, 2000))
    res.send('you said aaa')


  robot.hear /hello/i, (res) ->
    # await new Promise((resolve) => setTimeout(resolve, 2000))
    res.send('you said hello')

  robot.hear /test/i, (res) ->
    # await new Promise((resolve) => setTimeout(resolve, 2000))
    result = await new Promise((resolve) => resolve("hogehoge"))
    res.send('the result is ' + result)
