drop database if exists galerija;
create database galerija;
use galerija;

-- c:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Polaznik\Documents\galerija
create table galerija (
    sifra int not null primary key auto_increment,
    naziv varchar (50),
    nadređena varchar (50),
    autor int
);

create table autor (
    sifra int not null primary key auto_increment,
    ime varchar (50),
    prezime varchar (50)
);

create table slika (
    sifra int not null primary key auto_increment,
    galerija int,
    putanja varchar (50) not null
);

create table slika_oznaka (
    slika int,
    oznaka int
);

create table oznaka (
    sifra int not null primary key auto_increment,
    naziv varchar (50)
);

alter table galerija add foreign key (autor) references autor(sifra);
alter table slika add foreign key (galerija) references galerija(sifra);
alter table  slika_oznaka add foreign key (slika) references slika(sifra);
alter table slika_oznaka add foreign key (oznaka) references oznaka(sifra);

insert into galerija (sifra,naziv,nadređena,autor) values (null,'Duga','Ivana Mikić',null),(null,'Dragan','Ostojić',null),(null,'Ivana','Markić',null);
insert into autor (sifra,ime,prezime) values (null,'Marko','Cota'),(null,'Goran','Viškić'),(null,'Marko','Kovać');
insert into slika (sifra,galerija,putanja) values (null,null,'');











