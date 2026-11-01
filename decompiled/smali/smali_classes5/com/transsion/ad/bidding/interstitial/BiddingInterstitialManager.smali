.class public final Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;
    }
.end annotation


# static fields
.field public static final w:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;


# instance fields
.field private final v:Lei/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->w:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V

    new-instance v0, Lei/a;

    invoke-direct {v0}, Lei/a;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->v:Lei/a;

    return-void
.end method


# virtual methods
.method public S(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    const-string v1, "biddingPlan"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adPlans"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/ad/bidding/interstitial/l;->j:Lcom/transsion/ad/bidding/interstitial/l$a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/interstitial/l$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/l;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d(Ljava/lang/String;)V

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    move-object/from16 v15, p0

    invoke-virtual {v15, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v16, 0x638

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x67

    move-object v1, v14

    move-object/from16 v3, p2

    move-object/from16 v18, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v10, 0x6

    const-string v11, "addHiSavanaProvider() --> \u63d2\u5c4f\u5e7f\u544a\u540c\u6b65\u83b7\u53d6\u5931\u8d25 --> additionalInfo == null"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v15}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a0()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_int"

    return-object v0
.end method

.method public h0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->v:Lei/a;

    return-object v0
.end method

.method public r0()Z
    .locals 2

    sget-object v0, Lcom/transsion/ad/bidding/interstitial/l;->j:Lcom/transsion/ad/bidding/interstitial/l$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/interstitial/l$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->j()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x0(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/transsion/ad/bidding/interstitial/l;->j:Lcom/transsion/ad/bidding/interstitial/l$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/interstitial/l$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/interstitial/l;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->p(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->b()V

    :cond_1
    return-void
.end method
