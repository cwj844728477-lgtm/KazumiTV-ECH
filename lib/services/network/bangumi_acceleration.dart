import 'package:kazumi/services/storage/storage.dart';
enum BangumiAcceleration { direct, ech, mirror;
 static BangumiAcceleration get current => GStorage.getSetting(SettingsKeys.enableBangumiProxy) ? mirror : ech;
}
