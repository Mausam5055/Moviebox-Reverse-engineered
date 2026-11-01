.class public final Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;
.super Lcom/transsion/ad/bidding/base/x;


# instance fields
.field private d:Z

.field private e:Lcom/hisavana/mediation/ad/TNativeAd;

.field private f:Ldi/a;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/x;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;)Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    return-object p0
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TNativeAd;->destroy()V

    :cond_0
    iput-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager$enterScene$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager$enterScene$1;-><init>(Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final d()Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    return-object v0
.end method

.method public final e()V
    .locals 10

    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-virtual {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->i()Z

    move-result v0

    const/16 v1, 0x67

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "\u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/ad/scene/a;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    if-eqz v0, :cond_3

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "\u5f53\u524d\u573a\u666f\u914d\u7f6e\u4e0d\u5b58\u5728"

    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->d:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->d:Z

    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    if-nez v1, :cond_6

    new-instance v1, Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/hisavana/mediation/ad/TNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    new-instance v2, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    invoke-direct {v2}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    invoke-virtual {v2, p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lce/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> loadAd() --> ==================== mPlacementId = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> create TNativeAd() =================== "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "ad_ic"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lce/b;->loadAd()V

    :cond_7
    return-void
.end method

.method public final f(Ldi/a;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->g:Ljava/lang/String;

    return-void
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->g:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->e:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ldi/a;->q(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingHiSavanaIconAdManager;->f:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method
