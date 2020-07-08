create table users
(
    primary key(user_id) int auto_increment not null,
    user_name varchar(40) not null,
    user_pass varchar(50) not null
);

create table farmers
(
    primary key(farmer_id) int auto_increment not null,
    firstname varchar(50) not null,
    lastname varchar(50) not null,
    gender varchar(5) not null,
    foreign key(farm) references farms(farm_id) on update cascade on delete restrict,
    contact_num varchar(15) not null,
    parish varchar(30) not null,
    district varchar(30) not null,
    created date not null
)

create table farms
(
    primary key(farm_id) int auto_increment not null,
    farm varchar(30) not null
    farmer varchar(30) not null,
    soil_type varchar(30) not null,
    subdivision varchar(30) not null,
    parish varchar(30) not null,
    district varchar(30) not null,
    created date not null
    foreign key(farmer_id) references farmers(farmer_id) on update cascade on delete restrict


)
 
create table crop_yields
(
    primary key(cy_id) int auto_increment not null,
    crop_name varchar(30) not null,
    cost_per_pound int not null,
    yield_per_s_meter int not null,
    revenue_per_s_meter int not null
    
);
/*Pre Existing*/
create table crop_details
(
    primary key(cd_id) int auto_increment not null,
    crop_name varchar(30) not null,
    crop_type varchar(30) not null,
    cost int not null
);
create table location_details
(
    primary key(loc_id) int auto_increment not null,
    subdivision varchar(30) not null,
    parish varchar(30) not null,
    soil_type varchar(30) not null
);