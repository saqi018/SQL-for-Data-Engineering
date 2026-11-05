-- NOT NULL

CREATE TABLE users(
  user_id INT,
  user_name varchar(100) NOT NULL

  )

  INSERT INTO users(user_id, user_name)
   VALUES (1, 'ali'), (2, null )

   SELECT user_id, user_name
   from users