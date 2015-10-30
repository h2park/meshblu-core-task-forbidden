Forbidden = require '../src/forbidden'

describe 'Forbidden', ->
  beforeEach ->
    @sut = new Forbidden

  describe '->do', ->
    describe 'when given a sawblade', ->
      beforeEach (done) ->
        request =
          metadata:
            responseId: 'sawblade (cut it out)'

        @sut.do request, (error, @response) => done error

      it 'should respond with a 403', ->
        expect(@response).to.deep.equal
          metadata:
            responseId: 'sawblade (cut it out)'
            code: 403
            status: 'Forbidden'

    describe 'when an unnatural disaster occurs', ->
      beforeEach (done) ->
        request =
          metadata:
            responseId: 'unnatural-disaster (at least youll make the paper)'

        @sut.do request, (error, @response) => done error

      it 'should respond with a 403', ->
        expect(@response).to.deep.equal
          metadata:
            responseId: 'unnatural-disaster (at least youll make the paper)'
            code: 403
            status: 'Forbidden'
