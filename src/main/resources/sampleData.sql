insert into global_role(name) values ('ADMIN');
insert into global_role(name) values ('USER');

insert into role(name) values ('B.OWNER');
insert into role(name) values ('B.COLLABORATOR');

insert into user_profile(firstname, lastname) values('Andrew', 'Waterfall');

# Password: password
insert into user(email, password, user_profile_id) values('admin@admin.com', '$2a$10$gGuR8iONHEnagJboVVUSyeDM6c5YtvGmxKd4sqvOQrguahKrQK/FK', 1);
insert into user(email, password) values('user@user.com', '$2a$10$gGuR8iONHEnagJboVVUSyeDM6c5YtvGmxKd4sqvOQrguahKrQK/FK');

insert into user_global_role(user_id, global_role_id) values(1, 1);
insert into user_global_role(user_id, global_role_id) values(2, 2);

insert into board(name, user_id) values ('Test board', 1);
insert into board_column(column_index, name, board_id) values (1, 'Board column', 1);
insert into board_row(content, row_index, name, board_column_id) values ('It is a content of the row', 1, 'Name', 1);

insert into board_collaborator(board_id, user_id) values (1, 2);


insert into secured_entity(name) values ('BOARD');
insert into secured_entity(name) values ('COLUMN');
insert into secured_entity(name) values ('ROW');
insert into secured_entity(name) values ('MESSAGE');

INSERT INTO permission(name) values ('READ');
INSERT INTO permission(name) values ('CREATE');
INSERT INTO permission(name) values ('UPDATE');
INSERT INTO permission(name) values ('DELETE');
INSERT INTO permission(name) values ('INVITE');

# ROLE: B.OWNER - BOARD - READ, CREATE, UPDATE, DELETE, INVITE
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 1, 1);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 2, 1);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 3, 1);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 4, 1);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 5, 1);

# ROLE: B.OWNER - COLUMN - READ, CREATE, UPDATE, DELETE
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 1, 2);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 2, 2);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 3, 2);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 4, 2);

# ROLE: B.OWNER - ROW - READ, CREATE, UPDATE, DELETE
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 1, 3);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 2, 3);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 3, 3);
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 4, 3);

# ROLE: B.OWNER - MESSAGE - READ, CREATE, UPDATE, DELETE
insert into role_permission(role_id, permission_id, secured_entity_id) values (1, 1, 4);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 2, 4);
insert into role_permission(role_id, permission_id, secured_entity_id) values (3, 3, 4);
insert into role_permission(role_id, permission_id, secured_entity_id) values (4, 4, 4);

####

# ROLE: B.COLLABORATOR - BOARD - READ, INVITE
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 1, 1);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 5, 1);

# ROLE: B.COLLABORATOR - COLUMN - READ, CREATE, UPDATE, DELETE
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 1, 2);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 2, 2);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 3, 2);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 4, 2);

# ROLE: B.COLLABORATOR - ROW - READ, CREATE, UPDATE, DELETE
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 1, 3);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 2, 3);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 3, 3);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 4, 3);

# ROLE: B.COLLABORATOR - MESSAGE - READ, CREATE, UPDATE, DELETE
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 1, 4);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 2, 4);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 3, 4);
insert into role_permission(role_id, permission_id, secured_entity_id) values (2, 4, 4);

###

insert into user_role(entity_id, user_id, role_id) values (1, 1, 1);
insert into user_role(entity_id, user_id, role_id) values (1, 2, 2);


