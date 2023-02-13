//
//  Fixture.swift
//  ChouxKream
//
//  Created by stat on 2023/02/12.
//

import Foundation

struct Fixture {
    static var randomTransparentShoeImage: String {
        [
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/4b8f9b0d-de6b-4f3e-8c56-a168183991f9/Frame_7.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230212%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230212T144510Z&X-Amz-Expires=86400&X-Amz-Signature=bed2c4f7bf0586e6bb07f6400a2e8545bea030b9859225717d9214160beba89e&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25207.png%22&x-id=GetObject",
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/a37a82a2-9349-4fb5-9857-7c9c2b405e87/Frame_12.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230212%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230212T144517Z&X-Amz-Expires=86400&X-Amz-Signature=8fd34f4afb6adb9fb4c1c6a0c9533c41682d72375cd517ee3fb7e6de77084f9f&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%252012.png%22&x-id=GetObject",
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/17c03a62-b214-4686-b2c4-40ee02d28840/Frame_11.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230212%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230212T144521Z&X-Amz-Expires=86400&X-Amz-Signature=4d5c5b6928f69f9fc9ced0138ed7927eff6a7078234190daedca021f8258927d&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%252011.png%22&x-id=GetObject",
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/e3376f4e-39d3-4a80-9053-8a6138199409/Frame_10.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230212%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230212T144526Z&X-Amz-Expires=86400&X-Amz-Signature=d89ba56a6069f6d647a623f8ca358875f3bf4a865d0ed5709fde3c034dcbeb62&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%252010.png%22&x-id=GetObject",
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/b2741a9b-43cf-444c-963e-e7dea5a36e71/Frame_9.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230212%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230212T144530Z&X-Amz-Expires=86400&X-Amz-Signature=58baa597d457c27a3eaff8c4068539bc20c7c2d553598b1ede2ab993c77dfaad&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25209.png%22&x-id=GetObject",
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/9acd6951-7421-40a2-89f1-ab2a7f5737fd/Frame_8.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230212%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230212T144534Z&X-Amz-Expires=86400&X-Amz-Signature=fbd5d3433b29ec2416b1567dd1984423108bf7b4a2f76996d9522a3032a5db4d&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22Frame%25208.png%22&x-id=GetObject"
        ].randomElement()!
    }
    
    static var randomBrandName: String {
        [
            "Nike", "Asics", "Jordan", "Adidas", "patagonia", "Salomon", "COS"
        ].randomElement()!
    }
    
    static var randomProductName: String {
        [
            "Nike X Stussy Air Penny ll Rattan and Limestone",
            "Jordan 4 Retro SE Craft",
            "Asics Gel-Venture 6 Feather Grey Black",
            "Nike Zoom Vomero 5 Wheat Grass and Cacao Wow",
            "Nike Dunk Low Retro Black"
        ].randomElement()!
    }
    
    static var randomPrice: Int {
        [
            181000, 143000, 107000, 279000, 279000, 273000
        ].randomElement()!
    }
    
    static var randomArchitectureImage: String {
        [
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f2a05701-8091-491a-9153-f10098372252/pierre-chatel-innocenti-YDarsL40neU-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T140722Z&X-Amz-Expires=86400&X-Amz-Signature=0a7d1ff5c192f52d88ef7cdf1359db9e4b8b497cbf7dee08fcdc35c74d050b9f&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22pierre-chatel-innocenti-YDarsL40neU-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/911edb99-0644-49e8-8b04-5103e81e522e/thanos-pal-g_DTWgRypfE-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T140733Z&X-Amz-Expires=86400&X-Amz-Signature=91b143c1b79f677fff2ba8567ed337bf8bb3dfd42c961746c32fc4bb5c20b3f7&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22thanos-pal-g_DTWgRypfE-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/fe972017-31fc-405b-aec6-f3ad594d71c5/iltun-huseynli-OH7GkUqiuZk-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T140737Z&X-Amz-Expires=86400&X-Amz-Signature=c536391a6b1bd98141579be237c52a1abb0485adf64364ac4d999c964c290680&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22iltun-huseynli-OH7GkUqiuZk-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ee36588d-20e6-4770-a0f6-56a4323da741/luke-van-zyl-koH7IVuwRLw-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T140740Z&X-Amz-Expires=86400&X-Amz-Signature=fead33a4e13bc3c52fac7ae0b0e313b89d2bd4747ec5134b564452898f3e30d9&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22luke-van-zyl-koH7IVuwRLw-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/86da6d63-4c39-4021-947a-8d7297f93224/julien-moreau-688Fna1pwOQ-unsplash-2.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T140745Z&X-Amz-Expires=86400&X-Amz-Signature=3fad0432864a6ca5bc323a9ad1f951e54b89a4c54852fff6e4b4c886df148d34&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22julien-moreau-688Fna1pwOQ-unsplash-2.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/c8812807-d70c-46a7-89f1-792d935c8ce8/kimon-maritz-mQiZnKwGXW0-unsplash-2.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T140749Z&X-Amz-Expires=86400&X-Amz-Signature=3f1a6b03a43254ef8cbf2f966851df76096893a71a897ae53f167d361c1b5702&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22kimon-maritz-mQiZnKwGXW0-unsplash-2.jpg%22&x-id=GetObject"
        ].randomElement()!
    }
    
