import UIKit
import React
import React_RCTAppDelegate
import ReactAppDependencyProvider
import Firebase

@main
class AppDelegate: RCTAppDelegate {
  override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    // Configura o Firebase
    FirebaseApp.configure()

    // Configura o nome do módulo e o provedor de dependências
    self.moduleName = "Quiz"
    self.dependencyProvider = RCTAppDependencyProvider()

    // Você pode adicionar suas props iniciais personalizadas no dicionário abaixo.
    // Elas serão passadas para o ViewController usado pelo React Native.
    self.initialProps = [:]

    // Chama o método da superclasse e retorna o valor
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  override func sourceURL(for bridge: RCTBridge) -> URL? {
    self.bundleURL()
  }

  override func bundleURL() -> URL? {
#if DEBUG
    RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
#else
    Bundle.main.url(forResource: "main", withExtension: "jsbundle")
#endif
  }
}
