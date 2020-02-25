--drop table if exists inqwell.geo_country;
create table inqwell.geo_country (
	country_name varchar(100),
	country_iso_2 char(2),
	country_iso_3 char(3) ,
	country_numeric smallint,
	constraint pk_geo_country primary key  (country_iso_2)
);
insert into inqwell.geo_country values
('Afghanistan','AF','AFG',4)
,('Aland Islands','AX','ALA',248)
,('Albania','AL','ALB',8)
,('Algeria','DZ','DZA',12)
,('American Samoa','AS','ASM',16)
,('Andorra','AD','AND',20)
,('Angola','AO','AGO',24)
,('Anguilla','AI','AIA',660)
,('Antarctica','AQ','ATA',10)
,('Antigua and Barbuda','AG','ATG',28)
,('Argentina','AR','ARG',32)
,('Armenia','AM','ARM',51)
,('Aruba','AW','ABW',533)
,('Australia','AU','AUS',36)
,('Austria','AT','AUT',40)
,('Azerbaijan','AZ','AZE',31)
,('Bahamas','BS','BHS',44)
,('Bahrain','BH','BHR',48)
,('Bangladesh','BD','BGD',50)
,('Barbados','BB','BRB',52)
,('Belarus','BY','BLR',112)
,('Belgium','BE','BEL',56)
,('Belize','BZ','BLZ',84)
,('Benin','BJ','BEN',204)
,('Bermuda','BM','BMU',60)
,('Bhutan','BT','BTN',64)
,('Bolivia','BO','BOL',68)
,('Bosnia and Herzegovina','BA','BIH',70)
,('Botswana','BW','BWA',72)
,('Bouvet Island','BV','BVT',74)
,('Brazil','BR','BRA',76)
,('British Virgin Islands','VG','VGB',92)
,('British Indian Ocean Territory','IO','IOT',86)
,('Brunei Darussalam','BN','BRN',96)
,('Bulgaria','BG','BGR',100)
,('Burkina Faso','BF','BFA',854)
,('Burundi','BI','BDI',108)
,('Cambodia','KH','KHM',116)
,('Cameroon','CM','CMR',120)
,('Canada','CA','CAN',124)
,('Cape Verde','CV','CPV',132)
,('Cayman Islands','KY','CYM',136)
,('Central African Republic','CF','CAF',140)
,('Chad','TD','TCD',148)
,('Chile','CL','CHL',152)
,('China','CN','CHN',156)
,('Hong Kong, SAR China','HK','HKG',344)
,('Macao, SAR China','MO','MAC',446)
,('Christmas Island','CX','CXR',162)
,('Cocos (Keeling) Islands','CC','CCK',166)
,('Colombia','CO','COL',170)
,('Comoros','KM','COM',174)
,('Congo (Brazzaville)','CG','COG',178)
,('Congo, (Kinshasa)','CD','COD',180)
,('Cook Islands','CK','COK',184)
,('Costa Rica','CR','CRI',188)
,('Côte d''Ivoire','CI','CIV',384)
,('Croatia','HR','HRV',191)
,('Cuba','CU','CUB',192)
,('Cyprus','CY','CYP',196)
,('Czech Republic','CZ','CZE',203)
,('Denmark','DK','DNK',208)
,('Djibouti','DJ','DJI',262)
,('Dominica','DM','DMA',212)
,('Dominican Republic','DO','DOM',214)
,('Ecuador','EC','ECU',218)
,('Egypt','EG','EGY',818)
,('El Salvador','SV','SLV',222)
,('Equatorial Guinea','GQ','GNQ',226)
,('Eritrea','ER','ERI',232)
,('Estonia','EE','EST',233)
,('Ethiopia','ET','ETH',231)
,('Falkland Islands (Malvinas)','FK','FLK',238)
,('Faroe Islands','FO','FRO',234)
,('Fiji','FJ','FJI',242)
,('Finland','FI','FIN',246)
,('France','FR','FRA',250)
,('French Guiana','GF','GUF',254)
,('French Polynesia','PF','PYF',258)
,('French Southern Territories','TF','ATF',260)
,('Gabon','GA','GAB',266)
,('Gambia','GM','GMB',270)
,('Georgia','GE','GEO',268)
,('Germany','DE','DEU',276)
,('Ghana','GH','GHA',288)
,('Gibraltar','GI','GIB',292)
,('Greece','GR','GRC',300)
,('Greenland','GL','GRL',304)
,('Grenada','GD','GRD',308)
,('Guadeloupe','GP','GLP',312)
,('Guam','GU','GUM',316)
,('Guatemala','GT','GTM',320)
,('Guernsey','GG','GGY',831)
,('Guinea','GN','GIN',324)
,('Guinea-Bissau','GW','GNB',624)
,('Guyana','GY','GUY',328)
,('Haiti','HT','HTI',332)
,('Heard and Mcdonald Islands','HM','HMD',334)
,('Holy See (Vatican City State)','VA','VAT',336)
,('Honduras','HN','HND',340)
,('Hungary','HU','HUN',348)
,('Iceland','IS','ISL',352)
,('India','IN','IND',356)
,('Indonesia','ID','IDN',360)
,('Iran, Islamic Republic of','IR','IRN',364)
,('Iraq','IQ','IRQ',368)
,('Ireland','IE','IRL',372)
,('Isle of Man','IM','IMN',833)
,('Israel','IL','ISR',376)
,('Italy','IT','ITA',380)
,('Jamaica','JM','JAM',388)
,('Japan','JP','JPN',392)
,('Jersey','JE','JEY',832)
,('Jordan','JO','JOR',400)
,('Kazakhstan','KZ','KAZ',398)
,('Kenya','KE','KEN',404)
,('Kiribati','KI','KIR',296)
,('Korea (North)','KP','PRK',408)
,('Korea (South)','KR','KOR',410)
,('Kuwait','KW','KWT',414)
,('Kyrgyzstan','KG','KGZ',417)
,('Lao PDR','LA','LAO',418)
,('Latvia','LV','LVA',428)
,('Lebanon','LB','LBN',422)
,('Lesotho','LS','LSO',426)
,('Liberia','LR','LBR',430)
,('Libya','LY','LBY',434)
,('Liechtenstein','LI','LIE',438)
,('Lithuania','LT','LTU',440)
,('Luxembourg','LU','LUX',442)
,('Macedonia, Republic of','MK','MKD',807)
,('Madagascar','MG','MDG',450)
,('Malawi','MW','MWI',454)
,('Malaysia','MY','MYS',458)
,('Maldives','MV','MDV',462)
,('Mali','ML','MLI',466)
,('Malta','MT','MLT',470)
,('Marshall Islands','MH','MHL',584)
,('Martinique','MQ','MTQ',474)
,('Mauritania','MR','MRT',478)
,('Mauritius','MU','MUS',480)
,('Mayotte','YT','MYT',175)
,('Mexico','MX','MEX',484)
,('Micronesia, Federated States of','FM','FSM',583)
,('Moldova','MD','MDA',498)
,('Monaco','MC','MCO',492)
,('Mongolia','MN','MNG',496)
,('Montenegro','ME','MNE',499)
,('Montserrat','MS','MSR',500)
,('Morocco','MA','MAR',504)
,('Mozambique','MZ','MOZ',508)
,('Myanmar','MM','MMR',104)
,('Namibia','NA','NAM',516)
,('Nauru','NR','NRU',520)
,('Nepal','NP','NPL',524)
,('Netherlands','NL','NLD',528)
,('Netherlands Antilles','AN','ANT',530)
,('New Caledonia','NC','NCL',540)
,('New Zealand','NZ','NZL',554)
,('Nicaragua','NI','NIC',558)
,('Niger','NE','NER',562)
,('Nigeria','NG','NGA',566)
,('Niue','NU','NIU',570)
,('Norfolk Island','NF','NFK',574)
,('Northern Mariana Islands','MP','MNP',580)
,('Norway','NO','NOR',578)
,('Oman','OM','OMN',512)
,('Pakistan','PK','PAK',586)
,('Palau','PW','PLW',585)
,('Palestinian Territory','PS','PSE',275)
,('Panama','PA','PAN',591)
,('Papua New Guinea','PG','PNG',598)
,('Paraguay','PY','PRY',600)
,('Peru','PE','PER',604)
,('Philippines','PH','PHL',608)
,('Pitcairn','PN','PCN',612)
,('Poland','PL','POL',616)
,('Portugal','PT','PRT',620)
,('Puerto Rico','PR','PRI',630)
,('Qatar','QA','QAT',634)
,('Réunion','RE','REU',638)
,('Romania','RO','ROU',642)
,('Russian Federation','RU','RUS',643)
,('Rwanda','RW','RWA',646)
,('Saint-Barthélemy','BL','BLM',652)
,('Saint Helena','SH','SHN',654)
,('Saint Kitts and Nevis','KN','KNA',659)
,('Saint Lucia','LC','LCA',662)
,('Saint-Martin (French part)','MF','MAF',663)
,('Saint Pierre and Miquelon','PM','SPM',666)
,('Saint Vincent and Grenadines','VC','VCT',670)
,('Samoa','WS','WSM',882)
,('San Marino','SM','SMR',674)
,('Sao Tome and Principe','ST','STP',678)
,('Saudi Arabia','SA','SAU',682)
,('Senegal','SN','SEN',686)
,('Serbia','RS','SRB',688)
,('Seychelles','SC','SYC',690)
,('Sierra Leone','SL','SLE',694)
,('Singapore','SG','SGP',702)
,('Slovakia','SK','SVK',703)
,('Slovenia','SI','SVN',705)
,('Solomon Islands','SB','SLB',90)
,('Somalia','SO','SOM',706)
,('South Africa','ZA','ZAF',710)
,('South Georgia and the South Sandwich Islands','GS','SGS',239)
,('South Sudan','SS','SSD',728)
,('Spain','ES','ESP',724)
,('Sri Lanka','LK','LKA',144)
,('Sudan','SD','SDN',736)
,('Suriname','SR','SUR',740)
,('Svalbard and Jan Mayen Islands','SJ','SJM',744)
,('Swaziland','SZ','SWZ',748)
,('Sweden','SE','SWE',752)
,('Switzerland','CH','CHE',756)
,('Syrian Arab Republic (Syria)','SY','SYR',760)
,('Taiwan, Republic of China','TW','TWN',158)
,('Tajikistan','TJ','TJK',762)
,('Tanzania, United Republic of','TZ','TZA',834)
,('Thailand','TH','THA',764)
,('Timor-Leste','TL','TLS',626)
,('Togo','TG','TGO',768)
,('Tokelau','TK','TKL',772)
,('Tonga','TO','TON',776)
,('Trinidad and Tobago','TT','TTO',780)
,('Tunisia','TN','TUN',788)
,('Turkey','TR','TUR',792)
,('Turkmenistan','TM','TKM',795)
,('Turks and Caicos Islands','TC','TCA',796)
,('Tuvalu','TV','TUV',798)
,('Uganda','UG','UGA',800)
,('Ukraine','UA','UKR',804)
,('United Arab Emirates','AE','ARE',784)
,('United Kingdom','GB','GBR',826)
,('United States of America','US','USA',840)
,('US Minor Outlying Islands','UM','UMI',581)
,('Uruguay','UY','URY',858)
,('Uzbekistan','UZ','UZB',860)
,('Vanuatu','VU','VUT',548)
,('Venezuela (Bolivarian Republic)','VE','VEN',862)
,('Viet Nam','VN','VNM',704)
,('Virgin Islands, US','VI','VIR',850)
,('Wallis and Futuna Islands','WF','WLF',876)
,('Western Sahara','EH','ESH',732)
,('Yemen','YE','YEM',887)
,('Zambia','ZM','ZMB',894)
,('Zimbabwe','ZW','ZWE',716)
;

