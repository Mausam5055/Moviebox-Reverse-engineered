.class public final Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->S0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    check-cast v2, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    if-eqz v2, :cond_7

    sget-object v4, Lri/c;->a:Lri/c;

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->U0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_3

    :cond_4
    move-object v7, v3

    :goto_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_5
    move-object v9, v3

    :goto_4
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->a0()I

    move-result v10

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v13

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v14

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->T0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object/from16 v17, v3

    const/16 v18, 0x80

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v19}, Lri/c;->b(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->l(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_7
    return-void
.end method

.method public onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->S0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    invoke-virtual {v4}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getSspNativeInfo()Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getUuid()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    check-cast v2, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    if-eqz v2, :cond_7

    sget-object v4, Lri/c;->a:Lri/c;

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->U0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_3

    :cond_4
    move-object v7, v3

    :goto_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_5
    move-object v9, v3

    :goto_4
    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->a0()I

    move-result v10

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->a:Lcom/transsion/ad/monopoly/plan/AdPlanUtil;

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/transsion/ad/monopoly/plan/AdPlanUtil;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/ps/model/RecommendInfo;

    move-result-object v13

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getEcpm()Ljava/lang/Double;

    move-result-object v14

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;->T0(Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v3

    :cond_6
    move-object/from16 v17, v3

    const/16 v18, 0x80

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-static/range {v4 .. v19}, Lri/c;->h(Lri/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;IZLjava/util/Map;Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager$a;->b:Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;

    invoke-virtual {v1, v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->n(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    :cond_7
    return-void
.end method
