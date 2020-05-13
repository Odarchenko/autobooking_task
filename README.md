Нужно реализовать:
  1. Хранение в базе пользователей и уведомлений
  2. Уведомление должно хранить шаблон отправляемого текста с шорткодами (email, phone, first name, last name)
  3. Уведомление должно иметь уникальный текстовый идентификатор для поиска и читаемости кода (например confirmation_message)
  4. Уведомление можно отправить пользователю через консоль, при отправке на экране должно отобразиться содержание уведомления и email или sms пользователя
### Setup database
input your secrets for example secrets.example.yml
```sh 
$ bundle install
$ rake db:create
$ rake db:migrate
```
### Create User and Notification and send notifications
```sh 
$ rails c
$ User.create(first_name: "first name", last_name: "Last name", phone_number: "+380", email: "")
$ Notification.create(body_text: 'Hello %first_name% %last_name% ,you have notification', type_of_notification: 'base_notification')
$ SendNotification.new(User.last.id, Notification.last.type_of_notification).send_notification
```
or change your data in db/seeds.rb and run rake db:seed
### Run tests
```sh 
$ rspec spec
```