--drop table if exists inqwell.geo_country_continent;
create table inqwell.geo_country_continent (
	country_iso_2 char(2) ,
	continent_iso_3 varchar(4),
	continent_name varchar(100),
	constraint pk_geo_country_continent primary key (country_iso_2)
);
alter table inqwell.geo_country_continent add constraint fk_country foreign key (country_iso_2) references inqwell.geo_country;
insert into inqwell.geo_country_continent values
('AD','EUR','Europe')
,('AE','MEA','Middle East & Africa')
,('AF','MEA','Middle East & Africa')
,('AG','LA','Latin America')
,('AI','LA','Latin America')
,('AL','EUR','Europe')
,('AM','MEA','Middle East & Africa')
,('AN','LA','Latin America')
,('AO','MEA','Middle East & Africa')
,('AR','LA','Latin America')
,('AS','OTH','Other')
,('AT','EUR','Europe')
,('AU','AUS','Aust/NZ')
,('AW','LA','Latin America')
,('AX','EUR','Europe')
,('AZ','ASIA','Europe')
,('BA','EUR','Europe')
,('BB','LA','Latin America')
,('BD','ASIA','Asia')
,('BE','EUR','Europe')
,('BF','MEA','Middle East & Africa')
,('BG','EUR','Europe')
,('BH','MEA','Middle East & Africa')
,('BI','MEA','Middle East & Africa')
,('BJ','MEA','Middle East & Africa')
,('BL','LA','Latin America')
,('BM','LA','Latin America')
,('BN','ASIA','Asia')
,('BO','LA','Latin America')
,('BR','LA','Latin America')
,('BS','LA','Latin America')
,('BT','ASIA','Asia')
,('BV','OTH','Other')
,('BW','MEA','Middle East & Africa')
,('BY','EUR','Europe')
,('BZ','LA','Latin America')
,('CA','USC','Canada')
,('CF','MEA','Middle East & Africa')
,('CG','MEA','Middle East & Africa')
,('CH','EUR','Europe')
,('CI','MEA','Middle East & Africa')
,('CL','LA','Latin America')
,('CM','MEA','Middle East & Africa')
,('CN','CH','Asia')
,('CO','LA','Latin America')
,('CR','LA','Latin America')
,('CU','LA','Latin America')
,('CV','MEA','Middle East & Africa')
,('CY','EUR','Europe')
,('CZ','EUR','Europe')
,('DE','EUR','Europe')
,('DH','MEA','Middle East & Africa')
,('DJ','MEA','Middle East & Africa')
,('DK','EUR','Europe')
,('DM','LA','Latin America')
,('DO','LA','Latin America')
,('DZ','MEA','Middle East & Africa')
,('EC','LA','Latin America')
,('EE','EUR','Europe')
,('EG','MEA','Middle East & Africa')
,('EH','MEA','Middle East & Africa')
,('ER','MEA','Middle East & Africa')
,('ES','EUR','Europe')
,('ET','MEA','Middle East & Africa')
,('FI','EUR','Europe')
,('FJ','OTH','Asia')
,('FK','LA','Latin America')
,('FM','OTH','Other')
,('FO','EUR','Europe')
,('FR','EUR','Europe')
,('GA','MEA','Middle East & Africa')
,('GB','UKI','United Kingdom & Ireland')
,('GD','LA','Latin America')
,('GE','ASIA','Europe')
,('GI','EUR','Europe')
,('GL','OTH','Other')
,('GM','MEA','Middle East & Africa')
,('GN','MEA','Middle East & Africa')
,('GP','LA','Latin America')
,('GR','EUR','Europe')
,('GS','OTH','Other')
,('GT','LA','Latin America')
,('GU','OTH','Asia')
,('GW','MEA','Middle East & Africa')
,('GY','LA','Latin America')
,('HK','HKU','Asia')
,('HM','OTH','Other')
,('HN','LA','Latin America')
,('HR','EUR','Europe')
,('HT','LA','Latin America')
,('HU','EUR','Europe')
,('ID','ASIA','Asia')
,('IE','UKI','United Kingdom & Ireland')
,('IL','MEA','Middle East & Africa')
,('IM','EUR','Europe')
,('IN','ASIA','Asia')
,('IO','ASIA','Asia')
,('IQ','MEA','Middle East & Africa')
,('IR','MEA','Middle East & Africa')
,('IS','EUR','Europe')
,('IT','EUR','Europe')
,('JE','EUR','Europe')
,('JM','LA','Latin America')
,('JO','MEA','Middle East & Africa')
,('JP','JPN','Asia')
,('KE','MEA','Middle East & Africa')
,('KG','MEA','Middle East & Africa')
,('KH','ASIA','Asia')
,('KI','OTH','Other')
,('KM','MEA','Middle East & Africa')
,('KN','LA','Latin America')
,('KP','ASIA','Asia')
,('KR','JPN','Asia')
,('KW','MEA','Middle East & Africa')
,('KY','LA','Latin America')
,('KZ','ASIA','Europe')
,('LA','ASIA','Asia')
,('LB','MEA','Middle East & Africa')
,('LC','LA','Latin America')
,('LI','EUR','Europe')
,('LK','ASIA','Asia')
,('LR','MEA','Middle East & Africa')
,('LS','MEA','Middle East & Africa')
,('LT','EUR','Europe')
,('LU','EUR','Europe')
,('LV','EUR','Europe')
,('LY','MEA','Middle East & Africa')
,('MA','MEA','Middle East & Africa')
,('MC','EUR','Europe')
,('MD','EUR','Europe')
,('ME','EUR','Europe')
,('MF','LA','Latin America')
,('MG','MEA','Middle East & Africa')
,('MH','OTH','Other')
,('MK','EUR','Europe')
,('ML','MEA','Middle East & Africa')
,('MM','ASIA','Asia')
,('MN','ASIA','Asia')
,('MO','ASIA','Asia')
,('MP','OTH','Other')
,('MR','MEA','Middle East & Africa')
,('MS','LA','Latin America')
,('MT','EUR','Europe')
,('MU','MEA','Middle East & Africa')
,('MV','ASIA','Asia')
,('MW','MEA','Middle East & Africa')
,('MX','LA','Latin America')
,('MY','ASIA','Asia')
,('MZ','MEA','Middle East & Africa')
,('NA','MEA','Middle East & Africa')
,('NC','OTH','Europe')
,('NE','MEA','Middle East & Africa')
,('NF','OTH','Other')
,('NG','MEA','Middle East & Africa')
,('NI','LA','Latin America')
,('NL','EUR','Europe')
,('NO','EUR','Europe')
,('NP','ASIA','Asia')
,('NR','OTH','Other')
,('NU','OTH','Other')
,('NZ','AUS','Aust/NZ')
,('OM','MEA','Middle East & Africa')
,('PA','LA','Latin America')
,('PE','LA','Latin America')
,('PF','OTH','Asia')
,('PG','OTH','Asia')
,('PH','ASIA','Asia')
,('PK','MEA','Middle East & Africa')
,('PL','EUR','Europe')
,('PM','OTH','Other')
,('PN','OTH','Other')
,('PR','LA','US')
,('PS','MEA','Middle East & Africa')
,('PT','EUR','Europe')
,('PW','OTH','Other')
,('PY','LA','Latin America')
,('QA','MEA','Middle East & Africa')
,('RE','OTH','Other')
,('RO','EUR','Europe')
,('RS','EUR','Europe')
,('RU','EUR','Europe')
,('RW','MEA','Middle East & Africa')
,('SA','MEA','Middle East & Africa')
,('SB','OTH','Other')
,('SC','MEA','Middle East & Africa')
,('SD','MEA','Middle East & Africa')
,('SE','EUR','Europe')
,('SG','ASIA','Asia')
,('SH','OTH','Other')
,('SI','EUR','Europe')
,('SJ','EUR','Europe')
,('SK','EUR','Europe')
,('SL','MEA','Middle East & Africa')
,('SM','EUR','Europe')
,('SN','MEA','Middle East & Africa')
,('SO','MEA','Middle East & Africa')
,('SR','LA','Latin America')
,('ST','OTH','Other')
,('SV','LA','Latin America')
,('SY','MEA','Middle East & Africa')
,('SZ','MEA','Middle East & Africa')
,('TC','LA','Latin America')
,('TD','MEA','Middle East & Africa')
,('TF','OTH','Other')
,('TG','MEA','Middle East & Africa')
,('TH','ASIA','Asia')
,('TJ','MEA','Middle East & Africa')
,('TK','OTH','Other')
,('TL','ASIA','Asia')
,('TM','MEA','Middle East & Africa')
,('TN','MEA','Middle East & Africa')
,('TO','OTH','Other')
,('TR','MEA','Middle East & Africa')
,('TT','LA','Latin America')
,('TV','OTH','Other')
,('TW','JPN','Asia')
,('TZ','MEA','Middle East & Africa')
,('UA','EUR','Europe')
,('UG','MEA','Middle East & Africa')
,('UM','OTH','Other')
,('US','USC','US')
,('UY','LA','Latin America')
,('UZ','ASIA','Asia')
,('VA','EUR','Europe')
,('VC','LA','Latin America')
,('VE','LA','Latin America')
,('VG','LA','Latin America')
,('VI','LA','Latin America')
,('VN','ASIA','Asia')
,('VU','OTH','Other')
,('WF','OTH','Other')
,('WS','OTH','Other')
,('YE','MEA','Middle East & Africa')
,('YT','MEA','Middle East & Africa')
,('ZA','MEA','Middle East & Africa')
,('ZM','MEA','Middle East & Africa')
,('ZW','MEA','Middle East & Africa')
;

