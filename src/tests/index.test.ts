import { describe, expect, it } from 'vitest'
import { app } from '..'
import request from 'supertest'
describe('Testing the / route',()=>{
    it('/ end point',async()=>{
        const res=await request(app).get('/');
        expect(res.body.msg).toBe("Welcome welcome")
    })
})