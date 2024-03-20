//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateAssetCopiesDto {
  /// Returns a new [UpdateAssetCopiesDto] instance.
  UpdateAssetCopiesDto({
    this.largeCopies,
    this.mediumCopies,
    this.smallCopies,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? largeCopies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mediumCopies;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? smallCopies;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateAssetCopiesDto &&
    other.largeCopies == largeCopies &&
    other.mediumCopies == mediumCopies &&
    other.smallCopies == smallCopies;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (largeCopies == null ? 0 : largeCopies!.hashCode) +
    (mediumCopies == null ? 0 : mediumCopies!.hashCode) +
    (smallCopies == null ? 0 : smallCopies!.hashCode);

  @override
  String toString() => 'UpdateAssetCopiesDto[largeCopies=$largeCopies, mediumCopies=$mediumCopies, smallCopies=$smallCopies]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.largeCopies != null) {
      json[r'largeCopies'] = this.largeCopies;
    } else {
    //  json[r'largeCopies'] = null;
    }
    if (this.mediumCopies != null) {
      json[r'mediumCopies'] = this.mediumCopies;
    } else {
    //  json[r'mediumCopies'] = null;
    }
    if (this.smallCopies != null) {
      json[r'smallCopies'] = this.smallCopies;
    } else {
    //  json[r'smallCopies'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateAssetCopiesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateAssetCopiesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      return UpdateAssetCopiesDto(
        largeCopies: num.parse('${json[r'largeCopies']}'),
        mediumCopies: num.parse('${json[r'mediumCopies']}'),
        smallCopies: num.parse('${json[r'smallCopies']}'),
      );
    }
    return null;
  }

  static List<UpdateAssetCopiesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateAssetCopiesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateAssetCopiesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateAssetCopiesDto> mapFromJson(dynamic json) {
    final map = <String, UpdateAssetCopiesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateAssetCopiesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateAssetCopiesDto-objects as value to a dart map
  static Map<String, List<UpdateAssetCopiesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateAssetCopiesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateAssetCopiesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

