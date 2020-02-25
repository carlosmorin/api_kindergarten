ActiveRecord::Base.transaction do
  assistants = Assistant.create(
    [
      {name: 'Idona Rodgers', group: '2', address:'684-3809 Commodo St.', phone:'1-695-273-9436', created_at:'2014-03-10 07:44:36', updated_at:'2016-04-09 06:53:18'},
      {name: 'Basia Reeves', group: '2', address:'889-3375 Semper Av.', phone:'1-288-486-8146', created_at:'2016-03-08 09:43:53', updated_at:'2016-11-14 06:41:58'},
      {name: 'Charlotte Skinner', group: '3', address:'Ap #711-5535 Pellentesque St.', phone:'1-619-558-3983', created_at:'2016-05-23 12:44:29', updated_at:'2016-04-08 07:34:19'},
      {name: 'Lysandra Solis', group: '4', address:'P.O. Box 330, 663 Imperdiet, Av.', phone:'1-545-702-7245', created_at:'2016-01-21 15:32:11', updated_at:'2016-11-26 11:58:52'},
      {name: 'Samantha Porter', group: '5', address:'325-1746 Vulputate Rd.', phone:'1-299-762-7562', created_at:'2017-03-11 11:13:58', updated_at:'2016-10-11 22:03:39'},
      {name: 'Iliana Dillon', group: '4', address:'3044 Maecenas St.', phone:'1-267-433-8360', created_at:'2018-03-03 09:53:59', updated_at:'2017-01-17 07:43:35'},
      {name: 'Aphrodite Ballard', group: '3', address:'525-3906 Aliquam Av.', phone:'1-185-833-0997', created_at:'2014-07-09 21:18:31', updated_at:'2017-01-19 13:51:37'},
      {name: 'Francesca Baxter', group: '1', address:'331-3950 Cum Ave', phone:'1-375-506-2188', created_at:'2016-01-25 00:08:16', updated_at:'2016-10-25 23:45:04'},
      {name: 'Ria Robles', group: '3', address:'7081 Velit Rd.', phone:'1-553-822-3077', created_at:'2015-01-20 09:36:20', updated_at:'2016-05-10 22:46:56'},
      {name: 'Kay Brewer', group: '1', address:'P.O. Box 406, 1165 Fermentum Ave', phone:'1-120-416-8056', created_at:'2017-10-27 14:41:37', updated_at:'2017-03-19 13:32:20'}
    ]
  )
end