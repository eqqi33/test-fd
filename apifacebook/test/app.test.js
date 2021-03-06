const request = require('supertest');
const app = require('../app');

describe('Test the root path', () => {
    test('It should response without login before the GET method', (done) => {
        request(app).get('/')
        .expect('Location',/\/login/)
        .expect(302, done);
    });
    test('It should response error the GET method', (done) => {
        request(app).get('/not-found').expect(404, done);
    });
});

describe('Test the logout path', () => {
    test('It should response redirect(302) to login page the GET method ', (done) => {
        request(app).get('/logout')
        .expect('Location',/\//)
        .expect(302, done);
    });        
});
