import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,
  DataStruct,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case TicketRow:
            return TicketRow(data);
          case RouterDetailRow:
            return RouterDetailRow(data);
          case InventoryDashboardsRow:
            return InventoryDashboardsRow(data);
          case CustomerTicketRow:
            return CustomerTicketRow(data);
          case BatchDocumentRow:
            return BatchDocumentRow(data);
          case OrderRow:
            return OrderRow(data);
          case CustomerServiceOrderRow:
            return CustomerServiceOrderRow(data);
          case ProviderPurchaseOrderRow:
            return ProviderPurchaseOrderRow(data);
          case TokenRow:
            return TokenRow(data);
          case SimDetailRow:
            return SimDetailRow(data);
          case OrderProviderRow:
            return OrderProviderRow(data);
          case InventoryProductRow:
            return InventoryProductRow(data);
          case OrderStatusRow:
            return OrderStatusRow(data);
          case ServiceOrderActionRow:
            return ServiceOrderActionRow(data);
          case ProviderPurchaseOrderProductRow:
            return ProviderPurchaseOrderProductRow(data);
          case RouterSimConnectionRow:
            return RouterSimConnectionRow(data);
          case ProductCatalogViewRow:
            return ProductCatalogViewRow(data);
          case CreditCardRow:
            return CreditCardRow(data);
          case ProviderInvoiceProductRow:
            return ProviderInvoiceProductRow(data);
          case CustomerHeatmapViewRow:
            return CustomerHeatmapViewRow(data);
          case ExecutedProcessTaskRow:
            return ExecutedProcessTaskRow(data);
          case InventoryProductStatusRow:
            return InventoryProductStatusRow(data);
          case ShipmentRow:
            return ShipmentRow(data);
          case RecentActivityRow:
            return RecentActivityRow(data);
          case RoleRow:
            return RoleRow(data);
          case InventoryDashboardsViewRow:
            return InventoryDashboardsViewRow(data);
          case ExecutedProcessRow:
            return ExecutedProcessRow(data);
          case BarcodeTypeRow:
            return BarcodeTypeRow(data);
          case ProductRow:
            return ProductRow(data);
          case AdInGnreRow:
            return AdInGnreRow(data);
          case OrdersViewRow:
            return OrdersViewRow(data);
          case HeatmapOrdersViewRow:
            return HeatmapOrdersViewRow(data);
          case BatchSimCardTempRow:
            return BatchSimCardTempRow(data);
          case TransactionAdRow:
            return TransactionAdRow(data);
          case DashboardsViewRow:
            return DashboardsViewRow(data);
          case FullCustomerRow:
            return FullCustomerRow(data);
          case CustomerServiceHistoryRow:
            return CustomerServiceHistoryRow(data);
          case OrderProductActionsRow:
            return OrderProductActionsRow(data);
          case AdRow:
            return AdRow(data);
          case CustomerServiceRow:
            return CustomerServiceRow(data);
          case BatchGatewayTempRow:
            return BatchGatewayTempRow(data);
          case BillingProcessRow:
            return BillingProcessRow(data);
          case StartDateRow:
            return StartDateRow(data);
          case OperatorRow:
            return OperatorRow(data);
          case SafeShoppingCartItemsRow:
            return SafeShoppingCartItemsRow(data);
          case InvoiceRow:
            return InvoiceRow(data);
          case CustomerStatementRow:
            return CustomerStatementRow(data);
          case GestionVideosViewRow:
            return GestionVideosViewRow(data);
          case ProviderInvoiceRow:
            return ProviderInvoiceRow(data);
          case OrderTypeRow:
            return OrderTypeRow(data);
          case SimCarrierRow:
            return SimCarrierRow(data);
          case UsersRow:
            return UsersRow(data);
          case HeatmapInventoryViewRow:
            return HeatmapInventoryViewRow(data);
          case OrderProductRow:
            return OrderProductRow(data);
          case CustomerDashboardsRow:
            return CustomerDashboardsRow(data);
          case VideosWithCategoriesRow:
            return VideosWithCategoriesRow(data);
          case CustomerRow:
            return CustomerRow(data);
          case TransactionTypeRow:
            return TransactionTypeRow(data);
          case CustomerTransactionRow:
            return CustomerTransactionRow(data);
          case BatchStatusRow:
            return BatchStatusRow(data);
          case AgrupacionVideosPorGeneroRow:
            return AgrupacionVideosPorGeneroRow(data);
          case PaymentRow:
            return PaymentRow(data);
          case InventoryLocationRow:
            return InventoryLocationRow(data);
          case SupportTicketsRow:
            return SupportTicketsRow(data);
          case CustomerNoteRow:
            return CustomerNoteRow(data);
          case ShipmentCompanyRow:
            return ShipmentCompanyRow(data);
          case ProductTypeRow:
            return ProductTypeRow(data);
          case AddressRow:
            return AddressRow(data);
          case SimsCardTestMobileRow:
            return SimsCardTestMobileRow(data);
          case GroupAdByGenreRow:
            return GroupAdByGenreRow(data);
          case OrdersDashboardsRow:
            return OrdersDashboardsRow(data);
          case BillCycleRow:
            return BillCycleRow(data);
          case ProviderRow:
            return ProviderRow(data);
          case GenreAdRow:
            return GenreAdRow(data);
          case UserProfileRow:
            return UserProfileRow(data);
          case RouterDetailsViewRow:
            return RouterDetailsViewRow(data);
          case AdWatchedRow:
            return AdWatchedRow(data);
          case AdsViewRow:
            return AdsViewRow(data);
          case ServiceRow:
            return ServiceRow(data);
          case StateRow:
            return StateRow(data);
          case GatewayTestMobileRow:
            return GatewayTestMobileRow(data);
          case OrderActionRow:
            return OrderActionRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
