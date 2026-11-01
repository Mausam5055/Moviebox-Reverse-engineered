.class public final Lcom/transsion/ad/strategy/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/strategy/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/strategy/b;

.field private static final b:Ljava/util/List;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/strategy/b;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/b;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    const-string v0, "{\n            \"adSource\": \"ps_candidate\",\n            \"buttonText\": \"Go\",\n            \"categoryCode\": \"1896ff1657b2408daeb264ba6d370bf2\",\n            \"categoryName\": \"Finance\",\n            \"detail\": {\n                \"downloadCount\": \"27073080\",\n                \"iconUrl\": \"https://cdn2.palmplaystore.com/static/59/42d6df6edbe84bdd926fab309aa48261-V02222_512~512.webp?blurhash=LVRpFBkB%5E%23j%5BbHjaoLfQ%7ESa%7C9Jjt\",\n                \"img0\": \"https://cdn2.palmplaystore.com/static/889/0a4a8ed888f04551bcef55e4d31187ff-V02222_288~512.webp?blurhash=LWC%5D6r0f%2BYRO*JkWXos.5q%3FGNGXn\",\n                \"img1\": \"https://cdn2.palmplaystore.com/static/881/b88eab70ee8e445a836225f7fd7c7180-V02222_288~512.webp?blurhash=LqHM4j%7EpXnRj4oI%5Bxtx%5DNeM%7BShae\",\n                \"img2\": \"https://cdn2.palmplaystore.com/static/791/41db2f5cea9549f584c0bae3a7b1b1c9-V02222_288~512.webp?blurhash=LQFj%24.WU4mS7*woHMcRll.tQR%3BR-\",\n                \"img3\": \"https://cdn2.palmplaystore.com/static/181/e99237f24ede40f4a9fd56a08a1c30a5-V02222_288~512.webp?blurhash=LE9ums%7D5Uu9b4p9IPBxZm%25kryDvd\",\n                \"img4\": \"https://cdn2.palmplaystore.com/static/574/2bddbb51c7874e7a906ceb55a75b9124-V02222_288~512.webp?blurhash=LVGTa6n301RP3ERP_3n%23PXo%7DxBW%3D\",\n                \"isOffer\": 1,\n                \"itemID\": \"s_b7801ad36c0a0e4c7fc1f1e72bb04b2d\",\n                \"lan\": \"EN\",\n                \"name\": \"Moniepoint Personal Banking\",\n                \"packageName\": \"com.moniepoint.personal\",\n                \"safeTagList\": [\n                    {\n                        \"icon\": \"https://cdn2.palmplaystore.com/static/673/fa007ff1d5c14939b7d52a5d87247b5f.webp\",\n                        \"id\": 100033,\n                        \"isDeleted\": 0,\n                        \"name\": \"Free\",\n                        \"priority\": 90,\n                        \"type\": 4\n                    }\n                ],\n                \"safetyStyle\": 1,\n                \"score\": \"4.0\",\n                \"screenshotMode\": [\n                    0,\n                    0,\n                    0,\n                    0,\n                    0\n                ],\n                \"simpleDescription\": \"Send money & airtime, request a debit card & manage your savings from one place\",\n                \"sourceSize\": \"71526348\",\n                \"star\": \"4\",\n                \"tagList\": [],\n                \"versionCode\": \"2068\"\n            },\n            \"downloadCount\": 27061226,\n            \"exists\": null,\n            \"gpLink\": \"https://play.google.com/store/apps/details?id=com.moniepoint.personal&hl=en\",\n            \"iconUrl\": \"https://cdn2.palmplaystore.com/static/59/42d6df6edbe84bdd926fab309aa48261-V02222_512~512.webp?blurhash=LVRpFBkB%5E%23j%5BbHjaoLfQ%7ESa%7C9Jjt\",\n            \"id\": 580,\n            \"isOffer\": 1,\n            \"itemID\": \"s_b7801ad36c0a0e4c7fc1f1e72bb04b2d\",\n            \"name\": null,\n            \"offerDesc\": \"\",\n            \"packageName\": \"com.moniepoint.personal\",\n            \"planName\": \"Moniepoint\u4e0a\u7ebf\u6d4b\u8bd520250313-MB\u4fe1\u606f\u6d41\u7ad6\u5c4f\",\n            \"showContent\": \"https://cdn2.palmplaystore.com/static/403/f2d43eb546cb4cd9ad61fe9adec150d4.webp?blurhash=LXE%7B%5EdOtxrR401rpIVtl%7EUtRkCaK\",\n            \"showType\": 9,\n            \"simpleDescription\": \"Send money & airtime, request a debit card & manage your savings from one place\",\n            \"size\": 71526348,\n            \"star\": \"4.0\",\n            \"verifyGoogle\": \"F\",\n            \"versionCode\": 2068,\n            \"versionName\": \"1.23.0\"\n        }"

    sput-object v0, Lcom/transsion/ad/strategy/b;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    return-void
