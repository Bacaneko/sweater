DELETE FROM user_role;
DELETE FROM usr;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO usr (username, password, active) VALUES
  ('User', '123', 'true'),
  ('Admin', '321', 'true');

INSERT INTO user_role (role, user_id) VALUES
  ('USER', 100000),
  ('ADMIN', 100001),
  ('USER', 100001);
