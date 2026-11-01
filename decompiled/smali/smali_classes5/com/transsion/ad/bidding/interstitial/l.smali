.class public final Lcom/transsion/ad/bidding/interstitial/l;
.super Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/interstitial/l$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsion/ad/bidding/interstitial/l$a;

.field private static final k:Lkotlin/Lazy;


# instance fields
.field private i:Lcom/hisavana/mediation/ad/TInterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/interstitial/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/interstitial/l$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/interstitial/l;->j:Lcom/transsion/ad/bidding/interstitial/l$a;

    new-instance v0, Lcom/transsion/ad/bidding/interstitial/k;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/interstitial/k;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/bidding/interstitial/l;->k:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;-><init>()V

    return-void
.end method

.method public static synthetic u()Ljava/util/HashMap;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/interstitial/l;->w()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic v()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/ad/bidding/interstitial/l;->k:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final w()Ljava/util/HashMap;
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public e()Lce/b;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/bidding/interstitial/l;->i:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/mediation/ad/TInterstitialAd;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hisavana/mediation/ad/TInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/interstitial/l;->i:Lcom/hisavana/mediation/ad/TInterstitialAd;

    new-instance v1, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    invoke-direct {v1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    invoke-virtual {v1, p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lce/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/interstitial/l;->i:Lcom/hisavana/mediation/ad/TInterstitialAd;

    return-object v0
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_int"

    return-object v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/interstitial/l;->i:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/ad/bidding/interstitial/l;->i:Lcom/hisavana/mediation/ad/TInterstitialAd;

    return-void
.end method

.method public r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 2

    const-string p3, "topActivity"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "sceneId"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    invoke-virtual {p2, p4}, Lcom/transsion/ad/strategy/d;->d(Ljava/util/Map;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/ad/bidding/interstitial/l;->i:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lce/b;->setContainVulgarContent(Z)V

    :cond_0
    const/4 p2, -0x1

    :try_start_0
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object p3, p0, Lcom/transsion/ad/bidding/interstitial/l;->i:Lcom/hisavana/mediation/ad/TInterstitialAd;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Lcom/hisavana/mediation/ad/TInterstitialAd;->show(Landroid/app/Activity;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h()Ldi/a;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p3, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string p4, "tInterstitialAd == null"

    invoke-direct {p3, p2, p4}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance p4, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {p4}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {p1, p3, p4}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h()Ldi/a;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance p4, Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7a0b\u5e8f\u5316 show \u5f02\u5e38 it = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p2, p1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance p1, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {p1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {p3, p4, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_4
    :goto_3
    return-void
.end method