.end method

.method private final d()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/strategy/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 4

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->h(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLink()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-class v1, Lcom/transsion/ad/ps/model/RecommendInfo;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/ps/model/RecommendInfo;

    sget-object v1, Lqi/b;->a:Lqi/b;

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2, p1}, Lqi/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final f(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 7

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDeeplink()Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->j(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDeepLink()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v1

    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v3, v2

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAdType()Ljava/lang/Integer;

    move-result-object v1

    :cond_7
    sget-object v4, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_RETENTION_1:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    move-result v4

    const/4 v5, 0x1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_c

    invoke-virtual {p0, v3}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lqi/b;->a:Lqi/b;

    invoke-virtual {v1}, Lqi/b;->n()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v0, v5, v2, p1}, Lqi/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    sget-object v0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    sget-object v1, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    goto :goto_6

    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    goto :goto_4

    :cond_b
    sget-object v0, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    :goto_4
    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    goto :goto_6

    :cond_c
    :goto_5
    sget-object v3, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->PS_AD_TYPE_USER_ACQUISITION_0:Lcom/transsion/ad/ps/model/PSAdTypeEnum;

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/PSAdTypeEnum;->getValue()I

    move-result v3

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_10

    sget-object v1, Lqi/b;->a:Lqi/b;

    invoke-virtual {v1}, Lqi/b;->n()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v0, v5, v2, p1}, Lqi/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    goto :goto_6

    :cond_e
    invoke-virtual {p0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    sget-object v1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    sget-object v2, Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;->GP_CLICK:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    invoke-virtual {v1, p1, v2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)V

    sget-object p1, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    invoke-virtual {v0}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "PS_GP\u6ca1\u6709\u83b7\u53d6\u5230\u5305\u540d"

    :cond_f
    invoke-virtual {p1, v0}, Lcom/transsion/ad/ps/installed/AppInstallManager;->a(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setSource(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    :cond_10
    :goto_6
    return v5
.end method

.method private final h(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;)V
    .locals 10

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v3, "getApp(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnh/m;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/AdUrlParameterManager;->a:Lcom/transsion/ad/strategy/AdUrlParameterManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/strategy/AdUrlParameterManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    const-string v1, ""

    if-nez p1, :cond_3

    move-object v3, v1

    goto :goto_0

    :cond_3
    move-object v3, p1

    :goto_0
    invoke-virtual {v0, v3, p4}, Lcom/transsion/ad/strategy/AdUrlParameterManager;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Loi/a;->a:Loi/a;

    if-nez p4, :cond_4

    move-object v4, v1

    goto :goto_1

    :cond_4
    move-object v4, p4

    :goto_1
    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkOpenByCct()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> jumpH5() --> h5LinkOpenByCCT = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --> newUrl = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    const/4 v1, 0x1

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getH5LinkOpenByCct()Z

    move-result p3

    if-ne p3, v1, :cond_7

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/transsion/ad/strategy/b;->l(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object p1, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {p1}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/transsion/ad/MBAd$a;->i()Z

    move-result p3

    if-ne p3, v1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/ad/MBAd;->c()Lcom/transsion/ad/MBAd$a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/MBAd$a;->e()Lhi/a;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-interface {p1, v0, p2}, Lhi/a;->a(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;)V

    goto :goto_2

    :cond_8
    sget-object p1, Lcom/transsion/ad/web/AdWebActivity;->a:Lcom/transsion/ad/web/AdWebActivity$a;

    invoke-virtual {p1, v0, p2, p4}, Lcom/transsion/ad/web/AdWebActivity$a;->a(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void

    :cond_a
    :goto_3
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_b

    sget p2, Lcom/transsion/ad/R$string;->ad_no_network:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_b
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic i(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const-string p4, ""

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ad/strategy/b;->h(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;)V

    return-void
.end method

.method private final n(Lcom/transsion/ad/monopoly/model/AdPlans;)Z
    .locals 4

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->h(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    const-class v1, Lcom/transsion/ad/ps/model/RecommendInfo;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/ps/model/RecommendInfo;

    sget-object v1, Lqi/b;->a:Lqi/b;

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2, p1}, Lqi/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_4
    :goto_1
    return v1

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 7

    sget-object v0, Loi/a;->a:Loi/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdClickManager --> adClick() --> deeplink = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> h5Url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-direct {p0, p3}, Lcom/transsion/ad/strategy/b;->n(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v2, p3}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->j(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, p3}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->l(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lcom/transsion/ad/strategy/b;->i(Lcom/transsion/ad/strategy/b;Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4

    :cond_3
    :goto_1
    sget-object p1, Lqi/b;->a:Lqi/b;

    invoke-virtual {p1}, Lqi/b;->n()Z

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_4

    if-eqz v1, :cond_4

    const/4 p2, 0x0

    const/4 v3, 0x2

    const-string v4, "play.google.com"

    invoke-static {v1, v4, p2, v3, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-ne p2, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    goto :goto_4

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdMaterialList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/ad/monopoly/model/AdMaterialList;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getPsRecommendInfo()Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, v0

    :goto_2
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getExtAdSlot()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v0

    :cond_7
    invoke-virtual {p1, p2, v2, v1, v0}, Lqi/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    :cond_8
    :goto_4
    return-void
.end method

.method public final c(Lcom/transsion/ad/strategy/b$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Loi/a;->a:Loi/a;

    sget-object p1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    invoke-direct {p1}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> jumpDeeplink() --> e = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xd

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/a;->g(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final j(Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "logTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sceneId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, " --> onBiddingAdClick() --> sceneId = "

    if-nez p1, :cond_0

    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> adPlan == null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v2, p3

    invoke-static/range {v1 .. v7}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v1, p1}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> adMaterial == null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v3, p3

    invoke-static/range {v2 .. v8}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/ad/strategy/b;->k(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> name = "

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> adSource = "

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> deeplink = "

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> h5Url = "

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p3

    invoke-static/range {v4 .. v10}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/strategy/b;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/ad/strategy/b;->f(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result p4

    if-eqz p4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-direct {p0, v1, p2, p1, p3}, Lcom/transsion/ad/strategy/b;->h(Ljava/lang/String;Lcom/transsion/ad/strategy/AdOverridePendingTransitionManager$AdOverridePendingTransitionEnum;Lcom/transsion/ad/monopoly/model/AdPlans;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final k(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 2

    sget-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/strategy/b$a;

    invoke-interface {v1, p1}, Lcom/transsion/ad/strategy/b$a;->onAdClick(Lcom/transsion/ad/monopoly/model/AdPlans;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 8

    const-string v0, "h5Url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> openH5InCustomTab() --> h5Url = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->e(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/transsion/ad/web/cct/CustomTabsHelper;->a:Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;

    new-instance v2, Landroidx/browser/customtabs/d$b;

    invoke-direct {v2}, Landroidx/browser/customtabs/d$b;-><init>()V

    invoke-virtual {v2}, Landroidx/browser/customtabs/d$b;->a()Landroidx/browser/customtabs/d;

    move-result-object v2

    const-string v3, "build(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lxi/b;

    invoke-direct {v4}, Lxi/b;-><init>()V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;->f(Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion;Landroid/app/Activity;Landroidx/browser/customtabs/d;Landroid/net/Uri;Lxi/a;Lcom/transsion/ad/web/cct/CustomTabsHelper$Companion$Mode;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_4

    :cond_2
    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Loi/a;->a:Loi/a;

    sget-object v0, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/b;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> openH5InCustomTab() --> it = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->e(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_3
    :goto_4
    return-void
.end method

.method public final m(Lcom/transsion/ad/strategy/b$a;)V
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/b;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
