# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

College.create(name: "九州大学", address: "福岡県福岡市")

# Undergraduate.create(name: "工学部", major: "電気情報工学科")
# Undergraduate.create(name: "農学部")

# Major.create(name: "生物資源環境学科")

# Field.create(name: "農学分野")
# Field.create(name: "生物生産環境工学分野")
# Field.create(name: "生物生産システム工学分野")
# Field.create(name: "農政経済学分野")
# Field.create(name: "応用生命科学分野")
# Field.create(name: "食糧化学工学分野")
# Field.create(name: "森林機能制御学分野")
# Field.create(name: "森林機能開発学分野")
# Field.create(name: "生物材料機能学分野")
# Field.create(name: "水産化学分野")
# Field.create(name: "アニマルサイエンス分野")

Lab.create(name: "植物育種学", mail: "")
Lab.create(name: "作物学", mail: "")
Lab.create(name: "園芸学", mail: "")
Lab.create(name: "植物生産生理学", mail: "")
Lab.create(name: "植物病理学", mail: "")
Lab.create(name: "昆虫学", mail: "")
Lab.create(name: "昆虫ゲノム科学", mail: "")
Lab.create(name: "灌漑利水学", mail: "")
Lab.create(name: "土環境学", mail: "")
Lab.create(name: "土壌学", mail: "")
Lab.create(name: "気象環境学", mail: "")
Lab.create(name: "農業生産システム設計学", mail: "")
Lab.create(name: "農業食糧流通工学", mail: "")
Lab.create(name: "食料農業政策学", mail: "")
Lab.create(name: "農業経営学", mail: "")
Lab.create(name: "食料経済分析学", mail: "")
Lab.create(name: "食料流通学", mail: "")
Lab.create(name: "環境生命経済学", mail: "")
Lab.create(name: "植物栄養学", mail: "")
Lab.create(name: "土壌環境物学", mail: "")
Lab.create(name: "発酵化学", mail: "")
Lab.create(name: "生物化学", mail: "")
Lab.create(name: "蛋白質化学工学", mail: "")
Lab.create(name: "農業薬剤化学", mail: "")
Lab.create(name: "合成生物学", mail: "")
Lab.create(name: "生物物理化学", mail: "")
Lab.create(name: "遺伝子制御学", mail: "")
Lab.create(name: "バイオプロセスデザイン", mail: "")
Lab.create(name: "栄養科学", mail: "")
Lab.create(name: "食糧化学", mail: "")
Lab.create(name: "食品分析学", mail: "")
Lab.create(name: "食品衛生化学", mail: "")
Lab.create(name: "食品製造工学", mail: "")
Lab.create(name: "微生物工学", mail: "")
Lab.create(name: "細胞制御工学", mail: "")
Lab.create(name: "微生物工学", mail: "")
Lab.create(name: "微生物遺伝子資源学", mail: "")
Lab.create(name: "生物機能デザイン", mail: "")
Lab.create(name: "森林計画学", mail: "")
Lab.create(name: "森林保全学", mail: "")
Lab.create(name: "森林政策学", mail: "")
Lab.create(name: "造林額", mail: "")
Lab.create(name: "植物代謝制御額", mail: "")
Lab.create(name: "木質資源理学", mail: "")
Lab.create(name: "森林化学", mail: "")
Lab.create(name: "森林園環境資源科学", mail: "")
Lab.create(name: "木質材料工学", mail: "")
Lab.create(name: "生物資源化学", mail: "")
Lab.create(name: "高分子材料学", mail: "")
Lab.create(name: "バイオマテリアルデザイン", mail: "")
Lab.create(name: "海洋生物学", mail: "")
Lab.create(name: "水産増殖学", mail: "")
Lab.create(name: "水族生化学", mail: "")
Lab.create(name: "海洋資源化学", mail: "")
Lab.create(name: "水産生物環学", mail: "")
Lab.create(name: "アクアフィールド科学", mail: "")
Lab.create(name: "家畜生体機構額", mail: "")
Lab.create(name: "家畜繁殖生理学", mail: "")
Lab.create(name: "動物学", mail: "")
Lab.create(name: "畜産化学", mail: "")
Lab.create(name: "代謝・行動制御額", mail: "")


# Major.create(name: "電気情報工学科"）
# Major.create(name: "物質科学工学科"）
# Major.create(name: "地球環境工学科"）
# Major.create(name: "エネルギー科学科")
# Major.create(name: "機会航空工学科"）
# Major.create(name: "建築学科"）

