package com.sist.vo;

public class PersonalConsumptionVO {
	private int year;
	
	private String groceries_subtotal; // �ķ�ǰ,���ַ� ���� �Ұ�
	private String groceries_grain;	  // �
	private String groceries_grain_processed;	// �����ǰ
	private String groceries_bread;	// ���׶���
	private String groceries_meat;   // ����
	private String groceries_meat_processed;	// ��������ǰ
	private String groceries_aquatic_animal; // �ż����굿��
	private String groceries_salted_drying; // ���Ǽ��굿��
	private String groceries_acc_aquatic; // ��Ÿ���굿������
	private String groceries_milk_products; // ����ǰ �� ��
	private String groceries_fat_and_oils;	// ������
	private String groceries_fruit_goods; // ���Ϲװ��ϰ���ǰ
	private String groceries_vegetable_goods; // ä�ҹ�ä�Ұ���ǰ
	private String groceries_seaweeds_goods; // ��������������ǰ
	private String groceries_snack; // ����װ��ڷ�
	private String groceries_seasoning;	// ���̽�ǰ
	private String groceries_acc;	// ��Ÿ��ǰ
	private String groceries_coffee; // Ŀ�ǽ�ǰ
	private String groceries_juice; // �꽺�ױ�Ÿ����
	
	private String drink_subtotal; // �ַ�, ��� �Ұ�
	private String drink_alcohol; // �ַ�
	private String drink_smoke; // ���
	
	private String clothing_subtotal; // �Ƿ�, �Ź� �Ұ�
	private String clothing_fabric;	  // �����׿���
	private String clothing_underwear;	// ����
	private String clothing_acc;	// ��Ÿ�Ǻ�
	private String clothing_service;	// �Ǻ����ü���
	private String clothing_shoes;	// �Ź�
	private String clothing_shoes_service; // �Ź� ����	
	
	private String dwelling_subtotal; // �ְ�, ����, ���� �Ұ�
	private String dwelling_reality; // �����ְź�
	private String dwelling_housing; // ���������׼���
	private String dwelling_water_sewage; // ���ϼ�������⹰ó��
	private String dwelling_acc_service; // ��Ÿ�ְŰ��ü���
	private String dwelling_fuel_fee; // �����	
	
	private String household_subtotal;	// ������ǰ, ���缭�� �Ұ�
	private String household_furniture;	// ����������
	private String household_interior_design; // �ǳ����
	private String household_furniture_service; // ����,�������ļ���
	private String household_fiber; // �����뼶��
	private String household_equipment; // ��������
	private String household_service; // �������ü���
	private String household_household_goods; // �����ǰ
	private String household_tool; // ����������ױ�Ÿ
	private String household_consumables; // ����Ҹ�ǰ
	private String household_household_service; // ���缭��	
	
	private String hygiene_subtotal;	// ���� �Ұ�
	private String hygiene_drug; // �Ǿ�ǰ
	private String hygiene_consumables; // �Ƿ�� �Ҹ�ǰ
	private String hygiene_stores; // �����Ƿ��ǰ�ױⱸ
	private String hygiene_foreign_medical; // �ܷ��ǷἭ��
	private String hygiene_dentist; // ġ�� ����
	private String hygiene_acc; // ��Ÿ �Ƿ� ����
	private String hygiene_hospitalization; // �Կ�����	
	
	private String traffic_subtotal; // ���� �Ұ�
	private String traffic_purchase_car; // �ڵ�������
	private String traffic_acc_transportation; // ��Ÿ��۱ⱸ����
	private String traffic_management; // ��۱ⱸ�����׼���
	private String traffic_fuel; // ��۱ⱸ�����
	private String traffic_acc_private; // ��Ÿ���α��뼭��
	private String traffic_track; // ö�����
	private String traffic_land; // ������
	private String traffic_acc; // ��Ÿ���
	private String traffic_acc_service; // ��Ÿ������ü���	
	
	private String communication_subtotal;	// ��� �Ұ�
	private String communication_postal_service; // ������
	private String communication_equipment; // ��� ���
	private String communication_service; // ��ż���	
	
