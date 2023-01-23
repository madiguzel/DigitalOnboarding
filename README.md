# DigitalOnboardingPackage

DigitalOnboarding lets your users to become a customer of DB easily.

[![pod - 1.0.0](https://img.shields.io/badge/pod-1.0.0-blue)](https://cocoapods.org/) 
[![Swift Package Manager - compatible](https://img.shields.io/badge/Swift_Package_Manager-compatible-2ea44f)](https://cocoapods.org/)

## Gereksinimler

Bu framework’ü kullanabilmeniz için uygulamanızın minimum iOS 13.0 SDK versiyonunu desteklemesi gerekmektedir.

## Framework'ün Projeye Eklenmesi

Framework’ü projenize eklemek için aşağıdaki adımları uygulayabilirsiniz.

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
 5. Açılan Finder penceresinde oluşturduğunuz `Frameworks` dizinine gidin ve `DigitalOnboardingSDK.xcframework` dosyasını seçin ve Aç’a tıklayın. Framework’ün Link `Library With Libraries` bölümüne eklendiğinden emin olun.
    ![image](https://user-images.githubusercontent.com/1685245/213997448-c041cfe3-808b-49d2-b1e7-60e9679c59eb.png)
    ![image](https://user-images.githubusercontent.com/1685245/213997473-4876e1e0-947d-42bc-b0ed-c1f0c5a16023.png)
 6. `General` tabında `Frameworks, Libraries and Embedded Content` kısmında `DigitalOnboardingSDK.xcframework` satırının sağında `Don’t Embed` seçeneğini `Embed & Sign` olarak değiştirin.   
    ![image](https://user-images.githubusercontent.com/1685245/213997578-0628818c-2069-41e9-88f8-c6a986a70ba4.png)

## Proje Konfigürasyonu

Framework’ü projenize entegre ettikten sonra SDK’in düzgün şekilde çalışabilmesi için aşağıdaki konfigürasyonları uygulayın.






