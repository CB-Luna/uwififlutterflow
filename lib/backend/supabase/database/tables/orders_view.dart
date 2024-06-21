import '../database.dart';

class OrdersViewTable extends SupabaseTable<OrdersViewRow> {
  @override
  String get tableName => 'orders_view';

  @override
  OrdersViewRow createRow(Map<String, dynamic> data) => OrdersViewRow(data);
}

class OrdersViewRow extends SupabaseDataRow {
  OrdersViewRow(super.data);

  @override
  SupabaseTable get table => OrdersViewTable();

  int? get customerId => getField<int>('customer_id');
  set customerId(int? value) => setField<int>('customer_id', value);

  String? get customerFirstName => getField<String>('customer_first_name');
  set customerFirstName(String? value) =>
      setField<String>('customer_first_name', value);

  String? get customerLastName => getField<String>('customer_last_name');
  set customerLastName(String? value) =>
      setField<String>('customer_last_name', value);

  String? get customerEmail => getField<String>('customer_email');
  set customerEmail(String? value) => setField<String>('customer_email', value);

  String? get customerPhone => getField<String>('customer_phone');
  set customerPhone(String? value) => setField<String>('customer_phone', value);

  String? get customerStatus => getField<String>('customer_status');
  set customerStatus(String? value) =>
      setField<String>('customer_status', value);

  DateTime? get customerCreation => getField<DateTime>('customer_creation');
  set customerCreation(DateTime? value) =>
      setField<DateTime>('customer_creation', value);

  String? get customerZipcode => getField<String>('customer_zipcode');
  set customerZipcode(String? value) =>
      setField<String>('customer_zipcode', value);

  String? get customerAddress => getField<String>('customer_address');
  set customerAddress(String? value) =>
      setField<String>('customer_address', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  DateTime? get orderCreation => getField<DateTime>('order_creation');
  set orderCreation(DateTime? value) =>
      setField<DateTime>('order_creation', value);

  DateTime? get orderFinished => getField<DateTime>('order_finished');
  set orderFinished(DateTime? value) =>
      setField<DateTime>('order_finished', value);

  dynamic get status => getField<dynamic>('status');
  set status(dynamic value) => setField<dynamic>('status', value);

  String? get orderCreatorId => getField<String>('order_creator_id');
  set orderCreatorId(String? value) =>
      setField<String>('order_creator_id', value);

  int? get creatorSequentialId => getField<int>('creator_sequential_id');
  set creatorSequentialId(int? value) =>
      setField<int>('creator_sequential_id', value);

  String? get creatorEmail => getField<String>('creator_email');
  set creatorEmail(String? value) => setField<String>('creator_email', value);

  String? get creatorFirstName => getField<String>('creator_first_name');
  set creatorFirstName(String? value) =>
      setField<String>('creator_first_name', value);

  String? get creatorLastName => getField<String>('creator_last_name');
  set creatorLastName(String? value) =>
      setField<String>('creator_last_name', value);

  int? get orderTypeId => getField<int>('order_type_id');
  set orderTypeId(int? value) => setField<int>('order_type_id', value);

  String? get orderType => getField<String>('order_type');
  set orderType(String? value) => setField<String>('order_type', value);

  dynamic get orderActions => getField<dynamic>('order_actions');
  set orderActions(dynamic value) => setField<dynamic>('order_actions', value);

  dynamic get providers => getField<dynamic>('providers');
  set providers(dynamic value) => setField<dynamic>('providers', value);
}
