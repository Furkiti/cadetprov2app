# THY Cadet Pro - Flutter Mobile Application

THY Cadet Pro, havacılık sektöründe cadet programlarına hazırlanan adaylar için geliştirilmiş kapsamlı bir mobil eğitim uygulamasıdır. THY, Pegasus, SunExpress ve diğer havayollarının cadet programlarına yönelik eğitim içerikleri, psikometrik testler ve AI destekli öğrenme deneyimi sunar.

## 🚀 Özellikler

### 📚 Eğitim Modülleri
- **THY Cadet Programı**: Online İngilizce Sınavı, Psikometrik Testler, Yetkinlik Değerlendirmesi
- **Pegasus Cadet Programı**: Kapsamlı pilot adaylığı eğitimi
- **SunExpress Cadet Programı**: Özel eğitim modülleri
- **Çoklu Havayolu Desteği**: Farklı havayollarının programları

### 🧠 Psikometrik Testler
- **Sürdürülebilir Dikkat Testi**: Uzun süreli konsantrasyon ölçümü
- **Görsel-İşitsel Bellek**: Bellek kapasitesi değerlendirmesi
- **3D Uzamsal Algı**: Uzamsal düşünme becerileri
- **Psikomotor Koordinasyon**: El-göz koordinasyonu testleri
- **Mantık ve Akıl Yürütme**: Analitik düşünme becerileri
- **Hızlı Karar Verme**: Stres altında karar verme

### 🤖 AI Entegrasyonu (Gelecek)
- **Chatbot Asistan**: Kişiselleştirilmiş rehberlik
- **Video Simülasyonları**: AI destekli video içerik
- **Akıllı Geri Bildirim**: Performans analizi ve öneriler

### 🎨 Kullanıcı Deneyimi
- **Modern UI/UX**: THY kurumsal renkleri ve tasarım dili
- **Responsive Tasarım**: Tüm cihazlarda optimal deneyim
- **Dark Mode**: Göz yorgunluğunu azaltan karanlık tema
- **Türkçe Arayüz**: Tam yerelleştirilmiş içerik

## 🏗️ Teknik Mimari

### Framework & Teknolojiler
- **Flutter**: Cross-platform mobil geliştirme
- **Dart**: Null safety ile güvenli programlama
- **Riverpod**: State management
- **Go Router**: Navigation yönetimi
- **Firebase**: Backend servisleri (Auth, Firestore, Storage)

### Mimari Prensipler
- **Clean Architecture**: Katmanlı mimari yapısı
- **SOLID Principles**: Sürdürülebilir kod yapısı
- **Feature-Based Structure**: Özellik odaklı klasör yapısı
- **Repository Pattern**: Veri erişim katmanı

### Klasör Yapısı
```
lib/
├── core/
│   ├── constants/     # Uygulama sabitleri
│   ├── theme/         # Tema ve stil tanımları
│   ├── models/        # Veri modelleri
│   └── helpers/       # Yardımcı fonksiyonlar
├── features/
│   ├── auth/          # Kimlik doğrulama
│   ├── courses/       # Kurs yönetimi
│   ├── games/         # Psikometrik testler
│   ├── profile/       # Kullanıcı profili
│   └── results/       # Test sonuçları
├── shared/
│   ├── widgets/       # Paylaşılan widget'lar
│   ├── components/    # UI bileşenleri
│   └── extensions/    # Dart extension'ları
└── services/          # Harici servis entegrasyonları
```

## 🛠️ Kurulum

### Gereksinimler
- Flutter SDK (3.2.3+)
- Dart SDK (3.0.0+)
- Android Studio / VS Code
- Android SDK / Xcode (iOS için)

### Kurulum Adımları

1. **Projeyi Klonlayın**
```bash
git clone https://github.com/your-username/thy-cadet-app.git
cd thy-cadet-app
```

2. **Bağımlılıkları Yükleyin**
```bash
flutter pub get
```

3. **Firebase Kurulumu** (Opsiyonel)
```bash
# Firebase CLI kurulumu
npm install -g firebase-tools

# Firebase projesini başlatın
firebase init
```

4. **Uygulamayı Çalıştırın**
```bash
flutter run
```

### Geliştirme Ortamı

1. **Code Generation**
```bash
# Model sınıfları için
flutter packages pub run build_runner build

# Sürekli izleme için
flutter packages pub run build_runner watch
```

2. **Linting**
```bash
flutter analyze
```

3. **Test Çalıştırma**
```bash
flutter test
```

## 📱 Ekranlar

