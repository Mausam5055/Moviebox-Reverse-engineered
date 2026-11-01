.class public final Lcom/transsion/ad/bidding/banner/a;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;


# instance fields
.field private v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

.field private w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

.field private x:Lcom/hisavana/common/bean/AdditionalInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V

    return-void
.end method


# virtual methods
.method public S(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    const-string v2, "biddingPlan"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adPlans"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/transsion/ad/bidding/banner/a;->x:Lcom/hisavana/common/bean/AdditionalInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/transsion/ad/bidding/banner/a;->x:Lcom/hisavana/common/bean/AdditionalInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/hisavana/common/bean/AdditionalInfo;->getEcpm()Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4, v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v3

    iget-object v7, v0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v16, 0x66c

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x67

    move-object v2, v15

    move-object/from16 v4, p2

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v2 .. v16}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v18

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public final S0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;->showAd()V

    :cond_0
    return-void
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public V()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->b()V

    :cond_1
    iput-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    iput-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->x:Lcom/hisavana/common/bean/AdditionalInfo;

    return-void
.end method

.method public a0()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_b"

    return-object v0
.end method

.method public h0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getHiSavanaBannerProvider()Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f0()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v0, v3, v0}, Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Lcom/transsion/ad/bidding/banner/a;->w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    invoke-virtual {v2, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setEcpmObject(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setSceneId(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->setListener(Ldi/a;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v2, 0x6

    const-string v3, "getContext() is null"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/ad/bidding/banner/a;->w:Lcom/transsion/ad/bidding/banner/BiddingBuyOutBannerView;

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setBannerView(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->d()Landroid/view/View;

    move-result-object v0

    :cond_6
    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->setBannerView(Landroid/view/View;)V

    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->j(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->x:Lcom/hisavana/common/bean/AdditionalInfo;

    return-void
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x0(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    invoke-direct {p1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->k(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->f0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->j(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->l(Ldi/a;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->h()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/ad/bidding/banner/a;->v:Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
