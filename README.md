# DigitalOnboardingSDK

[![pod - 1.0.0](https://img.shields.io/badge/pod-1.0.0-blue)](https://cocoapods.org/) 
[![Swift Package Manager - compatible](https://img.shields.io/badge/Swift_Package_Manager-compatible-2ea44f)](https://github.com/apple/swift-package-manager/)

DigitalOnboardingSDK kullanıcılarınızın kolayca DB müşterisi olmasını sağlayan bir kütüphanedir.

## Gereksinimler

Bu kütüphaneyi kullanabilmeniz için uygulamanızın minimum iOS 13.0 SDK versiyonunu desteklemesi gerekmektedir.

## Kütüphanenin Projeye Eklenmesi

Kütüphaneyi projenize eklemek için aşağıdaki adımları uygulayabilirsiniz.

- ### Swift Package Manager (SPM) ile ekleme

 1. Projenizi seçin, ardından `Package Dependencies` sekmesine geçin ve `+` butonuna tıklayın.

   ![image](https://user-images.githubusercontent.com/1685245/213993476-f4a2f9a8-1ebe-4f2e-a3e3-727576d78506.png)
   
 2. Açılan pencerede arama kutusuna https://github.com/madiguzel/DigitalOnboarding.git yazın `Dependency Rule` seçeneğini `Up to Next Major Version` olarak değiştirin, minimum versiyon kutusuna `1.0.0` değerini girin ve `Add Package` butonuna tıklayın.

   ![image](https://user-images.githubusercontent.com/1685245/213993985-36190e6d-00b4-4889-99dc-22f3858af1b5.png)
   
 3. Açılan pencerede uygulamanızın target’ının seçildiğine emin olun ve `Add Package` butonuna tıklayın.

   ![image](https://user-images.githubusercontent.com/1685245/213994047-5af61961-c6c3-427d-b9a2-68302afb9696.png)
   
 4. Paketin projenize eklendiğini teyit edin.

   ![image](https://user-images.githubusercontent.com/1685245/213994081-1dc2f8ce-e19e-40fd-9932-0dafb2afd048.png)


- ### CocoaPods ile ekleme

 1. Sisteminizde **Cocoapods** kurulu değilse https://cocoapods.org/ linkindeki yönergeleri izleyerek kurulumu tamamlayın.
 2. Projenizde halihazırda Cocoapods kullanılmıyorsa projenizin root dizininde Terminal’den `pod init` komutunu çalıştırın.
 3. Root dizininde oluşan `Podfile` dosyasını açın. `platform :ios,` satırındaki yorumu kaldırın ve iOS versiyonunu `13.0` olarak ayarlayın. `use_frameworks!` satırının altına `pod ‘DigitalOnboardingSDK’` satırını ekleyin. Son durumda `Podfile` dosyası aşağıdaki gibi görünmelidir.
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

Kütüphaneyi projenize entegre ettikten sonra kütüphanenin düzgün şekilde çalışabilmesi için aşağıdaki konfigürasyonları uygulayın.

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

<table>
<thead>
  <tr>
    <th>Format</th>
    <th>Açıklama</th>
    <th>Örnek</th>
    <th>Görünüm</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="2">(aa)rrggbb</td>
    <td rowspan="2">aa - Transparan kodu (Opsiyonel)<br>rr - Kırmızı renk kodu<br>gg - Yeşil renk kodu<br>bb - Mavi renk kodu</td>
    <td>4290f7</td>
    <td><img src="https://user-images.githubusercontent.com/1685245/214053922-48da0db4-1224-4c6b-b864-8cd0d4a403b3.png" width="236" height="100"></td>
  </tr>
  <tr>
    <td>d801017b</td>
    <td><img src="https://user-images.githubusercontent.com/1685245/214054090-9c38917d-b966-476a-a570-d80bc71dc423.png" width="236" height="100"></td>
  </tr>
  <tr>
    <td rowspan="2">(aa)rrggbb;(aa)rrggbb;((aa)rrggbb)(|H)</td>
    <td rowspan="2">aa - Transparan kodu (Opsiyonel)<br>rr - Kırmızı renk kodu<br>gg - Yeşil renk kodu<br>bb - Mavi renk kodu<br><br>; - Renk ayracı<br>| - Renk- Gradient yön ayracı<br><br>H - Yatay gradient uygulama (Opsiyonel)</td>
    <td>ffdc7c;f9b626<br>(2 duraklı yatay renk geçişi)</td>
    <td><img src="https://user-images.githubusercontent.com/1685245/214053712-9781065b-fe1f-4098-9816-852a5790b471.png" width="236" height="100"></td>
  </tr>
  <tr>
    <td>3772ca;1e3da5;01017b|H<br>(3 duraklı yatay renk geçişi)<br></td>
    <td><img src="https://user-images.githubusercontent.com/1685245/214054424-17d2157b-2744-416c-bb5d-8216a809200b.png" width="236" height="100"></td>
  </tr>
  <tr>
    <td rowspan="2">(aa)rrggbb;(aa)rrggbb;((aa)rrggbb)|V</td>
    <td rowspan="2">aa - Transparan kodu (Opsiyonel)<br>rr - Kırmızı renk kodu<br>gg - Yeşil renk kodu<br>bb - Mavi renk kodu<br><br>; - Renk ayracı<br>| - Renk- Gradient yön ayracı<br><br>V - Dikey gradient uygulama<br>(Dikey uygulamada zorunludur.)</td>
    <td>ffdc7c;f9b626|V<br>(2 duraklı dikey renk geçişi)<br></td>
    <td><img src="https://user-images.githubusercontent.com/1685245/214055458-c32763b7-6887-4d7f-bf4c-fc75d2b62981.png" width="236" height="100"></td>
  </tr>
  <tr>
    <td>d83772ca;1e3da5;01017b|V<br>(3 duraklı dikey renk geçişi)</td>
    <td><img src="https://user-images.githubusercontent.com/1685245/214055724-975bbb25-6035-4bbd-bae7-bee176ba3487.png" width="236" height="100"></td>
  </tr>
</tbody>
</table>


![image](https://user-images.githubusercontent.com/1685245/214233076-0997157c-7cb3-4337-9a82-dfd07ae1b9ea.png)

Kütüphane içerisindeki renk adı ve kullanıldığı yer eşleşmelerini aşağıda görebilirsiniz.

<table>
<tbody>
   <tr>
    <td>1. navigationBar </td>
    <td>17. secondaryButtonHighlightedText </td>
    <td>33. textDisabled </td>
    <td>49. linkButton </td>
  </tr>
  <tr>
    <td>2. landingItemTitle </td>
    <td>18. secondaryButtonDisabled </td>
    <td>34. errorText </td>
    <td>50. addressViewBackground </td>
  </tr>
  <tr>
    <td>3. warningGradient </td>
    <td>19. secondaryButtonDisabledText </td>
    <td>35. fieldBorder </td>
    <td>51. addressViewBorder </td>
  </tr>
  <tr>
    <td>4. warningTitle </td>
    <td>20. secondaryButtonBorder </td>
    <td>36. fieldBackground </td>
    <td>52. addressViewBorderSelected </td>
  </tr>
  <tr>
    <td>5. warningBackground </td>
    <td>21. switchActive </td>
    <td>37. fieldDisabledBackground </td>
    <td>53. addressViewText </td>
  </tr>
  <tr>
    <td>6. primary </td>
    <td>22. switchInactive </td>
    <td>38. placeholder </td>
    <td>54. addressViewTextSelected </td>
  </tr>
  <tr>
    <td>7. primaryButton </td>
    <td>23. switchOnTint </td>
    <td>39. errorPlaceholder </td>
    <td>55. addressViewEdit </td>
  </tr>
  <tr>
    <td>8. primaryButtonText </td>
    <td>24. switchThumbTint </td>
    <td>40. zebra1 </td>
    <td>56. infoText </td>
  </tr>
  <tr>
    <td>9. primaryButtonHighlighted </td>
    <td>25. switchOnThumbTint </td>
    <td>41. zebra2 </td>
    <td>57. inputRightView </td>
  </tr>
  <tr>
    <td>10. primaryButtonHighlightedText </td>
    <td>26. switchOnText </td>
    <td>42. progressBar</td>
    <td>58. tableSectionTitle </td>
  </tr>
  <tr>
    <td>11. primaryButtonDisabled </td>
    <td>27. switchOffText </td>
    <td>43. progressTrack </td>
    <td>59. tableSeparator </td>
  </tr>
  <tr>
    <td>12. primaryButtonDisabledText </td>
    <td>28. switchBorder </td>
    <td>44. floatingView </td>
    <td>60. tableSelection </td>
  </tr>
  <tr>
    <td>13. primaryButtonBorder </td>
    <td>29. overlay </td>
    <td>45. secureInputText </td>
    <td>61. idCardFocus </td>
  </tr>
  <tr>
    <td>14. secondaryButton </td>
    <td>30. background </td>
    <td>46. secureInputBorder </td>
    <td></td>
  </tr>
  <tr>
    <td>15. secondaryButtonText </td>
    <td>31. navigationItem </td>
    <td>47. secureInputDefaultIndicator </td>
    <td></td>
  </tr>
  <tr>
    <td>16. secondaryButtonHighlighted </td>
    <td>32. text </td>
    <td>48. secureInputActiveIndicator </td>
    <td></td>
  </tr>
</tbody>
</table>

<img src="https://user-images.githubusercontent.com/1685245/214241329-75245520-6783-4bef-9976-1eca749fc377.png" width="250" /><img src="https://user-images.githubusercontent.com/1685245/214241357-7fd0c281-5b0f-445d-a023-7a35462946ce.png" width="250" /><img src="https://user-images.githubusercontent.com/1685245/214241392-0804e410-b631-41f1-be1a-a64937935130.png" width="250" />

<img src="https://user-images.githubusercontent.com/1685245/214242672-b9786de7-40bb-48ec-8f9f-aed1089f9787.png" width="250" /><img src="https://user-images.githubusercontent.com/1685245/214242681-811baf08-738b-4279-8005-d8548b55784a.png" width="250" /><img src="https://user-images.githubusercontent.com/1685245/214242709-f49a98a4-a918-45ee-a316-a5e1d9082891.png" width="250" />

<img src="https://user-images.githubusercontent.com/1685245/214242864-6414f266-30f2-4253-bceb-aa6e603ef0b9.png" width="250" /><img src="https://user-images.githubusercontent.com/1685245/214242908-c998f301-4ab0-4107-b25a-3cb8adc1e8e5.png" width="250" /><img src="https://user-images.githubusercontent.com/1685245/214242931-f013aae1-b38b-43de-8566-e1245d2b9f77.png" width="250" />

<img src="https://user-images.githubusercontent.com/1685245/214243734-85799864-c358-4bc8-9ae3-1ba755981001.png" width="250" /><img src="https://user-images.githubusercontent.com/1685245/214243745-ad13cfa5-50a3-4dcc-a9c1-9317488b7fe5.png" width="250" />


#### ii. Karanlık Mod

Karanlık modu kullanabilmeniz için ayar dosyasına `Boolean` türünde `darkMode` adında değer eklemeniz gerekir. `darkMode` değeri `NO` olarak ayarlandığında cihaz karanlık koda alınsa da normal mod renk paleti kullanılır. `darkMode` değeri `YES` olarak ayarlandığında cihaz karanlık moda alındığında karanlık mod renk paleti kullanılır.

![image](https://user-images.githubusercontent.com/1685245/214305425-add951dd-0602-461d-ab39-0965461d9583.png)

> **Warning**<br>
> `darkMode` değeri `YES` olarak ayarlandığında ayar dosyasına `darkPalette` değeri de eklenmesi gerekir. Eklenmediği durumda normal mod renk paleti     kullanılır. 


#### iii. Font

Fontu değiştirmek için ayar dosyasına `Dictionary` türünde `font` adında değer eklemeniz gerekir.

![image](https://user-images.githubusercontent.com/1685245/214305702-ecf01383-b81e-4767-ba32-cab90770cd45.png)

`font` sözlüğüne aşağıdaki gibi `Normal`, `Semibold` ve `Bold` adında üç adet `String` türünde değer eklenmesi gerekir.

![image](https://user-images.githubusercontent.com/1685245/214305819-8d31ea04-40bd-4953-9c3a-d67817d2f9ee.png)


#### iv. Kurye Akışı

Başvuru sırasında kurye akışının kullanılıp kullanılmayacağı belirtmek için ayar dosyasına `Boolean` türünde `courierChoice` değeri eklenebilir. Kurye akışı varsayılan olarak kapalıdır. `courierChoice` değeri `YES` olarak ayarlandığı durumda başvuru kurye akışı ile devam ettirilebilir.

![image](https://user-images.githubusercontent.com/1685245/214305984-e9bad039-d92d-4d24-af18-764f627ed0ed.png)


#### v. Doğrulama Türleri

Başvuru sırasında desteklenen doğrulama türlerinden hangilerinin kullanılabileceğini belirtmek için ayar dosyasına `Array` türünde `verificationTypes` değeri eklenir.

![image](https://user-images.githubusercontent.com/1685245/214306138-de6f1131-538e-4969-9963-31907f35855a.png)

Doğrulama türü olarak çipli kimlik kartı kullanılacak ise `verificationTypes` listesine `String` türünde `IdCard` değeri eklenir.

![image](https://user-images.githubusercontent.com/1685245/214306228-c8ec911c-2372-488a-a6b3-08fc00264de2.png)

> **Note**<br>
> Şu an için kullanılabilen tek doğrulama türü çipli kimlik kartı olduğundan ayar dosyanıza bu ayarı eklemeniz gerekmez.