--drop table if exists inqwell.geo_region_country;
create table inqwell.geo_region_country (
	country_iso_2 char(2) ,
	region_iso_3 varchar(3),
	region_name varchar(100),
	constraint pk_geo_country primary key (country_iso_2,region_iso_3)
) distributed by (country_iso_2);
alter table inqwell.geo_region_country add constraint fk_region_country foreign key (country_iso_2) references inqwell.geo_country;
insert into inqwell.geo_region_country values
('AS','AS','AMERICAN SAMOA')
,('AU','ACT','Australian Capital Territory')
,('AU','NSW','New South Wales')
,('AU','NTA','Northern Territory')
,('AU','QLD','Queensland')
,('AU','SA','South Australia')
,('AU','TAS','Tasmania')
,('AU','VIC','Victoria')
,('AU','WAU','Western Australia')
,('CA','AB','ALBERTA')
,('CA','BC','BRITISH COLUMBIA')
,('CA','MB','MANITOBA')
,('CA','NT','N.W. TERRITORIES')
,('CA','NB','NEW BRUNSWICK')
,('CA','NL','NEWFOUNDLAND')
,('CA','NS','NOVA SCOTIA')
,('CA','NU','Nunavut')
,('CA','ON','ONTARIO')
,('CA','PE','PRINCE EDWARD IS.')
,('CA','QC','QUEBEC')
,('CA','SK','SASKATCHEWAN')
,('CA','YT','YUKON TERRITORY')
,('FM','FM','FED STATES OF MICRONESIA')
,('GU','GU','GUAM')
,('MH','MH','MARSHALL ISLANDS')
,('MP','MP','N. MARIANA ISLANDS')
,('PR','PR','PUERTO RICO')
,('PW','PW','PALAU')
,('US','AA','AA GOVERNMENT CODE')
,('US','AE','AE GOVERNMENT CODE')
,('US','AL','ALABAMA')
,('US','AK','ALASKA')
,('US','AP','AP GOVERNMENT CODE')
,('US','AZ','ARIZONA')
,('US','AR','ARKANSAS')
,('US','CA','CALIFORNIA')
,('US','CO','COLORADO')
,('US','CT','CONNECTICUT')
,('US','DE','DELAWARE')
,('US','DC','DISTRICT OF COLUMBIA')
,('US','FL','FLORIDA')
,('US','GA','GEORGIA')
,('US','HI','HAWAII')
,('US','ID','IDAHO')
,('US','IL','ILLINOIS')
,('US','IN','INDIANA')
,('US','IA','IOWA')
,('US','KS','KANSAS')
,('US','KY','KENTUCKY')
,('US','LA','LOUISIANA')
,('US','ME','MAINE')
,('US','MD','MARYLAND')
,('US','MA','MASSACHUSETTS')
,('US','MI','MICHIGAN')
,('US','MN','MINNESOTA')
,('US','MS','MISSISSIPPI')
,('US','MO','MISSOURI')
,('US','MT','MONTANA')
,('US','NE','NEBRASKA')
,('US','NV','NEVADA')
,('US','NH','NEW HAMPSHIRE')
,('US','NJ','NEW JERSEY')
,('US','NM','NEW MEXICO')
,('US','NY','NEW YORK')
,('US','NC','NORTH CAROLINA')
,('US','ND','NORTH DAKOTA')
,('US','OH','OHIO')
,('US','OK','OKLAHOMA')
,('US','OR','OREGON')
,('US','PA','PENNSYLVANIA')
,('US','RI','RHODE ISLAND')
,('US','SC','SOUTH CAROLINA')
,('US','SD','SOUTH DAKOTA')
,('US','TN','TENNESSEE')
,('US','TX','TEXAS')
,('US','UT','UTAH')
,('US','VT','VERMONT')
,('US','VA','VIRGINIA')
,('US','WA','WASHINGTON')
,('US','WV','WEST VIRGINIA')
,('US','WI','WISCONSIN')
,('US','WY','WYOMING')
,('VI','VI','VIRGIN ISLANDS');
analyze inqwell.geo_region_country;

