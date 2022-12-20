create table if not exists artists(
			id SERIAL primary key,
			name VARCHAR (60)  not null,
			genre VARCHAR (60) references genre(name)
);

create table if not exists album(
			id SERIAL primary key ,
			artists_id integer not null references artists(id),
			name VARCHAR (60)  not null,
			year VARCHAR (10)
);	


create table if not exists genre (
			id SERIAL primary key,
			artists_id integer not null references artists(id),
			name VARCHAR (60) not NULL
);


create table if not exists track(
			id SERIAL primary key,
			album_id integer not null references album(id),
			name VARCHAR (60) not null,
			duration VARCHAR (10)
);


create table if not exists collection (
			id SERIAL primary key,
			artists_id integer not null references  track(id),
			name VARCHAR (60) not null,
			year VARCHAR (10)
			
);	
