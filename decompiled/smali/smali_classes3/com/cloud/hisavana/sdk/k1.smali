.class public Lcom/cloud/hisavana/sdk/k1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/k1$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile c:Ljava/lang/String;

.field private volatile d:J

.field private volatile e:J

.field private volatile f:Ljava/lang/String;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Z

.field private volatile i:Ljava/lang/Boolean;

.field private volatile j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/k1;->h:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->i:Ljava/lang/Boolean;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v2, "hisavanaRequestUrl"

    invoke-virtual {v0, v2}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v2, "show_ru_style"

    invoke-virtual {v0, v2}, Lj7/a;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/k1;->h:Z

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v2, "is_om_id_enabled"

    invoke-virtual {v0, v2, v1}, Lj7/a;->d(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->i:Ljava/lang/Boolean;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "cloudConfigExtInfo"

    invoke-virtual {v0, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/k1;->j(Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseCustomTabData()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseABTestData()V

    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->parseCommonConfigData()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/k1$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/k1;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/k1;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k1;->f(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/k1;J)J
    .locals 0

    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/k1;->d:J

    return-wide p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "dcdnUrl"

    invoke-virtual {v0, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->g:Ljava/lang/String;

    const-string v1, "blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lg7/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg7/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->g:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/k1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private e(I)V
    .locals 8

    const-string v0, "ssp_sdk_version_code"

    const-string v1, "ConfigManager"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/k1;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lj7/a;->g(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Li7/c;->m()I

    move-result v3

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Lj7/a;->p(Ljava/lang/String;I)V

    if-eqz v2, :cond_4

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v5, "ssp_cloud_config_raw_response"

    invoke-virtual {v0, v5}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "checkVersionUpgradeAndReparse: no cached raw response, skip"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    const-class v5, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    invoke-static {v0, v5}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkVersionUpgradeAndReparse: re-parsing for version upgrade "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0, v0, p1, v4}, Lcom/cloud/hisavana/sdk/k1;->i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_4
    :goto_0
    return-void

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkVersionUpgradeAndReparse failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private synthetic f(ILjava/lang/String;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/k1;->e(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/P;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/P;->i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/P;->b(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/MitNetUtil;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->setIsNetAvailable(Z)V

    const-string v2, "ConfigManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v4, "hisavanaCurrentCloudControlVersion"

    invoke-virtual {v1, v4, v3}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/hisavana/sdk/k1;->g(ILjava/lang/String;Z)V

    return-void

    :cond_3
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v4, "new_hisavana_ver"

    invoke-virtual {v1, v4}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/k1;->d:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_4

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v3, "requestConfigTime"

    invoke-virtual {v1, v3, v5, v6}, Lj7/a;->i(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/k1;->d:J

    :cond_4
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/k1;->e:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v3, "requestConfigInterval"

    const-wide/32 v4, 0xf731400

    invoke-virtual {v1, v3, v4, v5}, Lj7/a;->i(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cloud/hisavana/sdk/k1;->e:J

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/k1;->d:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/k1;->e:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/k1;->g(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    const-string v1, "time is not ready"

    invoke-virtual {p2, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/k1;->k(Ljava/util/Collection;I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "requestCloudControl download material fail,config list is null"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1, p2, v3}, Lcom/cloud/hisavana/sdk/k1;->g(ILjava/lang/String;Z)V

    :goto_1
    return-void

    :cond_9
    :goto_2
    const/4 p2, 0x3

    if-eq p1, p2, :cond_a

    invoke-static {v3, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j0(Ljava/lang/String;I)V

    const/4 p2, 0x2

    invoke-static {v3, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Ljava/lang/String;II)V

    :cond_a
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "requestCloudControl net is not available,or is requesting"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g(ILjava/lang/String;Z)V
    .locals 9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "ConfigManager"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "config is requesting"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->I(ILjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/a;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    new-instance v1, Lcom/cloud/hisavana/sdk/k1$b;

    move-object v2, v1

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/k1$b;-><init>(Lcom/cloud/hisavana/sdk/k1;JILjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    new-instance p2, Lcom/cloud/hisavana/sdk/k1$a;

    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/k1$a;-><init>(Lcom/cloud/hisavana/sdk/k1;)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-static {}, La7/c;->p()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->k(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lg7/a;->e()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg7/a;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    :cond_1
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/k1;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/k1;->i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V

    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;IZ)V
    .locals 4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCloudControlCacheInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/k1;->e:J

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/k1;->e:J

    const-string v3, "requestConfigInterval"

    invoke-virtual {v0, v3, v1, v2}, Lj7/a;->q(Ljava/lang/String;J)V

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isShowRuStyle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/k1;->h:Z

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/k1;->h:Z

    const-string v2, "show_ru_style"

    invoke-virtual {v0, v2, v1}, Lj7/a;->o(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isOmIdEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/s0;->c(Landroid/content/Context;Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isOmIdEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->i:Ljava/lang/Boolean;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "is_om_id_enabled"

    invoke-virtual {v0, v2, v1}, Lj7/a;->o(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v0

    const-string v1, "ad_internal_black_brands"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ad internal black brands\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConfigManager"

    invoke-virtual {v0, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalBlackBrands()Ljava/util/List;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lj7/a;->s(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->isInitPolyGammaEnable()Z

    move-result v1

    const-string v2, "polygamma_init_enable"

    invoke-virtual {v0, v2, v1}, Lj7/a;->o(Ljava/lang/String;Z)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalRequestEnable()Z

    move-result v1

    const-string v2, "default_is_open"

    invoke-virtual {v0, v2, v1}, Lj7/a;->o(Ljava/lang/String;Z)V

    sget-object v0, Lcom/cloud/hisavana/sdk/Z;->a:Lcom/cloud/hisavana/sdk/Z;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getAdInternalRequestEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/Z;->s(Z)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getShowDataSyncTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getClickDataSyncTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/k5;->b(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getExtInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    const-string v2, "cloudConfigExtInfo"

    invoke-virtual {v1, v2, v0}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/k1;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCustomConfigs()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;

    move-result-object v0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->saveCustomConfigs(Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigs;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCdnVersionAddressRequestTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xea60

    mul-int/2addr v1, v2

    int-to-long v1, v1

    const-string v3, "default_interval"

    invoke-virtual {v0, v3, v1, v2}, Lj7/a;->q(Ljava/lang/String;J)V

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/P;->f(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCloudControlVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getSspUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    const-string v2, "hisavanaCurrentCloudControlVersion"

    invoke-virtual {v0, v2, v1}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    const-string v2, "new_hisavana_ver"

    invoke-virtual {v0, v2, v1}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    const-string v2, "hisavanaRequestUrl"

    invoke-virtual {v0, v2, v1}, Lj7/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getPreConnectEnable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "preLoadNet"

    invoke-virtual {v1, v2, v0}, Lj7/a;->o(Ljava/lang/String;Z)V

    :cond_4
    invoke-static {}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CustomConfigManager;->getCommonConfigData()Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getAntifraudPowerEnable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;->getAntifraudSubfunctionControl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    move-object v0, v1

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Li7/a;->u0(Z)V

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Li7/a;->t0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsing AntifraudSubfunctionControl failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ssp_load"

    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO;->getCodeSeats()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k1;->k(Ljava/util/Collection;I)V

    :cond_8
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k1;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/k1;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    :catch_0
    :goto_0
    return-void
.end method

.method private k(Ljava/util/Collection;I)V
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/sdk/c0;->F()Lcom/cloud/hisavana/sdk/c0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->z(Ljava/util/Collection;I)V

    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/k1;)J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/k1;->d:J

    return-wide v0
.end method

.method public static o()Lcom/cloud/hisavana/sdk/k1;
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1$c;->a()Lcom/cloud/hisavana/sdk/k1;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/k1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/k1;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public m()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->j:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigTotalDTO$ExtInfo;

    return-object v0
.end method

.method public n(I)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCloudControl type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConfigManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v2, Lcom/cloud/hisavana/sdk/j1;

    invoke-direct {v2, p0, p1, v0}, Lcom/cloud/hisavana/sdk/j1;-><init>(Lcom/cloud/hisavana/sdk/k1;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/cloud/hisavana/sdk/v1;->a:Lcom/cloud/hisavana/sdk/v1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/v1;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/k1;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v0

    const-string v1, "hisavanaRequestUrl"

    invoke-virtual {v0, v1}, Lj7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lg7/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lg7/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k1;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/k1;->h:Z

    return v0
.end method
