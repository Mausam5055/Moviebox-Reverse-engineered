.class public Lcom/cloud/hisavana/sdk/d1;
.super Lcom/cloud/hisavana/sdk/l4;


# instance fields
.field private e:Lcom/cloud/hisavana/sdk/common/http/a;

.field private f:Lcom/cloud/hisavana/sdk/q3;

.field private g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field h:Landroidx/collection/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/l4;-><init>()V

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    return-void
.end method

.method static synthetic A(Lcom/cloud/hisavana/sdk/d1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->w(Ljava/util/List;)V

    return-void
.end method

.method private B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->G(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/l4$a;->c(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private C(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->w(Ljava/util/List;)V

    return-void

    :cond_0
    const-string v0, "start to load materials"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/d1;->v(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d1;->F()V

    new-instance v0, Lcom/cloud/hisavana/sdk/v4;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/v4;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/d1$c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/d1$c;-><init>(Lcom/cloud/hisavana/sdk/d1;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/v4;->c(Lcom/cloud/hisavana/sdk/v4$f;)V

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    sget-object v3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v1

    iget v2, p0, Lcom/cloud/hisavana/sdk/l4;->d:I

    invoke-virtual {v0, p1, v1, v5, v2}, Lcom/cloud/hisavana/sdk/v4;->e(Ljava/util/List;III)V

    return-void
.end method

.method private synthetic D()V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/d1;->B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private E(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private F()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_ma_d_s"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private G(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_online_status"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "s_online_failed_reason_v2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private H()V
    .locals 4

    iget v0, p0, Lcom/cloud/hisavana/sdk/l4;->c:I

    if-gtz v0, :cond_0

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/a1;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/a1;-><init>(Lcom/cloud/hisavana/sdk/d1;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->e(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/b1;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/b1;-><init>(Lcom/cloud/hisavana/sdk/d1;)V

    iget v2, p0, Lcom/cloud/hisavana/sdk/l4;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->f(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method private I()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_online_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    const-string v1, "s_online_failed_reason_v2"

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/g0;->j(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/cloud/hisavana/sdk/d1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d1;->D()V

    return-void
.end method

.method public static synthetic g(Lcom/cloud/hisavana/sdk/d1;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d1;->z()V

    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/d1;)Lcom/cloud/hisavana/sdk/q3;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    return-object p0
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/v2;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp_load"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExoPlayer unavailable, remove video ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->y(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private l(Landroidx/collection/b;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroidx/collection/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    const-string v1, "s_online_return_filter"

    invoke-static {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->h(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/d1;Landroidx/collection/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->l(Landroidx/collection/b;)V

    return-void
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->s(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/d1;->t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/d1;->u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V

    return-void
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/d1;->v(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method static synthetic r(Lcom/cloud/hisavana/sdk/d1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->C(Ljava/util/List;)V

    return-void
.end method

.method private s(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online ad fetch failed, error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cloud/hisavana/sdk/d1;->v(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->G(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/l4$a;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v3, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    return-void
.end method

.method private t(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->p(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    const-string p2, "s_ma_d_fr"

    invoke-static {v0, p2, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lcom/cloud/hisavana/sdk/common/util/g0;->b(Ljava/util/concurrent/ConcurrentHashMap;Landroid/os/Bundle;)V

    const/4 p1, 0x2

    :goto_0
    const-string p2, "s_ma_d_s"

    invoke-static {v0, p2, p1}, Lcom/cloud/hisavana/sdk/common/util/g0;->e(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private u(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V
    .locals 0

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTestResponse()Ljava/lang/Boolean;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setTestResponse(Ljava/lang/Boolean;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAbTest()Ljava/util/List;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAbTest(Ljava/util/List;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getExtInfo()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setExtInfo(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAdSeatType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdSeatType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getSecondPrice()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAuctionSecondPrice(Ljava/lang/Double;)V

    sget-object p2, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    const/4 p5, 0x0

    invoke-virtual {p2, p1, p5}, Lcom/cloud/hisavana/sdk/common/util/b;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setUuid(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getFullScreenFlag()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setFullScreenFlag(Ljava/lang/Integer;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTrackingUrlBool()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOptimizeTracking(Z)V

    invoke-virtual {p1, p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdRequestVer(I)V

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->F(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getScales()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setScales(Ljava/util/List;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setSource(I)V

    return-void
.end method

.method private v(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    invoke-static {}, La7/c;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz p1, :cond_1

    const-string p1, ", codeSeatId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, ", adCreativeId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "OnlineAdNode"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method private w(Ljava/util/List;)V
    .locals 6

    const-string v0, "\n"

    const/4 v1, 0x3

    iput v1, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    invoke-static {}, La7/c;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "online ad fetch succeed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "adCreativeId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\uff0cis_offline_ad: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", source:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/cloud/hisavana/sdk/d1;->v(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d1;->I()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, v2}, Lcom/cloud/hisavana/sdk/l4$a;->b(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_AD_CREATIVIES_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->s(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private x(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;
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

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mTriggerNetState:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->webPageReqInfo:Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    :cond_1
    return-object v0
.end method

.method private static y(Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, La7/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/l1;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/q3;->p()Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/cloud/hisavana/sdk/l1;->d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/common/bean/SSPWebPageReqInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/l1;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/l1;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic z()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/d1;->E(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ONLINE_NEW_REQUEST_TIMEOUT:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/d1;->B(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/q3;)V
    .locals 11

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/hisavana/sdk/l4;->b:I

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->x(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/d1;->g:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {}, La7/c;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg3:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    const-string v0, "start load online ad."

    invoke-direct {p0, v0, v2}, Lcom/cloud/hisavana/sdk/d1;->v(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1;->f:Lcom/cloud/hisavana/sdk/q3;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q3;->n()Ljava/lang/String;

    move-result-object v0

    const-string v3, "2"

    invoke-virtual {v1, v0, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->z(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/d1;->H()V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/d1;->x(Lcom/cloud/hisavana/sdk/q3;)Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v9

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->e()I

    move-result v8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch from server, impBean="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/cloud/hisavana/sdk/d1;->v(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    new-instance v2, Lcom/cloud/hisavana/sdk/common/http/a;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    new-instance v3, Lcom/cloud/hisavana/sdk/d1$b;

    const/4 v6, 0x1

    move-object v4, v3

    move-object v5, p0

    move-object v7, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/d1$b;-><init>(Lcom/cloud/hisavana/sdk/d1;ZLjava/lang/String;ILcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object v2

    new-instance v3, Lcom/cloud/hisavana/sdk/d1$a;

    invoke-direct {v3, p0, p1, v0}, Lcom/cloud/hisavana/sdk/d1$a;-><init>(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/q3;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-static {}, La7/c;->p()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/http/a;->k(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/k1;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/a;->n(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/a;->j(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d1;->e:Lcom/cloud/hisavana/sdk/common/http/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    :cond_2
    return-void
.end method