# Field.create(name: "電気情報学")
# Field.create(name: "化学プロセス・生命工学コース")
# Field.create(name: "応用化学コース")
# Field.create(name: "材料科学工学コース")
# Field.create(name: "建設都市工学コース")
# Field.create(name: "船舶海洋システム工学コース")
# Field.create(name: "地球システム工学コース")
# Field.create(name: "エネルギー科学")
# Field.create(name: "機械工学コース")
# Field.create(name: "航空宇宙工学コース")
# Field.create(name: "建築学")






Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")

Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")

Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")

Lab.create(name: "福田研", mail: "ishibashi@f.ait.kyushu-u.ac.jp", teacher: 1, message: "来てください",theme: "組込み")
Person.create(lab_id: 1, name: "石橋", grade: "M1")


Lesson.create(college_id: 1, name: "計算機プログラミング演習Ⅰ")
Lesson.create(college_id: 1, name: "常微分方程式")
Lesson.create(college_id: 1, name: "応用確率論")
Lesson.create(college_id: 1, name: "電気情報工学科実験")
Lesson.create(college_id: 1, name: "回路理論Ⅲ")
Lesson.create(college_id: 1, name: "システム開発演習")
Lesson.create(college_id: 1, name: "電子物性")
Lesson.create(college_id: 1, name: "データ構造とアルゴリズムⅠ演習")
Lesson.create(college_id: 1, name: "信号とシステム")
Lesson.create(college_id: 1, name: "エネルギー基礎論")
Lesson.create(college_id: 1, name: "ディジタル電子回路")
Lesson.create(college_id: 1, name: "電磁気学Ⅰ")
Lesson.create(college_id: 1, name: "形式言語とオートマトン")
Lesson.create(college_id: 1, name: "コンピュータアーキテクチャ")
Lesson.create(college_id: 1, name: "制御工学Ⅰ")
Lesson.create(college_id: 1, name: "力学")
Lesson.create(college_id: 1, name: "オペレーティングシステム")
Lesson.create(college_id: 1, name: "電磁気学Ⅱ")
Lesson.create(college_id: 1, name: "電磁気工学Ⅱ")
Lesson.create(college_id: 1, name: "コンパイラ")
Lesson.create(college_id: 1, name: "超電導基礎論")
Lesson.create(college_id: 1, name: "データ解析と実験計画法")
Lesson.create(college_id: 1, name: "エネルギー変換機器工学")
Lesson.create(college_id: 1, name: "通信方式")
Lesson.create(college_id: 1, name: "プラズマ工学")
Lesson.create(college_id: 1, name: "コンピュータシステムⅡ")
Lesson.create(college_id: 1, name: "コンピュータシステム通論")
Lesson.create(college_id: 1, name: "情報ネットワーク")
Lesson.create(college_id: 1, name: "数理計画法")
Lesson.create(college_id: 1, name: "電子デバイスⅡ")
Lesson.create(college_id: 1, name: "電気電子工学設計")
Lesson.create(college_id: 1, name: "数理論理学")

Lesson.create(college_id: 1, name: "計測工学Ⅱ")
Lesson.create(college_id: 1, name: "通信ネットワーク")
Lesson.create(college_id: 1, name: "高電圧・パルスパワー工学")
Lesson.create(college_id: 1, name: "システムプログラミング演習")
Lesson.create(college_id: 1, name: "通信工学通論")
Lesson.create(college_id: 1, name: "アナログ電子回路Ⅱ")
Lesson.create(college_id: 1, name: "技術表現法")
Lesson.create(college_id: 1, name: "システム工学")
Lesson.create(college_id: 1, name: "人工知能")
Lesson.create(college_id: 1, name: "電気エネルギー工学通論")
Lesson.create(college_id: 1, name: "パワーエレクトロニクス")
Lesson.create(college_id: 1, name: "制御工学")
Lesson.create(college_id: 1, name: "形式言語とオートマトン")
Lesson.create(college_id: 1, name: "コンピュータアーキテクチャ")
Lesson.create(college_id: 1, name: "制御工学Ⅰ")
Lesson.create(college_id: 1, name: "集積回路工学")
Lesson.create(college_id: 1, name: "アルゴリズム論")

Company.create(name: "??")

LessonLab.create(lesson_id: 1, lab_id: 1)