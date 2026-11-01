.class public final Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;
    }
.end annotation


# static fields
.field public static final y:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;


# instance fields
.field private v:Ljava/util/Set;

.field private w:Ljava/util/Set;

.field private x:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->y:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->v:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->w:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->x:Ljava/util/List;

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

    sget-object v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->k()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v1

    :goto_0
    move-object v4, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/strategy/d;->d(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isMatchVulgarBrand()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v4}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    return-void

    :cond_2
    if-eqz v4, :cond_4

    move-object/from16 v15, p0

    invoke-virtual {v15, v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v16, 0x678

    const/16 v17, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

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

    :cond_4
    return-void
.end method

.method public final S0(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final T0(Lcom/hisavana/mediation/ad/TAdNativeView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final U0()Z
    .locals 2

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    return v0
.end method

.method public V()V
    .locals 2

    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->x(Ldi/a;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->x:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->w:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->v:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/mediation/ad/TAdNativeView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/hisavana/mediation/ad/TAdNativeView;->release()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->v:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-super {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    return-void
.end method

.method public final V0()Z
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n0()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public a0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ad_n"

    return-object v0
.end method

.method public h0()Lcom/transsion/ad/bidding/gemini/AbsBiddingBuyOutGemini;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Ljava/util/List;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->k(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->x:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public r0()Z
    .locals 2

    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->o()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x0(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->g(Ldi/a;)V

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "addHiSavanaLoad()"

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
