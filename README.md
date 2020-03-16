#Corredora

[link a Heroku] (https://mi-corredora.herokuapp.com/)

Proyecto de integración de contenidos en Desafío Latam G28 Full Stack

El proyecto es un sistema de calificaciones de corredoras de propiedad de Santiago para arrendamientos, web construído con Ruby on Rails 5.2.3 y base de datos Postgresql

El diagrama conceptual muestra las principales entidades con las que trabajará la aplicación:

![alt text][concept]

[concept]: /conceptual_diagram.png "Diagrama conceptual"

El tablero Trello con el backlog y las historias de usuario está disponible en el siguiente link:

[Tablero Trello] (https://trello.com/b/en3tTtWe/proyecto-final-g28)

El diseño de la base de datos contempla las siguientes tablas/modelos con las relaciones indicadas.

![alt text][logic]

[logic]: /logic_diagram.png "Diagrama lógico"

## Pasos para levantar el proyecto

-Clonar el repo
-rails db:create
-rails db:migrate
-rails db:seed
-rails s
-yarn install