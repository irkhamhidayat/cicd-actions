const app = require('./server') // Link to your server file
const supertest = require('supertest')
const request = supertest(app)


it('Call the /simple endpoint', async done => {
    const res = await request.get('/simple')
    expect(res.status).toBe(200)
    expect(res.text).toBe('Hello, Irkham belajar CI/CD!')
    done()
})
it('Call the / endpoint', async done => {
    const res = await request.get('/')
    expect(res.status).toBe(200)
    expect(res.text).toBe('This App is running properly!')
    done()
})
it('Call the /pong endpoint', async done => {
    const res = await request.get('/ping')
    expect(res.status).toBe(200)
    expect(res.text).toBe('Pong!')
    done()
})
it('Call the /hello/:name endpoint', async done => {
    const res = await request.get('/hello/Irkham')
    expect(res.status).toBe(200)
    expect(res.body.message).toBe('Hello Irkham')
    done()
})
  

  