### Ana Ekranlar
- **Splash Screen**: Uygulama başlangıç ekranı
- **Home Screen**: Kurs listesi ve filtreleme
- **Login/Signup**: Kullanıcı kimlik doğrulama
- **Course Detail**: Kurs detayları ve adımlar
- **Game Screen**: Psikometrik test arayüzü
- **Profile Screen**: Kullanıcı profili ve ayarlar

### Navigasyon
- **Go Router**: Declarative routing
- **Deep Linking**: URL tabanlı navigasyon
- **Route Guards**: Kimlik doğrulama kontrolü

## 🎮 Psikometrik Testler

### Test Türleri
1. **Sürdürülebilir Dikkat Testi**
   - Süre: 5 dakika
   - Hedef: Uzun süreli konsantrasyon
   - Ölçüm: Tepki süresi, doğruluk oranı

2. **Görsel-İşitsel Bellek**
   - Süre: 3 dakika
   - Hedef: Kısa süreli bellek
   - Ölçüm: Hatırlama oranı

3. **3D Uzamsal Algı**
   - Süre: 4 dakika
   - Hedef: Uzamsal düşünme
   - Ölçüm: Doğru çözüm oranı

4. **Psikomotor Koordinasyon**
   - Süre: 3 dakika
   - Hedef: El-göz koordinasyonu
   - Ölçüm: Hassasiyet ve hız

### Test Altyapısı
- **CustomPainter**: Canvas tabanlı oyun motoru
- **GameEngine**: Oyun durumu yönetimi
- **Timer**: Süre kontrolü
- **Scoring**: Puanlama algoritması

## 🔐 Güvenlik

### Kimlik Doğrulama
- **Firebase Auth**: Güvenli kullanıcı yönetimi
- **JWT Tokens**: Oturum yönetimi
- **Password Hashing**: Şifre güvenliği

### Veri Güvenliği
- **Encryption**: Hassas veri şifreleme
- **Secure Storage**: Güvenli yerel depolama
- **HTTPS**: Güvenli iletişim

## 📊 Performans

### Optimizasyon
- **Lazy Loading**: Görüntü ve içerik optimizasyonu
- **Caching**: Önbellek stratejileri
- **Memory Management**: Bellek kullanımı optimizasyonu

### Monitoring
- **Crashlytics**: Hata takibi
- **Analytics**: Kullanıcı davranış analizi
- **Performance Monitoring**: Performans metrikleri

## 🧪 Test Stratejisi

### Test Türleri
- **Unit Tests**: Fonksiyon seviyesi testler
- **Widget Tests**: UI bileşen testleri
- **Integration Tests**: End-to-end testler
- **Performance Tests**: Performans testleri

### Test Coverage
- Hedef: %80+ kod kapsama oranı
- Kritik iş mantığı: %100 kapsama
- UI bileşenleri: Widget testleri

## 🚀 Deployment

### Android
```bash
# Release build
flutter build apk --release

# App bundle
flutter build appbundle --release
```

### iOS
```bash
# Release build
flutter build ios --release

# Archive
flutter build ipa --release
```

### Firebase Hosting (Web)
```bash
flutter build web
firebase deploy
```

## 📈 Gelecek Planları

### Kısa Vadeli (1-3 ay)
- [ ] Firebase entegrasyonu
- [ ] Gerçek psikometrik test implementasyonu
- [ ] Kullanıcı profil yönetimi
- [ ] Test sonuçları analizi

### Orta Vadeli (3-6 ay)
- [ ] AI chatbot entegrasyonu
- [ ] Video içerik sistemi
- [ ] Çoklu dil desteği
- [ ] Offline mod desteği

### Uzun Vadeli (6+ ay)
- [ ] AR/VR simülasyonlar
- [ ] Sosyal öğrenme özellikleri
- [ ] Gamification sistemi
- [ ] Enterprise çözümler

## 🤝 Katkıda Bulunma

### Geliştirme Süreci
1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Değişikliklerinizi commit edin (`git commit -m 'Add amazing feature'`)
4. Branch'inizi push edin (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun

### Kod Standartları
- **Dart Style Guide**: Resmi Dart stil rehberi
- **Effective Dart**: Dart best practices
- **Flutter Lints**: Flutter linting kuralları

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakın.

## 📞 İletişim

- **Proje Sahibi**: [Adınız]
- **Email**: [email@example.com]
- **Website**: [https://cadetpro.com]

## 🙏 Teşekkürler

- Flutter ekibine harika framework için
- Firebase ekibine backend servisleri için
- THY, Pegasus, SunExpress'e cadet programları için
- Tüm katkıda bulunanlara

---

**THY Cadet Pro** - Havacılık kariyerinizi başlatın! ✈️
