# DigitalOnboardingSDK

DigitalOnboardingSDK kullanıcılarınızın kolayca DB müşterisi olmasını sağlayan bir kütüphanedir.

[![pod - 1.0.0](https://img.shields.io/badge/pod-1.0.0-blue)](https://cocoapods.org/) 
[![Swift Package Manager - compatible](https://img.shields.io/badge/Swift_Package_Manager-compatible-2ea44f)](https://github.com/apple/swift-package-manager/)

## Gereksinimler

Bu kütüphaneyi kullanabilmeniz için uygulamanızın minimum iOS 13.0 SDK versiyonunu desteklemesi gerekmektedir.

## Kütüphanenin Projeye Eklenmesi

Kütüphaneyi projenize eklemek için aşağıdaki adımları uygulayabilirsiniz.

- ### Swift Package Manager (SPM) ile ekleme

 1. Projenizi seçin, ardından `Package Dependencies` sekmesine geçin ve `+` butonuna tıklayın.
   ![image](https://user-images.githubusercontent.com/1685245/213993476-f4a2f9a8-1ebe-4f2e-a3e3-727576d78506.png)
 3. Açılan pencerede arama kutusuna https://github.com/madiguzel/DigitalOnboarding.git yazın `Dependency Rule` seçeneğini `Up to Next Major Version` olarak değiştirin, minimum versiyon kutusuna `1.0.0` değerini girin ve `Add Package` butonuna tıklayın.
   ![image](https://user-images.githubusercontent.com/1685245/213993985-36190e6d-00b4-4889-99dc-22f3858af1b5.png)
 5. Açılan pencerede uygulamanızın target’ının seçildiğine emin olun ve `Add Package` butonuna tıklayın.
   ![image](https://user-images.githubusercontent.com/1685245/213994047-5af61961-c6c3-427d-b9a2-68302afb9696.png)
 7. Paketin projenize eklendiğini teyit edin.
   ![image](https://user-images.githubusercontent.com/1685245/213994081-1dc2f8ce-e19e-40fd-9932-0dafb2afd048.png)

- ### CocoaPods ile ekleme

 1. Sisteminizde **Cocoapods** kurulu değilse https://cocoapods.org/ linkindeki yönergeleri izleyerek kurulumu tamamlayın.
 2. Projenizde halihazırda Cocoapods kullanılmıyorsa projenizin root dizininde Terminal’den `pod init` komutunu çalıştırın.
 3. Root dizininde oluşan `Podfile` dosyasını açın. `platform :ios,` satırındaki yorumu kaldırın ve iOS versiyonunu `13.0` olarak ayarlayın. `use_frameworks!` satırının altına `pod ‘DigitalOnboardingSDK’` satırını ekleyin. Son durumda **Podfile** dosyası aşağıdaki gibi görünmelidir.
```
  # Uncomment the next line to define a global platform for your project
  platform :ios, '13.0'

  target 'DigitalOnboardingHostApp' do
    # Comment the next line if you don't want to use dynamic frameworks
    use_frameworks!

    # Pods for DigitalOnboardingHostApp

    pod 'DigitalOnboardingSDK'

    target 'DigitalOnboardingHostAppTests' do
      inherit! :search_paths
      # Pods for testing
    end

    target 'DigitalOnboardingHostAppUITests' do
      # Pods for testing
    end

  end
```
 4. Projenizin root dizininde Terminal açarak `pod install --repo-update` komutunu çalıştırın.
 5. Pod’un projenize eklendiğini doğrulayın.
   ![image](https://user-images.githubusercontent.com/1685245/213996607-cbf6e3ac-1aef-4033-860a-1d95e9f39410.png)
   
- ### Manuel ekleme

 1. Eğer yoksa proje dizininde `Frameworks` adlı bir klasör yaratın.
 2. İletilen `DigitalOnboardingSDK.xcframework` dosyasını bu klasöre kopyalayın.
 3. Uygulamanızın target’ını seçtikten sonra `Build Settings` tabında `Framework Search Paths` bölümüne `$(PROJECT_DIR)/Frameworks` satırını ekleyin.
    ![image](https://user-images.githubusercontent.com/1685245/213997072-6979e5eb-9217-492f-984e-8294f876197b.png)
 4. `Build Phases` tabında `Link Binary With Libraries` bölümünde `+` ikonuna tıkladıktan sonra `Add Other` menüsü açın ve `Add Files…` seçeceğini seçin.   
    ![image](https://user-images.githubusercontent.com/1685245/213997336-8f0396d8-f818-44de-8dba-5c09ab96cac0.png)
 5. Açılan Finder penceresinde oluşturduğunuz `Frameworks` dizinine gidin ve `DigitalOnboardingSDK.xcframework` dosyasını seçin ve Aç’a tıklayın. Kütüphanenin Link `Library With Libraries` bölümüne eklendiğinden emin olun.
    ![image](https://user-images.githubusercontent.com/1685245/213997448-c041cfe3-808b-49d2-b1e7-60e9679c59eb.png)
    ![image](https://user-images.githubusercontent.com/1685245/213997473-4876e1e0-947d-42bc-b0ed-c1f0c5a16023.png)
 6. `General` tabında `Frameworks, Libraries and Embedded Content` kısmında `DigitalOnboardingSDK.xcframework` satırının sağında `Don’t Embed` seçeneğini `Embed & Sign` olarak değiştirin.   
    ![image](https://user-images.githubusercontent.com/1685245/213997578-0628818c-2069-41e9-88f8-c6a986a70ba4.png)

## Proje Konfigürasyonu

Kütüphaneyi projenize entegre ettikten sonra SDK’in düzgün şekilde çalışabilmesi için aşağıdaki konfigürasyonları uygulayın.

 1. `Signing & Capabilities` tabında `+Capability` butonuna dokunun. Açılan pencerede `Near Field Communication Tag Reading`i aratıp ekleyin.
 
    ![image](https://user-images.githubusercontent.com/1685245/214040531-0e3f6e58-f130-4dc9-9958-685283aea5c8.png)
    ![image](https://user-images.githubusercontent.com/1685245/214040674-bc45c415-e335-495b-8729-6d6890c7ea62.png)
    ![image](https://user-images.githubusercontent.com/1685245/214040705-eea84788-c7b5-465d-8f7c-67ef36a79bc7.png)
    
 2. Projenizin `Info.plist` dosyasına aşağıdaki izin açıklamalarını girin.
 
    ```xml
    <key>NSCameraUsageDescription</key>
    <string>Görüntülü görüşme gerçekleştirmek ve çipli kimlik kartınızın arka kısmındaki kodu okuyabilmek için kamera erişim izni vermeniz gerekmektedir.</string>

    <key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
    <string>Size en yakın şubeleri görüntüleyebilmemiz için konum erişim izni vermeniz gerekmektedir.</string>

    <key>NSLocationAlwaysUsageDescription</key>
    <string>Size en yakın şubeleri görüntüleyebilmemiz için konum erişim izni vermeniz gerekmektedir.</string>

    <key>NSLocationUsageDescription</key>
    <string>Size en yakın şubeleri görüntüleyebilmemiz için konum erişim izni vermeniz gerekmektedir.</string>

    <key>NSLocationWhenInUseUsageDescription</key>
    <string>Size en yakın şubeleri görüntüleyebilmemiz için konum erişim izni vermeniz gerekmektedir.</string>

    <key>NSMicrophoneUsageDescription</key>
    <string>Görüntülü görüşme gerçekleştirmek için mikrofon erişim izni vermeniz gerekmektedir.</string>

    <key>NFCReaderUsageDescription</key>
    <string>Çipli TC kimlik kartınızdan bilgilerinizi okumak için gereklidir.</string>
    ```

 3. Projenizin `Info.plist` dosyasına kimlik kartındaki çipin okunması için gerekli olan aşağıdaki değeri girin.
 
    ```xml
    <key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
    <array>
     <string>A0000002471001</string>
    </array>
    ```

 4. Projenizi build edin.

## Kütüphane Kullanımı

 1. İlk olarak kütüphaneyi import edin.
 
    ```swift
    import DigitalOnboardingSDK
    ```
    
 2. Kütüphane digital onboarding sonucunu bir closure ile geri bildirir. Bunun için aşağıdaki gibi bir closure tanımlayın.

    ```swift
    let resultCallback: (DigitalOnboardingResult) -> Void = { result in
      print(result)
    }
    ```
    `DigitalOnboardingResult` aşağıdaki dört durumdan birini döner:
    
    ```swift
    public enum DigitalOnboardingResult {
      case success    // Başvuru başarılı
      case courier    // Başvuru kurye ile devam edecek
      case error      // Başvuru sırasında hata alındı
      case cancel     // SDK başvuru tamamlanmadan kapatıldı
    }
    ```
    
  3. Tanımladığınız closure ile `DigitalOnboardingVC` tanımlayın ve onu sunun.
  
    ```swift
    let vc = DigitalOnboardingVC(resultCallback: resultCallback)
    vc.modalPresentationStyle = .fullScreen
    present(vc, animated: true, completion: nil)
    ```
    
## Kütüphane Konfigürasyonu

Kütüphane ön tanımlı bazı ayarlar ile hazır olarak sunulur. Herhangi bir değişiklik yapmadan çalışır. İhtiyaç duymanız halinde aşağıda belirtilen ayarları değiştirmek için bir ayar dosyası ekleyebilirsiniz.

  i. Renk Paleti<br>
  ii. Karanlık Mod<br>
  iii. Font<br>
  iv. Kurye akışı<br>
  v. Doğrulama Türleri
  
Ayar dosyası bir `Property List` olmalıdır. Projenize bir ayar dosyası eklemek için `File -> New -> File…` menüsünü kullanarak yeni dosya ekleme penceresini açın.

![image](https://user-images.githubusercontent.com/1685245/214045180-06505e17-c771-4a24-8db2-1d979240bdf8.png)

Açılan pencerede `Property List`i seçin ve `Next` butonuna tıklayın.

![image](https://user-images.githubusercontent.com/1685245/214045248-6e700a97-4d8c-4328-9afe-4c4a7916879e.png)

Dosya adını dilediğiniz şekilde ayarlayıp `Create` butonuna basın.

![image](https://user-images.githubusercontent.com/1685245/214045366-5bc89580-c7ac-4338-b684-06442e335edf.png)

Projenize aşağıdaki gibi boş bir ayar dosyası eklenecektir. (Ayar dosyası içeriğinin nasıl olacağı konu başlıkları altında daha sonra aktarılacaktır.)

![image](https://user-images.githubusercontent.com/1685245/214045414-5c8d8d4c-2560-4742-a0b8-fcbbb9191a3d.png)

Ayar dosyasını kullanmak için yarattığınız `DigitalOnboardingVC`yi sunmadan önce aşağıdaki satırı ekleyin.

```swift
vc.loadPreferences(named: "Preferences", in: Bundle.main)
```

Son durumda kodunuz aşağıdaki gibi olmalıdır:

```swift
import DigitalOnboardingSDK

let resultCallback: (DigitalOnboardingResult) -> Void = { result in
    print(result)
}

let vc = DigitalOnboardingVC(resultCallback: resultCallback)
vc.loadPreferences(named: "Preferences", in: Bundle.main)
vc.modalPresentationStyle = .fullScreen
present(vc, animated: true, completion: nil)
```


> **Note**<br>
> Ayar dosyasına herhangi bir değer eklemeden kütüphaneyi çalıştırdığınızda kütüphane ön tanımlı değerler kullanılarak yüklenecektir.


#### i. Renk Paleti

Renk paletini değiştirmek için ayar dosyasına `Dictionary` türünde `colorPalette` adında değer eklemeniz gerekir.

![image](https://user-images.githubusercontent.com/1685245/214047367-76c699f2-6194-4c51-8454-089d5595a0e0.png)

`colorPalette` sözlüğüne normal modda renk paleti eklemek için `Dictionary` türünde `lightPalette` adında, koyu modda renk paleti eklemek için `Dictionary` türünde `darkPalette` adında değer eklemeniz gerekir. Bu değerleri eklemek zorunlu değildir. İhtiyacınıza göre herhangi birini veya ikisini birden ekleyebilirsiniz.

![image](https://user-images.githubusercontent.com/1685245/214047478-d33d9826-88c6-43e8-bd91-95977c34c2b8.png)

`colorPalette` sözlüğüne normal modda renk paleti eklemek için `Dictionary` türünde `lightPalette` adında, koyu modda renk paleti eklemek için `Dictionary` türünde `darkPalette` adında değer eklemeniz gerekir. Bu değerleri eklemek zorunlu değildir. İhtiyacınıza göre herhangi birini veya ikisini birden ekleyebilirsiniz.

Renkler ayar dosyasına `String` türünde hexadecimal formatta eklenir. Desteklenen formatlar aşağıda gösterilmiştir.

| Format     | Açıklama | Örnek | Görünüm |
| :-------: | :-------- | :-----: | :-------: |
| (aa)rrggbb  | aa - Transparan kodu (Opsiyonel)<br>rr - Kırmızı renk kodu<br>gg - Yeşil renk kodu<br>bb - Mavi renk kodu | 4290f7  | ![image](https://user-images.githubusercontent.com/1685245/214053922-48da0db4-1224-4c6b-b864-8cd0d4a403b3.png) |
|||d801017b|![image](https://user-images.githubusercontent.com/1685245/214054090-9c38917d-b966-476a-a570-d80bc71dc423.png) |
|(aa)rrggbb;(aa)rrggbb;((aa)rrggbb)(\|H)|aa - Transparan kodu (Opsiyonel)<br>rr - Kırmızı renk kodu<br>gg - Yeşil renk kodu<br>bb - Mavi renk kodu<br><br>; - Renk ayracı<br>\| - Renk- Gradient yön ayracı<br><br>H - Yatay gradient uygulama (Opsiyonel)|ffdc7c;f9b626<br>(2 duraklı yatay renk geçişi)|![image](https://user-images.githubusercontent.com/1685245/214053712-9781065b-fe1f-4098-9816-852a5790b471.png)|
|||3772ca;1e3da5;01017b\|H<br>(3 duraklı yatay renk geçişi)|![image](https://user-images.githubusercontent.com/1685245/214054424-17d2157b-2744-416c-bb5d-8216a809200b.png)|
|(aa)rrggbb;(aa)rrggbb;((aa)rrggbb)\|V|aa - Transparan kodu (Opsiyonel)<br>rr - Kırmızı renk kodu<br>gg - Yeşil renk kodu<br>bb - Mavi renk kodu<br><br>; - Renk ayracı<br>\| - Renk- Gradient yön ayracı<br><br>V - Dikey gradient uygulama (Dikey uygulamada zorunludur.)|ffdc7c;f9b626\|V<br>(2 duraklı dikey renk geçişi)|![image](https://user-images.githubusercontent.com/1685245/214055458-c32763b7-6887-4d7f-bf4c-fc75d2b62981.png)|
|||d83772ca;1e3da5;01017b\|V<br>(3 duraklı dikey renk geçişi)|![image](https://user-images.githubusercontent.com/1685245/214055724-975bbb25-6035-4bbd-bae7-bee176ba3487.png)|
