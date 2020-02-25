ActiveRecord::Base.transaction do
  activities = Activity.create(
    [
      {name: 'Actividad de grupo', description: 'A aliquet scelerisque per adipiscing proin id a condimentum scelerisque parturient a lobortis a eget condimentum venenatis parturient adipiscing velit dictumst.',created_at: '2017-04-04 05:03:58', updated_at: '2017-04-04 05:03:58'},
      {name: 'Tomar alimentos', description: 'Dis inceptos euismod pharetra nibh pulvinar ad non platea tristique imperdiet parturient vestibulum a nascetur lorem sem.Adipiscing id proin velit.',created_at: '2017-04-04 05:04:08', updated_at: '2017-04-04 05:04:08'},
      {name: 'Ejercicios de destreza manual', description: 'A ad hendrerit phasellus arcu sem consequat parturient inceptos parturient ac facilisi suscipit nec dictum non urna vestibulum posuere eget.',created_at: '2017-04-04 05:04:18', updated_at: '2017-04-04 05:04:18'},
      {name: 'Lectura', description: 'Mi scelerisque semper suspendisse praesent nullam leo habitant arcu fermentum condimentum in vestibulum nam ad ipsum convallis orci mi adipiscing a a.Justo vulputate neque parturient quam.',created_at: '2017-04-04 05:04:24', updated_at: '2017-04-04 05:04:24'},
      {name: 'Siesta', description: 'Tellus a volutpat condimentum nibh habitant a sapien porta parturient maecenas praesent dapibus ullamcorper dictumst eget vitae.',created_at: '2017-04-04 05:04:32', updated_at: '2017-04-04 05:04:32'},
      {name: 'Dinámica al aire libre', description: 'A aliquet scelerisque per adipiscing proin id a condimentum scelerisque parturient a lobortis a eget condimentum venenatis parturient adipiscing velit dictumst.',created_at: '2017-04-04 05:04:48', updated_at: '2017-04-04 05:04:48'},
      {name: 'Dibujar', description: 'Mi blandit mattis himenaeos consequat facilisis eu elit venenatis mattis rhoncus sagittis dapibus aliquet a a feugiat scelerisque lacinia cubilia orci.',created_at: '2017-04-04 05:05:12', updated_at: '2017-04-04 05:05:12'},
      {name: 'Juego', description: 'Lobortis a velit a suspendisse tristique elit metus parturient scelerisque a fermentum vestibulum inceptos cum sociosqu consectetur.',created_at: '2017-04-04 05:05:22', updated_at: '2017-04-04 05:05:22'}
    ]
  )
end