    static var randomUserImage: String {
        [
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/2967acd0-c2f9-4972-a186-982fe06aa40f/etty-fidele-nWdhpUrXxYY-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T150318Z&X-Amz-Expires=86400&X-Amz-Signature=48d42f01e60b148ca561f08433b887fd37199c9534fba9cc5fe8a14879df7e75&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22etty-fidele-nWdhpUrXxYY-unsplash.jpg%22&x-id=GetObject",
            
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/5777b33c-c827-4f05-bdad-86cb6cb1cc0f/raj-rana-15Vb4B_ma_s-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T150321Z&X-Amz-Expires=86400&X-Amz-Signature=228cc4edf12cd5232e77733596f679e46823bbb0dade0f67a77fd60cbc64a400&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22raj-rana-15Vb4B_ma_s-unsplash.jpg%22&x-id=GetObject",
            
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/7204655a-41c6-40df-88bc-02e5b88448b5/tim-gouw-1K9T5YiZ2WU-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T150325Z&X-Amz-Expires=86400&X-Amz-Signature=850b92467b03c1d0691eb70b5c0ab41d1f9893c802e512f42ed465b3a1ee0dc7&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22tim-gouw-1K9T5YiZ2WU-unsplash.jpg%22&x-id=GetObject",
            
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/ee9125cb-bc61-4812-aa00-af8ff101f24c/brian-mcgowan-LObpG0ku8VM-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T150328Z&X-Amz-Expires=86400&X-Amz-Signature=e34ac6d347e2d15879c85817ff77eaa93ce1f5850e5c6e7033a1fe6529b1cd13&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22brian-mcgowan-LObpG0ku8VM-unsplash.jpg%22&x-id=GetObject",
            
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/e96c9ed0-1a49-4649-a426-8644d621d471/moises-alex-LkZRTThjBHA-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T150331Z&X-Amz-Expires=86400&X-Amz-Signature=acd21cee1564ff4379a38e5996657c4a1451d51022b08e3e01d23e1e0679e632&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22moises-alex-LkZRTThjBHA-unsplash.jpg%22&x-id=GetObject",
            
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/36083b32-ce0c-454f-9dcb-6ac495a60af6/joe-ciciarelli-BVNmFNShq6U-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T150343Z&X-Amz-Expires=86400&X-Amz-Signature=40ab80e1d0356864ea0754af11fd25ac72235090bfb98128bf10f7666604bb82&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22joe-ciciarelli-BVNmFNShq6U-unsplash.jpg%22&x-id=GetObject",
            
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d89d4ef0-697e-47de-a4fb-7e4cb34de62b/alex-kotliarskyi-ourQHRTE2IM-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T150339Z&X-Amz-Expires=86400&X-Amz-Signature=97e1ffb8d2e2895ed15b06a0656b02d01100da384543fc3052be0fec1c479d50&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22alex-kotliarskyi-ourQHRTE2IM-unsplash.jpg%22&x-id=GetObject"
        ].randomElement()!
    }
    
    static var randomUsername: String {
        [
            "@ohhsung__", "@_j__soon_", "@_beengrea5", "@fa.ispa", "@stat.ios", "@tani_ssi", "@choux_kream"
        ].randomElement()!
    }
    
    static var randomStyleImage: String {
        [
            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/18b70ce1-78f0-414f-b140-d847b56921b8/darran-shen-o9qw2WHKKFs-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T151041Z&X-Amz-Expires=86400&X-Amz-Signature=d0d49405f8d838bb8514c76114e51f4ea4c0325fa90558a2a692df0aecf61759&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22darran-shen-o9qw2WHKKFs-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/8d48cf61-ff51-47ba-a703-abe4599f615c/laura-chouette-KCBy2qFWBF0-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T151045Z&X-Amz-Expires=86400&X-Amz-Signature=ba9593de343fc1fe7fc8142088b49c914371120f8ea2a9767ecd729a7caf6b13&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22laura-chouette-KCBy2qFWBF0-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/e2446432-1e7b-427c-90e7-fd06adbe0e92/sonnie-hiles-yIej4tFKYJA-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T151047Z&X-Amz-Expires=86400&X-Amz-Signature=cd5cc7f99ce3681ede1923eb02b23c9527c95ce909b2500507075ec1e5750f5f&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22sonnie-hiles-yIej4tFKYJA-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/1ac13ba8-9428-4e3c-a7ce-0ac4f1899675/rodgers-otieno-DwTO1h0D4b4-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T151048Z&X-Amz-Expires=86400&X-Amz-Signature=277a374f6454f5c0ff0b6de18f967c4593f0470a1228cd56ee12484495e26a00&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22rodgers-otieno-DwTO1h0D4b4-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/53b4bc01-6c16-466d-9dca-c7a86f531967/refargotohp-mgmYIyYy5Lo-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T151052Z&X-Amz-Expires=86400&X-Amz-Signature=2a0ffdf25d5e2ea78abfdfcf1c8c35cf607e6b8742d65ddbcdb76c8f8896dfa8&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22refargotohp-mgmYIyYy5Lo-unsplash.jpg%22&x-id=GetObject",

            "https://s3.us-west-2.amazonaws.com/secure.notion-static.com/643ce886-7599-417c-90a9-792b30ba4e25/dom-hill-nimElTcTNyY-unsplash.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20230213%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20230213T151055Z&X-Amz-Expires=86400&X-Amz-Signature=67b84721e96e7967f201873e0eaf8d52098708491aa4212b05cd77b9193c0da7&X-Amz-SignedHeaders=host&response-content-disposition=filename%3D%22dom-hill-nimElTcTNyY-unsplash.jpg%22&x-id=GetObject"
        ].randomElement()!
    }
    
}
