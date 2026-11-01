.class public Lcom/cloud/hisavana/sdk/g0;
.super Lcom/cloud/hisavana/sdk/l4;


# instance fields
.field private e:Lcom/cloud/hisavana/sdk/q3;

.field private f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/l4;-><init>()V

    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/g0;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/g0;->f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-object p0
.end method

.method private g(Ljava/util/List;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2, v1}, Lcom/cloud/hisavana/sdk/v2;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExoPlayer unavailable, remove video ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OfflineAdNode"

    invoke-virtual {v3, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/g0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g0;->k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/g0;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/g0;->m(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_offline_status"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "s_offline_failed_reason"

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "offline ad fetch failed, error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/g0;->l(Ljava/lang/String;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/g0;->j(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "offline_ad_status"

    invoke-static {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    invoke-interface {p2, p1, v0}, Lcom/cloud/hisavana/sdk/l4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, La7/c;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    const-string v1, "OfflineAdNode"

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", codeSeatId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private m(Ljava/util/List;Ljava/lang/String;)V
    .locals 5

    const-string v0, "\n"

    const/4 v1, 0x3

    iput v1, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    invoke-static {}, La7/c;->p()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offline ad fetch succeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "adCreativeId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff0cis_offline_ad: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", source:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/g0;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/g0;->o()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "offline_ad_status"

    invoke-static {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/g0;->g(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/d4;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/g0;->g(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    invoke-interface {p2, p1, v0}, Lcom/cloud/hisavana/sdk/l4$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_DATA_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/cloud/hisavana/sdk/l4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private n(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
    .locals 3

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->j()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->k()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->gameScene:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->l()Lb7/b;

    move-result-object v1

    invoke-virtual {v1}, Lb7/b;->a()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->extInfo:Ljava/util/Map;

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->y()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->supportEw:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->q()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->a()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result p1

    iput p1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mTriggerNetState:I

    return-object v0
.end method

.method private o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_offline_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 8

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/g0;->n(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/g0;->f:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {}, La7/c;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg10:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    const-string v0, "start load offline ad."

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/g0;->l(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->z(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, La7/c;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/c0;->F()Lcom/cloud/hisavana/sdk/c0;

    move-result-object v0

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/g0;->e:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-virtual {v0, v3, v4}, Lcom/cloud/hisavana/sdk/c0;->y(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->o()I

    move-result p1

    if-ne p1, v2, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/c0;->F()Lcom/cloud/hisavana/sdk/c0;

    move-result-object v1

    iget v3, p0, Lcom/cloud/hisavana/sdk/l4;->d:I

    new-instance v7, Lcom/cloud/hisavana/sdk/g0$a;

    invoke-direct {v7, p0}, Lcom/cloud/hisavana/sdk/g0$a;-><init>(Lcom/cloud/hisavana/sdk/g0;)V

    const/4 v5, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/c0;->x(Ljava/lang/String;IZLjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/c0$c;)V

    return-void
.end method
