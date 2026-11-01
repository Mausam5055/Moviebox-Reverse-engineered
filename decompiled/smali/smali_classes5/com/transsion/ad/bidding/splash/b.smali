.class public final Lcom/transsion/ad/bidding/splash/b;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;


# instance fields
.field private final v:Lei/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V

    new-instance v0, Lei/b;

    invoke-direct {v0}, Lei/b;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/splash/b;->v:Lei/b;

    return-void
.end method

.method public static synthetic S0(Lcom/transsion/ad/bidding/splash/b;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/splash/b;->T0(Lcom/transsion/ad/bidding/splash/b;)V

    return-void
.end method

.method private static final T0(Lcom/transsion/ad/bidding/splash/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

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

    sget-object v1, Lcom/transsion/ad/bidding/splash/a;->n:Lcom/transsion/ad/bidding/splash/a$a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/splash/a$a;->a(Ljava/lang/String;)Lcom/transsion/ad/bidding/splash/a;

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

    const-string v11, "addHiSavanaProvider() --> \u5f00\u5c4f\u5e7f\u544a\u540c\u6b65\u83b7\u53d6\u5931\u8d25 --> additionalInfo == null"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-static/range {v9 .. v15}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a0()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_s"

    return-object v0
.end method

.method public h0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/splash/b;->v:Lei/b;

    return-object v0
.end method

.method public m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->m(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k0()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lgi/e;

    invoke-direct {v0, p0}, Lgi/e;-><init>(Lcom/transsion/ad/bidding/splash/b;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x0(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/transsion/ad/bidding/splash/a;->n:Lcom/transsion/ad/bidding/splash/a$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/splash/a$a;->a(Ljava/lang/String;)Lcom/transsion/ad/bidding/splash/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->p(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->l()V

    :cond_1
    return-void
.end method