	private String enter_subtotal; // �Ұ�
	private String enter_sound_equipment; // ����������
	private String enter_equipment; // �����������
	private String enter_information; // ����ó����ġ
	private String enter_record; // ��ϸ�ü
	private String enter_infor_repair; // �������������������
	private String enter_culture_durable; // ������ȭ������
	private String enter_instrument; // �Ǳ�ⱸ
	private String enter_durable_repair; // ������ȭ�����������׼���
	private String enter_toy; // �峭������̿�ǰ
	private String enter_camping; // ķ�ι׿���ù�ǰ
	private String enter_flower; // ȭ�Ѱ��ÿ�ǰ
	private String enter_pet; // �ֿϵ������ù�ǰ
	private String enter_flower_pet_service; // ȭ�ѹ׾ֿϵ�������
	private String enter_exercise; // ��׿�������
	private String enter_culture; // ��ȭ����
	private String enter_lottery; // ����
	private String enter_book; // ����
	private String enter_acc; // ��Ÿ�μ⹰
	private String enter_stationery; // ����
	private String enter_travel; // ��ü�����	
	
	private String edu_subtotal; // ���� �Ұ�
	private String edu_formal_education; // ���Ա���
	private String edu_elementary; // �ʵ��
	private String edu_middle; // �ߵ��
	private String edu_high; // ����
	private String edu_college; // �п��׺�������
	private String edu_student_college; // �л��п�����
	private String edu_adult_college; // �����п�����
	private String edu_acc; // ��Ÿ����	
	
	private String food_subtotal; // ����,���� �Ұ�
	private String food_fee; // �Ļ��
	private String food_accommodations_fee; // ���ں�
	
	private String acc_subtotal; // ��Ÿ��ǰ, ���� �Ұ�
	private String acc_beauty_service; // �̹̿뼭��
	private String acc_beauty_equipment; // �̹̿���
	private String acc_hygiene; // �������̹̿��ǰ
	private String acc_watch; // �ð����ű�
	private String acc_acc; // ��Ÿ���ο�ǰ
	private String acc_welfare_facilities; // �����ü�
	private String acc_insurance; // ����
	private String acc_finance; // ��Ÿ����
	private String acc_service; // ��Ÿ����
	
