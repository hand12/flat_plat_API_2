# Models

# User
## association
- has_many: plans
## columns(type: mysql)
- uid: int
- provider: string
- name: string
- age: int
- sex: int
- profile: text
- avatar: string


# Plan
## association
- belongs_to: user
- has_many: requests
- has_one: location
## columns(type: mysql)
- start_date: date
- finish_date: date
- description: text
- user_id: foreign_key


# Location
## association
- belongs_to: plan
## columns(type: mysql)
- name: string
- latitude: int
- longitude: int
- plan_id: foreign_key


# Request
## association
- belongs_to: plan
## columns(type: mysql)
- sender_user: string
- status: int
- plan_id: foreign_key
- plan_user: foreign_key


