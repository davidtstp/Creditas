Dado("que o usuário executa um post na api jsonplaceholder") do
  @body = {
    "data":
      { "title":"Teste Creditas",
        "body":"Automação de testes para API",
        "userId": 2
      }
  }.to_json

  @response = api.post(@body)
end

Então("a resposta deve ser {int}") do |int|
  expect(@response.code).to eq 201
end

Então("o body deve conter as informações enviadas no post") do
  data = JSON.parse(@response.body)
  body = JSON.parse(@body)

  expect(data['data']['title']).to eq(body['data']['title'])
  expect(data['data']['body']).to eq(body['data']['body'])
  expect(data['data']['userId']).to eq(body['data']['userId'])
  
end