alter table inqwell.dim_account add constraint fk_region foreign key (geo_country_id,geo_region_id) references inqwell.geo_region_country(country_iso_2, region_iso_3);
alter table inqwell.dim_account add constraint fk_account_country foreign key (geo_country_id) references inqwell.geo_country (country_iso_2);

CREATE TABLE inqwell.dim_format (
    format_id integer NOT NULL,
    format_name character varying(400) NOT NULL,
    journal_flag boolean NOT NULL,
    book_flag boolean NOT NULL,
    multimedia_flag boolean NOT NULL,
    database_flag boolean NOT NULL,
    debouncing_period smallint,
    cst_format_code character varying(30),
    item_flag boolean DEFAULT true
);

drop table if exists inqwell.dim_format;
INSERT INTO inqwell.dim_format (format_id,format_name,journal_flag,book_flag,multimedia_flag,database_flag,debouncing_period,item_flag) VALUES 
(0,'Other',false,false,false,false,10,false)
,(1,'Abstract',false,false,false,false,10,true)
,(2,'Citation',false,false,false,false,10,true)
,(3,'Full-text HTML',true,true,false,true,10,true)
,(4,'Full-text PDF',true,true,false,true,30,true)
,(5,'Full-text HTML Mobile',false,true,false,false,10,true)
,(6,'Full-text PDF Mobile',false,true,true,false,10,true)
,(7,'Multimedia',false,false,true,false,10,true)
,(8,'References',false,false,false,true,10,true)
,(9,'Table of Contents',false,false,false,false,10,true)
,(10,'Image',false,false,false,true,10,true)
,(11,'Supplemental',false,false,false,false,10,false)
,(12,'Video',false,false,false,true,10,false);

alter table inqwell.dim_format add constraint pk_format primary key (format_id);

--Collect statistics on these tables