.class public final Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;
.super Lcom/transsion/ad/bidding/base/AbsAdBidding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;
    }
.end annotation


# static fields
.field public static final A:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;


# instance fields
.field private v:Ljava/util/List;

.field private w:Ljava/util/Set;

.field private x:Ljava/util/Set;

.field private y:Z

.field private final z:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->A:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->v:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->w:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->x:Ljava/util/Set;

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    invoke-direct {v0, p0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->z:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    return-void
.end method

.method public static final synthetic S0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->v:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic T0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->o0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic U0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->p0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public S(Ljava/util/List;Lcom/transsion/ad/monopoly/model/AdPlans;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v15, p2

    const-string v2, "biddingPlan"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adPlans"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    move-result-object v2

    sget-object v3, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/ad/scene/a;->g(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_0

    iget-boolean v4, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->y:Z

    invoke-virtual {v2, v3, v4}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->i(IZ)Ljava/util/List;

    move-result-object v2

    :goto_0
    move-object/from16 v17, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    if-eqz v17, :cond_4

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0, v15}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->u0(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->setBidEcpmCent(Ljava/lang/Double;)V

    :cond_1
    sget-object v2, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/ad/strategy/d;->d(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isMatchVulgarBrand()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ad/monopoly/model/AdPlans;->getBidEcpmCent()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v16, 0x674

    const/16 v19, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x67

    move-object v2, v14

    move-object/from16 v4, p2

    move-object/from16 v21, v14

    move/from16 v14, v20

    move/from16 v15, v16

    move-object/from16 v16, v19

    invoke-direct/range {v2 .. v16}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;-><init>(Ljava/lang/Double;Lcom/transsion/ad/monopoly/model/AdPlans;Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/transsion/ad/bidding/banner/BiddingHiSavanaBannerProvider;Landroid/view/View;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v21

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v15, p2

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->v:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz v17, :cond_5

    check-cast v17, Ljava/util/Collection;

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->z:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    :cond_5
    return-void
.end method

.method public V()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->V()V

    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->z:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->r(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->w:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->destroy()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->w:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->x:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsBiddingBuyOutView;->destroy()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->x:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->v:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->destroy()V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final V0(Lcom/transsion/ad/view/native_ad/BiddingBuyOutNativeView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->x:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final W0(Lcom/cloud/hisavana/sdk/api/view/TNativeView;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->w:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final X0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->y:Z

    return-void
.end method

.method public a0()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public b0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->h(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x0(Ljava/lang/String;)V
    .locals 1

    sget-object p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;->b(Ljava/lang/String;)Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->n()V

    :cond_0
    return-void
.end method
