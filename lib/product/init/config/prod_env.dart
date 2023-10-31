import 'package:architecture_template_v2/product/init/config/app_config_interface.dart';
import 'package:envied/envied.dart';

part 'prod_env.g.dart';

@Envied(
  obfuscate: true,
  path: 'asset/env/.prod.env',
)

///Product Environment
final class ProdEnv implements AppConfigInterface {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;
  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdEnv._apiKey;
  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}
