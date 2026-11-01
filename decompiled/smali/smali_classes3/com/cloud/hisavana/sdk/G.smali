.class public abstract Lcom/cloud/hisavana/sdk/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/api/listener/f;


# instance fields
.field protected final a:Lcom/cloud/hisavana/sdk/e;

.field protected final b:Lcom/cloud/hisavana/sdk/q3;

.field protected c:Z

.field protected d:Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

.field protected e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

.field protected f:Ljava/util/List;

.field protected g:Lcom/cloud/hisavana/sdk/J0;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/G;->h:Z

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/e;->j(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/api/listener/f;)Lcom/cloud/hisavana/sdk/e;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->s()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    new-instance p1, Lcom/cloud/hisavana/sdk/J0;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/J0;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/J0;

    return-void
.end method

.method private static synthetic D()V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/l;->a:Lcom/cloud/hisavana/sdk/l;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/l;->a()V

    sget-object v0, Lcom/cloud/hisavana/sdk/v1;->a:Lcom/cloud/hisavana/sdk/v1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/v1;->c()V

    sget-object v0, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/manager/b;->c()V

    return-void
.end method

.method public static synthetic e()V
    .locals 0

    invoke-static {}, Lcom/cloud/hisavana/sdk/G;->D()V

    return-void
.end method

.method private o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private w()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getPictureDelayCloseTime()I

    move-result v0

    :goto_0
    return v0
.end method

.method private y()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getVideoDelayCloseTime()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public A()Z
    .locals 3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public B()Z
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isMatchVulgarBrand()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public E()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/e;->n()V

    :try_start_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;

    invoke-direct {v1}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;-><init>()V

    invoke-static {}, Lg7/a;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->setUseTestEnvironment(Z)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;

    move-result-object v1

    new-instance v2, Lcom/cloud/hisavana/sdk/f0;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/f0;-><init>()V

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->setInitCompleteListener(Lcom/cloud/hisavana/abtestkit/OnInitCompleteListener;)Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/abtestkit/ABTestKitConfig$Builder;->build()Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/abtestkit/ABTestKit;->init(Landroid/content/Context;Lcom/cloud/hisavana/abtestkit/ABTestKitConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->x(Lcom/cloud/hisavana/sdk/G;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lcom/cloud/hisavana/sdk/G;->d(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code seat id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": fill success ,fill time is ------\u300b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "time_consuming"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAd"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    invoke-virtual {p1, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->q(Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/k1;->n(I)V

    return-void

    :cond_3
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_FETCHED_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/G;->b(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    return-void
.end method

.method public h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/G$a;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/G$a;-><init>(Lcom/cloud/hisavana/sdk/G;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_BIDDING_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->v(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
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

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, p0, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->w(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public j(Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->d:Lcom/cloud/hisavana/sdk/data/bean/response/BidInfo;

    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/G;->c:Z

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/e;->D(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/G;->h:Z

    return-void
.end method

.method protected l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 5

    if-nez p1, :cond_0

    const/16 p1, 0x45a

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/g;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x44d

    return p1

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v1

    const/16 v2, 0x44f

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/d;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/cloud/hisavana/sdk/common/util/g;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/cloud/hisavana/sdk/common/util/d0;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    const/16 p1, 0x451

    return p1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const/16 p1, 0x452

    return p1

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    sget-object v1, Lcom/cloud/hisavana/sdk/e0;->a:Lcom/cloud/hisavana/sdk/e0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/cloud/hisavana/sdk/e0;->k(Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedDate()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/cloud/hisavana/sdk/b0;->a:Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/b0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getDisplayedTimes()I

    move-result v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/inapp/DefaultAdDTO;->getShowMaxOfDay()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p1, :cond_5

    return v2

    :cond_5
    return v0

    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdStatusForAdsDTO failed, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BaseAd"

    invoke-virtual {v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/G;->e:Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/J0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/J0;->a()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/J0;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->a:Lcom/cloud/hisavana/sdk/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/e;->E()V

    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/cloud/hisavana/sdk/k4;->a:Lcom/cloud/hisavana/sdk/k4;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/k4;->j(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->w()I

    move-result v0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->y()I

    move-result v1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "picDelayTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", videoDelayTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BaseAd"

    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public p()Lcom/cloud/hisavana/sdk/q3;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    return-object v0
.end method

.method public q()I
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public r()I
    .locals 4

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/G;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

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

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v3

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/v2;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseAd"

    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public s()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->f:Ljava/util/List;

    return-object v0
.end method

.method public t()D
    .locals 2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getFirstPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public u()I
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/G;->o()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public v()Lcom/cloud/hisavana/sdk/J0;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->g:Lcom/cloud/hisavana/sdk/J0;

    return-object v0
.end method

.method public x()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/G;->b:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getRetentionEndCardRatio()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/G;->h:Z

    return v0
.end method
