.class public final Lcom/cloud/hisavana/sdk/u3;
.super Lcom/cloud/hisavana/sdk/G;

# interfaces
.implements Lcom/cloud/hisavana/sdk/z3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/u3$b;
    }
.end annotation


# instance fields
.field private i:Lcom/cloud/hisavana/sdk/f;

.field private j:Lcom/cloud/hisavana/sdk/u3$b;

.field private final k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/G;-><init>(Lcom/cloud/hisavana/sdk/q3;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u3;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic F(Lcom/cloud/hisavana/sdk/u3;)Lcom/cloud/hisavana/sdk/f;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    return-object p0
.end method

.method private I(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method private J(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_BIDDING_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private K(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "current native did not showed..."

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u3;->j:Lcom/cloud/hisavana/sdk/u3$b;

    invoke-virtual {v0, p2, p1, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    return-void
.end method

.method private L(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "registerClickAndImpression"

    const-string v2, "ssp"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/cloud/hisavana/sdk/N0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "adItem is null"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getSecondPrice()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setSecondPrice(D)V

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/u3;->K(Landroid/view/View;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/f;->e(Landroid/view/View;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string p3, "Native Ad start registered"

    invoke-virtual {p2, v2, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-ne p3, p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic M(Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u3;->U(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method private N(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setPrice(Ljava/lang/Double;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setCodeSeatId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setAdCreativeId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setBiddingToken(Ljava/lang/String;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;->USD:Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;->setCurrency(Lcom/cloud/hisavana/sdk/common/constant/Constants$CURRENCY;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/G;->d:Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    invoke-virtual {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->w(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    return-void
.end method

.method private O(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    const-string p3, "s_rec_temp_data"

    invoke-virtual {p2, p3, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/u3;->J(Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/u3;->N(Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    :cond_1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setNativeBridge(Lcom/cloud/hisavana/sdk/z3;)V

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/u3;->I(I)V

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setUseRecommend(Z)V

    invoke-virtual {v0, p3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setRecommendInfos(Ljava/util/List;)V

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p3

    const-string v0, "TranNative"

    const-string v1, "use recommendInfo"

    invoke-virtual {p3, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "s_recommend_req"

    invoke-virtual {p2, p3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->r(Lcom/cloud/hisavana/sdk/G;Ljava/util/List;Landroid/os/Bundle;)V

    :cond_7
    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/k1;->n(I)V

    return-void
.end method

.method private P(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 6

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "TranNative"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p3

    const-string p4, "materialStyle is not empty not use recommend"

    invoke-virtual {p3, v0, p4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/u3;->T(Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    :cond_1
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object p4

    :try_start_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCommonConfigData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getShowWebLetterAdPrice()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_2
    const/16 v1, 0xa

    :goto_0
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    int-to-double v4, v1

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "high price ,not use recommend -> firstPrice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ",showWebLetterAdPrice -> "

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, v0, p4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/u3;->T(Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;-><init>()V

    :try_start_1
    invoke-virtual {v1, p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p4

    const-string v2, "adsdto is empty,creat a new adsdto data"

    invoke-virtual {p4, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "s_rec_temp_data"

    const/4 v0, 0x1

    invoke-virtual {p2, p4, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/u3;->O(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/u3;->T(Ljava/util/List;Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method static synthetic S(Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u3;->X(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method private T(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/u3;->N(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->G(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setNativeBridge(Lcom/cloud/hisavana/sdk/z3;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/u3;->I(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->r(Lcom/cloud/hisavana/sdk/G;Ljava/util/List;Landroid/os/Bundle;)V

    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/k1;->n(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private U(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private X(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/f;->k(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_0
    return-void
.end method

.method private Y()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/f;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/f;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/u3;->U(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a0()V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/f;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/f;-><init>(Lcom/cloud/hisavana/sdk/u3;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    new-instance v0, Lcom/cloud/hisavana/sdk/u3$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/u3$b;-><init>(Lcom/cloud/hisavana/sdk/u3;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->j:Lcom/cloud/hisavana/sdk/u3$b;

    return-void
.end method


# virtual methods
.method public G(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
    .locals 1

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/N0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/cloud/hisavana/sdk/N0;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/listener/d;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    move-result-object p1

    return-object p1
.end method

.method public H(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-direct {v0, p1}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/cloud/hisavana/sdk/R$dimen;->ad_badge_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public Q(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/u3;->a0()V

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    invoke-virtual {v0, p3}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setupViews(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/u3;->L(Landroid/view/ViewGroup;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    return-void
.end method

.method public R(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "native close ad ----\u300b"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->m(Lcom/cloud/hisavana/sdk/G;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->o(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    return-void
.end method

.method public V(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 4

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/G;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v0

    invoke-static {}, La7/c;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReady(), adId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/v2;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isReady="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TranNative"

    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public W(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->isAdShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "TranNative"

    const-string v1, "ad has been showed"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->setAdShowed(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/u3;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->z(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-object v0
.end method

.method public a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 1

    new-instance v0, Lcom/cloud/hisavana/sdk/u3$a;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/sdk/u3$a;-><init>(Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/cloud/hisavana/sdk/u3;->P(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/cloud/hisavana/sdk/u3;->P(Ljava/util/List;Landroid/os/Bundle;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    return-void
.end method

.method public m()V
    .locals 1

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/G;->m()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/u3;->Y()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u3;->i:Lcom/cloud/hisavana/sdk/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/f;->d()V

    :cond_0
    return-void
.end method