	private String non_subtotal; // ��Һ����� �Ұ�
	private String non_tax; // �������
	private String non_non_tax; // ��������
	private String non_pension; // ����
	private String non_social_insurance; // ��ȸ����
	private String non_interest_cost; // ���ں��
	private String non_furniture; // ��������������
	private String non_nonprofit; // �񿵸���ü������
	
	
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year = year;
	}
	public String getGroceries_subtotal() {
		return groceries_subtotal;
	}
	public void setGroceries_subtotal(String groceries_subtotal) {
		this.groceries_subtotal = groceries_subtotal;
	}
	public String getGroceries_grain() {
		return groceries_grain;
	}
	public void setGroceries_grain(String groceries_grain) {
		this.groceries_grain = groceries_grain;
	}
	public String getGroceries_grain_processed() {
		return groceries_grain_processed;
	}
	public void setGroceries_grain_processed(String groceries_grain_processed) {
		this.groceries_grain_processed = groceries_grain_processed;
	}
	public String getGroceries_bread() {
		return groceries_bread;
	}
	public void setGroceries_bread(String groceries_bread) {
		this.groceries_bread = groceries_bread;
	}
	public String getGroceries_meat() {
		return groceries_meat;
	}
	public void setGroceries_meat(String groceries_meat) {
		this.groceries_meat = groceries_meat;
	}
	public String getGroceries_meat_processed() {
		return groceries_meat_processed;
	}
	public void setGroceries_meat_processed(String groceries_meat_processed) {
		this.groceries_meat_processed = groceries_meat_processed;
	}
	public String getGroceries_aquatic_animal() {
		return groceries_aquatic_animal;
	}
	public void setGroceries_aquatic_animal(String groceries_aquatic_animal) {
		this.groceries_aquatic_animal = groceries_aquatic_animal;
	}
	public String getGroceries_salted_drying() {
		return groceries_salted_drying;
	}
	public void setGroceries_salted_drying(String groceries_salted_drying) {
		this.groceries_salted_drying = groceries_salted_drying;
	}
	public String getGroceries_acc_aquatic() {
		return groceries_acc_aquatic;
	}
	public void setGroceries_acc_aquatic(String groceries_acc_aquatic) {
		this.groceries_acc_aquatic = groceries_acc_aquatic;
	}
	public String getGroceries_milk_products() {
		return groceries_milk_products;
	}
	public void setGroceries_milk_products(String groceries_milk_products) {
		this.groceries_milk_products = groceries_milk_products;
	}
	public String getGroceries_fat_and_oils() {
		return groceries_fat_and_oils;
	}
	public void setGroceries_fat_and_oils(String groceries_fat_and_oils) {
		this.groceries_fat_and_oils = groceries_fat_and_oils;
	}
	public String getGroceries_fruit_goods() {
		return groceries_fruit_goods;
	}
	public void setGroceries_fruit_goods(String groceries_fruit_goods) {
		this.groceries_fruit_goods = groceries_fruit_goods;
	}
	public String getGroceries_vegetable_goods() {
		return groceries_vegetable_goods;
	}
	public void setGroceries_vegetable_goods(String groceries_vegetable_goods) {
		this.groceries_vegetable_goods = groceries_vegetable_goods;
	}
	public String getGroceries_seaweeds_goods() {
		return groceries_seaweeds_goods;
	}
	public void setGroceries_seaweeds_goods(String groceries_seaweeds_goods) {
		this.groceries_seaweeds_goods = groceries_seaweeds_goods;
	}
	public String getGroceries_snack() {
		return groceries_snack;
	}
	public void setGroceries_snack(String groceries_snack) {
		this.groceries_snack = groceries_snack;
	}
	public String getGroceries_seasoning() {
		return groceries_seasoning;
	}
	public void setGroceries_seasoning(String groceries_seasoning) {
		this.groceries_seasoning = groceries_seasoning;
	}
	public String getGroceries_acc() {
		return groceries_acc;
	}
	public void setGroceries_acc(String groceries_acc) {
		this.groceries_acc = groceries_acc;
	}
	public String getGroceries_coffee() {
		return groceries_coffee;
	}
	public void setGroceries_coffee(String groceries_coffee) {
		this.groceries_coffee = groceries_coffee;
	}
	public String getGroceries_juice() {
		return groceries_juice;
	}
	public void setGroceries_juice(String groceries_juice) {
		this.groceries_juice = groceries_juice;
	}
	public String getDrink_subtotal() {
		return drink_subtotal;
	}
	public void setDrink_subtotal(String drink_subtotal) {
		this.drink_subtotal = drink_subtotal;
	}
	public String getDrink_alcohol() {
		return drink_alcohol;
	}
	public void setDrink_alcohol(String drink_alcohol) {
		this.drink_alcohol = drink_alcohol;
	}
	public String getDrink_smoke() {
		return drink_smoke;
	}
	public void setDrink_smoke(String drink_smoke) {
		this.drink_smoke = drink_smoke;
	}
	public String getClothing_subtotal() {
		return clothing_subtotal;
	}
	public void setClothing_subtotal(String clothing_subtotal) {
		this.clothing_subtotal = clothing_subtotal;
	}
	public String getClothing_fabric() {
		return clothing_fabric;
	}
	public void setClothing_fabric(String clothing_fabric) {
		this.clothing_fabric = clothing_fabric;
	}
	public String getClothing_underwear() {
		return clothing_underwear;
	}
	public void setClothing_underwear(String clothing_underwear) {
		this.clothing_underwear = clothing_underwear;
	}
	public String getClothing_acc() {
		return clothing_acc;
	}
	public void setClothing_acc(String clothing_acc) {
		this.clothing_acc = clothing_acc;
	}
	public String getClothing_service() {
		return clothing_service;
	}
	public void setClothing_service(String clothing_service) {
		this.clothing_service = clothing_service;
	}
	public String getClothing_shoes() {
		return clothing_shoes;
	}
	public void setClothing_shoes(String clothing_shoes) {
		this.clothing_shoes = clothing_shoes;
	}
	public String getClothing_shoes_service() {
		return clothing_shoes_service;
	}
	public void setClothing_shoes_service(String clothing_shoes_service) {
		this.clothing_shoes_service = clothing_shoes_service;
	}
	public String getDwelling_subtotal() {
		return dwelling_subtotal;
	}
	public void setDwelling_subtotal(String dwelling_subtotal) {
		this.dwelling_subtotal = dwelling_subtotal;
	}
	public String getDwelling_reality() {
		return dwelling_reality;
	}
	public void setDwelling_reality(String dwelling_reality) {
		this.dwelling_reality = dwelling_reality;
	}
	public String getDwelling_housing() {
		return dwelling_housing;
	}
	public void setDwelling_housing(String dwelling_housing) {
		this.dwelling_housing = dwelling_housing;
	}
	public String getDwelling_water_sewage() {
		return dwelling_water_sewage;
	}
	public void setDwelling_water_sewage(String dwelling_water_sewage) {
		this.dwelling_water_sewage = dwelling_water_sewage;
	}
	public String getDwelling_acc_service() {
		return dwelling_acc_service;
	}
	public void setDwelling_acc_service(String dwelling_acc_service) {
		this.dwelling_acc_service = dwelling_acc_service;
	}
	public String getDwelling_fuel_fee() {
		return dwelling_fuel_fee;
	}
	public void setDwelling_fuel_fee(String dwelling_fuel_fee) {
		this.dwelling_fuel_fee = dwelling_fuel_fee;
	}
	public String getHousehold_subtotal() {
		return household_subtotal;
	}
	public void setHousehold_subtotal(String household_subtotal) {
		this.household_subtotal = household_subtotal;
	}
	public String getHousehold_furniture() {
		return household_furniture;
	}
	public void setHousehold_furniture(String household_furniture) {
		this.household_furniture = household_furniture;
	}
	public String getHousehold_interior_design() {
		return household_interior_design;
	}
	public void setHousehold_interior_design(String household_interior_design) {
		this.household_interior_design = household_interior_design;
	}
	public String getHousehold_furniture_service() {
		return household_furniture_service;
	}
	public void setHousehold_furniture_service(String household_furniture_service) {
		this.household_furniture_service = household_furniture_service;
	}
	public String getHousehold_fiber() {
		return household_fiber;
	}
	public void setHousehold_fiber(String household_fiber) {
		this.household_fiber = household_fiber;
	}
	public String getHousehold_equipment() {
		return household_equipment;
	}
	public void setHousehold_equipment(String household_equipment) {
		this.household_equipment = household_equipment;
	}
	public String getHousehold_service() {
		return household_service;
	}
	public void setHousehold_service(String household_service) {
		this.household_service = household_service;
	}
	public String getHousehold_household_goods() {
		return household_household_goods;
	}
	public void setHousehold_household_goods(String household_household_goods) {
		this.household_household_goods = household_household_goods;
	}
	public String getHousehold_tool() {
		return household_tool;
	}
	public void setHousehold_tool(String household_tool) {
		this.household_tool = household_tool;
	}
	public String getHousehold_consumables() {
		return household_consumables;
	}
	public void setHousehold_consumables(String household_consumables) {
		this.household_consumables = household_consumables;
	}
	public String getHousehold_household_service() {
		return household_household_service;
	}
	public void setHousehold_household_service(String household_household_service) {
		this.household_household_service = household_household_service;
	}
	public String getHygiene_subtotal() {
		return hygiene_subtotal;
	}
	public void setHygiene_subtotal(String hygiene_subtotal) {
		this.hygiene_subtotal = hygiene_subtotal;
	}
	public String getHygiene_drug() {
		return hygiene_drug;
	}
	public void setHygiene_drug(String hygiene_drug) {
		this.hygiene_drug = hygiene_drug;
	}
	public String getHygiene_consumables() {
		return hygiene_consumables;
	}
	public void setHygiene_consumables(String hygiene_consumables) {
		this.hygiene_consumables = hygiene_consumables;
	}
	public String getHygiene_stores() {
		return hygiene_stores;
	}
	public void setHygiene_stores(String hygiene_stores) {
		this.hygiene_stores = hygiene_stores;
	}
	public String getHygiene_foreign_medical() {
		return hygiene_foreign_medical;
	}
	public void setHygiene_foreign_medical(String hygiene_foreign_medical) {
		this.hygiene_foreign_medical = hygiene_foreign_medical;
	}
	public String getHygiene_dentist() {
		return hygiene_dentist;
	}
	public void setHygiene_dentist(String hygiene_dentist) {
		this.hygiene_dentist = hygiene_dentist;
	}
	public String getHygiene_acc() {
		return hygiene_acc;
	}
	public void setHygiene_acc(String hygiene_acc) {
		this.hygiene_acc = hygiene_acc;
	}
	public String getHygiene_hospitalization() {
		return hygiene_hospitalization;
	}
	public void setHygiene_hospitalization(String hygiene_hospitalization) {
		this.hygiene_hospitalization = hygiene_hospitalization;
	}
	public String getTraffic_subtotal() {
		return traffic_subtotal;
	}
	public void setTraffic_subtotal(String traffic_subtotal) {
		this.traffic_subtotal = traffic_subtotal;
	}
	public String getTraffic_purchase_car() {
		return traffic_purchase_car;
	}
	public void setTraffic_purchase_car(String traffic_purchase_car) {
		this.traffic_purchase_car = traffic_purchase_car;
	}
	public String getTraffic_acc_transportation() {
		return traffic_acc_transportation;
	}
	public void setTraffic_acc_transportation(String traffic_acc_transportation) {
		this.traffic_acc_transportation = traffic_acc_transportation;
	}
	public String getTraffic_management() {
		return traffic_management;
	}
	public void setTraffic_management(String traffic_management) {
		this.traffic_management = traffic_management;
	}
	public String getTraffic_fuel() {
		return traffic_fuel;
	}
	public void setTraffic_fuel(String traffic_fuel) {
		this.traffic_fuel = traffic_fuel;
	}
	public String getTraffic_acc_private() {
		return traffic_acc_private;
	}
	public void setTraffic_acc_private(String traffic_acc_private) {
		this.traffic_acc_private = traffic_acc_private;
	}
	public String getTraffic_track() {
		return traffic_track;
	}
	public void setTraffic_track(String traffic_track) {
		this.traffic_track = traffic_track;
	}
	public String getTraffic_land() {
		return traffic_land;
	}
	public void setTraffic_land(String traffic_land) {
		this.traffic_land = traffic_land;
	}
	public String getTraffic_acc() {
		return traffic_acc;
	}
	public void setTraffic_acc(String traffic_acc) {
		this.traffic_acc = traffic_acc;
	}
	public String getTraffic_acc_service() {
		return traffic_acc_service;
	}
	public void setTraffic_acc_service(String traffic_acc_service) {
		this.traffic_acc_service = traffic_acc_service;
	}
	public String getCommunication_subtotal() {
		return communication_subtotal;
	}
	public void setCommunication_subtotal(String communication_subtotal) {
		this.communication_subtotal = communication_subtotal;
	}
	public String getCommunication_postal_service() {
		return communication_postal_service;
	}
	public void setCommunication_postal_service(String communication_postal_service) {
		this.communication_postal_service = communication_postal_service;
	}
	public String getCommunication_equipment() {
		return communication_equipment;
	}
	public void setCommunication_equipment(String communication_equipment) {
		this.communication_equipment = communication_equipment;
	}
	public String getCommunication_service() {
		return communication_service;
	}
	public void setCommunication_service(String communication_service) {
		this.communication_service = communication_service;
	}
	public String getEnter_subtotal() {
		return enter_subtotal;
	}
	public void setEnter_subtotal(String enter_subtotal) {
		this.enter_subtotal = enter_subtotal;
	}
	public String getEnter_sound_equipment() {
		return enter_sound_equipment;
	}
	public void setEnter_sound_equipment(String enter_sound_equipment) {
		this.enter_sound_equipment = enter_sound_equipment;
	}
	public String getEnter_equipment() {
		return enter_equipment;
	}
	public void setEnter_equipment(String enter_equipment) {
		this.enter_equipment = enter_equipment;
	}
	public String getEnter_information() {
		return enter_information;
	}
	public void setEnter_information(String enter_information) {
		this.enter_information = enter_information;
	}
	public String getEnter_record() {
		return enter_record;
	}
	public void setEnter_record(String enter_record) {
		this.enter_record = enter_record;
	}
	public String getEnter_infor_repair() {
		return enter_infor_repair;
	}
	public void setEnter_infor_repair(String enter_infor_repair) {
		this.enter_infor_repair = enter_infor_repair;
	}
	public String getEnter_culture_durable() {
		return enter_culture_durable;
	}
	public void setEnter_culture_durable(String enter_culture_durable) {
		this.enter_culture_durable = enter_culture_durable;
	}
	public String getEnter_instrument() {
		return enter_instrument;
	}
	public void setEnter_instrument(String enter_instrument) {
		this.enter_instrument = enter_instrument;
	}
	public String getEnter_durable_repair() {
		return enter_durable_repair;
	}
	public void setEnter_durable_repair(String enter_durable_repair) {
		this.enter_durable_repair = enter_durable_repair;
	}
	public String getEnter_toy() {
		return enter_toy;
	}
	public void setEnter_toy(String enter_toy) {
		this.enter_toy = enter_toy;
	}
	public String getEnter_camping() {
		return enter_camping;
	}
	public void setEnter_camping(String enter_camping) {
		this.enter_camping = enter_camping;
	}
	public String getEnter_flower() {
		return enter_flower;
	}
	public void setEnter_flower(String enter_flower) {
		this.enter_flower = enter_flower;
	}
	public String getEnter_pet() {
		return enter_pet;
	}
	public void setEnter_pet(String enter_pet) {
		this.enter_pet = enter_pet;
	}
	public String getEnter_flower_pet_service() {
		return enter_flower_pet_service;
	}
	public void setEnter_flower_pet_service(String enter_flower_pet_service) {
		this.enter_flower_pet_service = enter_flower_pet_service;
	}
	public String getEnter_exercise() {
		return enter_exercise;
	}
	public void setEnter_exercise(String enter_exercise) {
		this.enter_exercise = enter_exercise;
	}
	public String getEnter_culture() {
		return enter_culture;
	}
	public void setEnter_culture(String enter_culture) {
		this.enter_culture = enter_culture;
	}
	public String getEnter_lottery() {
		return enter_lottery;
	}
	public void setEnter_lottery(String enter_lottery) {
		this.enter_lottery = enter_lottery;
	}
	public String getEnter_book() {
		return enter_book;
	}
	public void setEnter_book(String enter_book) {
		this.enter_book = enter_book;
	}
	public String getEnter_acc() {
		return enter_acc;
	}
	public void setEnter_acc(String enter_acc) {
		this.enter_acc = enter_acc;
	}
	public String getEnter_stationery() {
		return enter_stationery;
	}
	public void setEnter_stationery(String enter_stationery) {
		this.enter_stationery = enter_stationery;
	}
	public String getEnter_travel() {
		return enter_travel;
	}
	public void setEnter_travel(String enter_travel) {
		this.enter_travel = enter_travel;
	}
	public String getEdu_subtotal() {
		return edu_subtotal;
	}
	public void setEdu_subtotal(String edu_subtotal) {
		this.edu_subtotal = edu_subtotal;
	}
	public String getEdu_formal_education() {
		return edu_formal_education;
	}
	public void setEdu_formal_education(String edu_formal_education) {
		this.edu_formal_education = edu_formal_education;
	}
	public String getEdu_elementary() {
		return edu_elementary;
	}
	public void setEdu_elementary(String edu_elementary) {
		this.edu_elementary = edu_elementary;
	}
	public String getEdu_middle() {
		return edu_middle;
	}
	public void setEdu_middle(String edu_middle) {
		this.edu_middle = edu_middle;
	}
	public String getEdu_high() {
		return edu_high;
	}
	public void setEdu_high(String edu_high) {
		this.edu_high = edu_high;
	}
	public String getEdu_college() {
		return edu_college;
	}
	public void setEdu_college(String edu_college) {
		this.edu_college = edu_college;
	}
	public String getEdu_student_college() {
		return edu_student_college;
	}
	public void setEdu_student_college(String edu_student_college) {
		this.edu_student_college = edu_student_college;
	}
	public String getEdu_adult_college() {
		return edu_adult_college;
	}
	public void setEdu_adult_college(String edu_adult_college) {
		this.edu_adult_college = edu_adult_college;
	}
	public String getEdu_acc() {
		return edu_acc;
	}
	public void setEdu_acc(String edu_acc) {
		this.edu_acc = edu_acc;
	}
	public String getFood_subtotal() {
		return food_subtotal;
	}
	public void setFood_subtotal(String food_subtotal) {
		this.food_subtotal = food_subtotal;
	}
	public String getFood_fee() {
		return food_fee;
	}
	public void setFood_fee(String food_fee) {
		this.food_fee = food_fee;
	}
	public String getFood_accommodations_fee() {
		return food_accommodations_fee;
	}
	public void setFood_accommodations_fee(String food_accommodations_fee) {
		this.food_accommodations_fee = food_accommodations_fee;
	}
	public String getAcc_subtotal() {
		return acc_subtotal;
	}
	public void setAcc_subtotal(String acc_subtotal) {
		this.acc_subtotal = acc_subtotal;
	}
	public String getAcc_beauty_service() {
		return acc_beauty_service;
	}
	public void setAcc_beauty_service(String acc_beauty_service) {
		this.acc_beauty_service = acc_beauty_service;
	}
	public String getAcc_beauty_equipment() {
		return acc_beauty_equipment;
	}
	public void setAcc_beauty_equipment(String acc_beauty_equipment) {
		this.acc_beauty_equipment = acc_beauty_equipment;
	}
	public String getAcc_hygiene() {
		return acc_hygiene;
	}
	public void setAcc_hygiene(String acc_hygiene) {
		this.acc_hygiene = acc_hygiene;
	}
	public String getAcc_watch() {
		return acc_watch;
	}
	public void setAcc_watch(String acc_watch) {
		this.acc_watch = acc_watch;
	}
	public String getAcc_acc() {
		return acc_acc;
	}
	public void setAcc_acc(String acc_acc) {
		this.acc_acc = acc_acc;
	}
	public String getAcc_welfare_facilities() {
		return acc_welfare_facilities;
	}
	public void setAcc_welfare_facilities(String acc_welfare_facilities) {
		this.acc_welfare_facilities = acc_welfare_facilities;
	}
	public String getAcc_insurance() {
		return acc_insurance;
	}
	public void setAcc_insurance(String acc_insurance) {
		this.acc_insurance = acc_insurance;
	}
	public String getAcc_finance() {
		return acc_finance;
	}
	public void setAcc_finance(String acc_finance) {
		this.acc_finance = acc_finance;
	}
	public String getAcc_service() {
		return acc_service;
	}
	public void setAcc_service(String acc_service) {
		this.acc_service = acc_service;
	}
	public String getNon_subtotal() {
		return non_subtotal;
	}
	public void setNon_subtotal(String non_subtotal) {
		this.non_subtotal = non_subtotal;
	}
	public String getNon_tax() {
		return non_tax;
	}
	public void setNon_tax(String non_tax) {
		this.non_tax = non_tax;
	}
	public String getNon_non_tax() {
		return non_non_tax;
	}
	public void setNon_non_tax(String non_non_tax) {
		this.non_non_tax = non_non_tax;
	}
	public String getNon_pension() {
		return non_pension;
	}
	public void setNon_pension(String non_pension) {
		this.non_pension = non_pension;
	}
	public String getNon_social_insurance() {
		return non_social_insurance;
	}
	public void setNon_social_insurance(String non_social_insurance) {
		this.non_social_insurance = non_social_insurance;
	}
	public String getNon_interest_cost() {
		return non_interest_cost;
	}
	public void setNon_interest_cost(String non_interest_cost) {
		this.non_interest_cost = non_interest_cost;
	}
	public String getNon_furniture() {
		return non_furniture;
	}
	public void setNon_furniture(String non_furniture) {
		this.non_furniture = non_furniture;
	}
	public String getNon_nonprofit() {
		return non_nonprofit;
	}
	public void setNon_nonprofit(String non_nonprofit) {
		this.non_nonprofit = non_nonprofit;
	}
	
	

	
	
	
}
