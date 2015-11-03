FactoryGirl.define do
  factory(:client) do
    name('Mike Jones')
    number('2813308004')
  end

  factory(:message) do
    to('3034445555')
    from('15005550006')
    body('Fruit')

  end
end
