.class public final Lcom/transsion/push/config/PushRepository;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/push/config/IDataSource;


# static fields
.field private static e:Lcom/transsion/push/config/PushRepository; = null

.field private static f:J = -0x1L

.field private static g:J = -0x1L


# instance fields
.field private a:Lcom/transsion/core/utils/f;

.field private b:Lcom/transsion/push/config/a;

.field private c:Lcom/transsion/push/bean/ConfigInfo$Config;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "sp_push"

    invoke-static {v0}, Lcom/transsion/core/utils/f;->e(Ljava/lang/String;)Lcom/transsion/core/utils/f;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/transsion/push/config/a;

    invoke-direct {v0}, Lcom/transsion/push/config/a;-><init>()V

    iput-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    return-void
.end method

.method static synthetic a(Lcom/transsion/push/config/PushRepository;)Lcom/transsion/push/config/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    return-object p0
.end method

.method static synthetic b(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/push/config/PushRepository;->d(Lcom/transsion/push/IClientIdListener;)V

    return-void
.end method

.method private c()V
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "retry_count"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/transsion/push/utils/v;->c()I

    move-result v3

    sget-object v4, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting Failure, Retry Reporting,retryCount\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", max retryCount\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "More than the maximum number of retries"

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/push/utils/v;->b()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/transsion/push/config/PushRepository;->saveReportTime(J)V

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/push/utils/v;->d()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->saveReportTime(J)V

    return-void
.end method

.method private d(Lcom/transsion/push/IClientIdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    if-nez v0, :cond_1

    const-string v0, "mRemoteDataSource is null"

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/transsion/push/IClientIdListener;->onFail(Ljava/lang/String;)V

    :cond_0
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/transsion/push/config/PushRepository$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/push/config/PushRepository$4;-><init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V

    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/transsion/push/config/PushRepository;
    .locals 2

    const-class v0, Lcom/transsion/push/config/PushRepository;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/push/config/PushRepository;->e:Lcom/transsion/push/config/PushRepository;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/push/config/PushRepository;

    invoke-direct {v1}, Lcom/transsion/push/config/PushRepository;-><init>()V

    sput-object v1, Lcom/transsion/push/config/PushRepository;->e:Lcom/transsion/push/config/PushRepository;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/transsion/push/config/PushRepository;->e:Lcom/transsion/push/config/PushRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public getClientId(Lcom/transsion/push/IClientIdListener;)V
    .locals 3

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "get client id"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    const-string v0, "push_client_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/transsion/push/IClientIdListener;->onSuccess(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "push_token"

    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/transsion/push/config/PushRepository$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/push/config/PushRepository$a;-><init>(Lcom/transsion/push/config/PushRepository;Lcom/transsion/push/IClientIdListener;)V

    invoke-static {v0}, Lcom/transsion/push/utils/FirebaseUtils;->d(Lcom/transsion/push/utils/FirebaseUtils$b;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/push/config/PushRepository;->d(Lcom/transsion/push/IClientIdListener;)V

    :goto_0
    return-void
.end method

.method public getConfig()Lcom/transsion/push/bean/ConfigInfo$Config;
    .locals 5

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->c:Lcom/transsion/push/bean/ConfigInfo$Config;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "push_config"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/core/utils/f;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const-class v0, Lcom/transsion/push/bean/ConfigInfo$Config;

    invoke-static {v2, v0}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/bean/ConfigInfo$Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get config fail, e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v1
.end method

.method public getLastTpmsReportTime()J
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/transsion/push/config/PushRepository;->g:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    return-wide v2

    :cond_0
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-string v3, "report_tpms_active_time"

    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/core/utils/f;->h(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/transsion/push/config/PushRepository;->g:J

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sLocalTpmsReportTime"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/transsion/push/config/PushRepository;->g:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sget-wide v6, Lcom/transsion/push/config/PushRepository;->g:J

    cmp-long v2, v6, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    sput-wide v0, Lcom/transsion/push/config/PushRepository;->g:J

    :cond_2
    sget-wide v0, Lcom/transsion/push/config/PushRepository;->g:J

    return-wide v0
.end method

.method public getReportTime()J
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/transsion/push/config/PushRepository;->f:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    return-wide v2

    :cond_0
    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    const-string v3, "report_active_time"

    invoke-virtual {v2, v3, v4, v5}, Lcom/transsion/core/utils/f;->h(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/transsion/push/config/PushRepository;->f:J

    cmp-long v2, v6, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    invoke-virtual {v2, v3, v0, v1}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    sput-wide v0, Lcom/transsion/push/config/PushRepository;->f:J

    :cond_2
    sget-wide v0, Lcom/transsion/push/config/PushRepository;->f:J

    return-wide v0
.end method

.method public getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_0

    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->c(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->f(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/core/utils/f;->h(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->d(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v1, p2, Ljava/util/Set;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/transsion/core/utils/f;->k(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_6
    sget-object p1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type of default value is not match with value stored."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object p2
.end method

.method public getWhiteList()Lcom/transsion/push/bean/ConfigInfo$Whitelist;
    .locals 5

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-class v1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "push_white_list"

    invoke-static {v2, v3}, Lcom/transsion/crypto/TCrypterSdk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    iput-object v2, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get white list fail, e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    return-object v0
.end method

.method public isReported()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, "report_active_success"

    invoke-virtual {v0, v2}, Lcom/transsion/core/utils/f;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public putSpValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->l(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->n(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    goto :goto_1

    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->m(Ljava/lang/String;F)V

    goto :goto_1

    :cond_5
    instance-of v1, p2, Ljava/util/Set;

    if-eqz v1, :cond_6

    check-cast p2, Ljava/util/Set;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/core/utils/f;->q(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put sp, Type of default value is not match with value stored."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public removeSpValue(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/core/utils/f;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public saveConfig(Lcom/transsion/push/bean/ConfigInfo$Config;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/transsion/push/config/PushRepository;->c:Lcom/transsion/push/bean/ConfigInfo$Config;

    const-string v1, "push_config"

    new-instance v2, Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/core/utils/f;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save config fail, e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public saveReportTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update reporting time\uff0creportTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sput-wide p1, Lcom/transsion/push/config/PushRepository;->f:J

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    const-string v1, "report_active_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    return-void
.end method

.method public saveTpmsReportTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update reporting time\uff0creportTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    sput-wide p1, Lcom/transsion/push/config/PushRepository;->g:J

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->a:Lcom/transsion/core/utils/f;

    const-string v1, "report_tpms_active_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/transsion/core/utils/f;->o(Ljava/lang/String;J)V

    return-void
.end method

.method public saveWhiteList(Lcom/transsion/push/bean/ConfigInfo$Whitelist;)V
    .locals 5

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "push_white_list"

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {p1}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/transsion/crypto/TCrypterSdk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    const-class v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    invoke-static {v0, v2}, Lcom/transsion/json/b;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    iget-object v0, v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    iget-object v2, p1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/push/bean/ConfigInfo$Apps;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    invoke-direct {v2}, Lcom/transsion/push/bean/ConfigInfo$Whitelist;-><init>()V

    iget p1, p1, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    iput p1, v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, v2, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->apps:Ljava/util/List;

    invoke-static {v2}, Lcom/transsion/json/b;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {}, Lqk/a;->a()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->d:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/transsion/crypto/TCrypterSdk;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public subscribeToTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "subscribe topic is empty"

    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "subscribe clientId is empty"

    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/transsion/push/config/PushRepository$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/push/config/PushRepository$1;-><init>(Lcom/transsion/push/config/PushRepository;Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public syncActive()V
    .locals 5

    const-string v0, "push_token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "Token is empty"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "mRemoteDataSource is null"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getDebug()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getTestEnv()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    invoke-virtual {v0}, Lcom/transsion/push/config/a;->f()Lcom/transsion/push/bean/ConfigInfo;

    move-result-object v0

    const-string v2, "push_client_id"

    if-nez v0, :cond_4

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v3, "syncActive onFail"

    invoke-virtual {v0, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/push/config/PushRepository;->c()V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "retry_count"

    invoke-virtual {p0, v3, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get config response data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/push/bean/ConfigInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithApp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "push_is_next_with_app"

    invoke-virtual {p0, v3, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->nextWithDetail:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "push_is_report_detail"

    invoke-virtual {p0, v3, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->clientId:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->startPointReport:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "push_start_point_report"

    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->destroyAppIds:[Ljava/lang/String;

    iget v2, v0, Lcom/transsion/push/bean/ConfigInfo;->syncInfoInterval:I

    invoke-static {v1, v2}, Lcom/transsion/push/utils/z;->f([Ljava/lang/String;I)V

    invoke-static {}, Lcom/transsion/push/utils/PushUtils;->w()V

    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->configRefresh:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    if-eqz v1, :cond_5

    iget v2, v1, Lcom/transsion/push/bean/ConfigInfo$Config;->version:I

    if-lez v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/transsion/push/config/PushRepository;->saveConfig(Lcom/transsion/push/bean/ConfigInfo$Config;)V

    iget-object v1, v0, Lcom/transsion/push/bean/ConfigInfo;->config:Lcom/transsion/push/bean/ConfigInfo$Config;

    iget v1, v1, Lcom/transsion/push/bean/ConfigInfo$Config;->destroy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "push_self_destroying"

    invoke-virtual {p0, v2, v1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    iget-boolean v1, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelistRefresh:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/transsion/push/bean/ConfigInfo;->whitelist:Lcom/transsion/push/bean/ConfigInfo$Whitelist;

    if-eqz v0, :cond_6

    iget v1, v0, Lcom/transsion/push/bean/ConfigInfo$Whitelist;->version:I

    if-lez v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/transsion/push/config/PushRepository;->saveWhiteList(Lcom/transsion/push/bean/ConfigInfo$Whitelist;)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/push/utils/v;->b()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/transsion/push/config/PushRepository;->saveReportTime(J)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "report_active_success"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public syncSelfDestroying()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "mRemoteDataSource is null"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getDebug()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/push/PushManager;->getInstance()Lcom/transsion/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/PushManager;->getTestEnv()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://api.twibida.com/tcm/v2/instance/"

    invoke-static {v0}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v1, "gslb not inited"

    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils;->z(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/push/tracker/Tracker;->getInstance()Lcom/transsion/push/tracker/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/push/tracker/Tracker;->trackReport()V

    iget-object v0, p0, Lcom/transsion/push/config/PushRepository;->b:Lcom/transsion/push/config/a;

    invoke-virtual {v0}, Lcom/transsion/push/config/a;->e()Lcom/transsion/push/bean/SelfDestroyInfo;

    move-result-object v0

    const-string v1, "push_self_destroying_time"

    if-nez v0, :cond_2

    sget-object v0, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    const-string v2, "sync self-destroying fail"

    invoke-virtual {v0, v2}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/push/utils/v;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object v2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get self-destroying response data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/transsion/push/bean/SelfDestroyInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    iget v2, v0, Lcom/transsion/push/bean/SelfDestroyInfo;->destroy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "push_self_destroying"

    invoke-virtual {p0, v3, v2}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v0, Lcom/transsion/push/bean/SelfDestroyInfo;->interval:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "push_self_destroying_interval"

    invoke-virtual {p0, v2, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/transsion/push/utils/v;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public unsubscribeFromTopic(Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "unsubscribe topic is empty"

    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/push/config/PushRepository;->getInstance()Lcom/transsion/push/config/PushRepository;

    move-result-object v0

    const-string v1, "push_client_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/config/PushRepository;->getSpValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const-string p1, "unsubscribe clientId is empty"

    invoke-interface {p2, p1}, Lcom/transsion/push/ITopicListener;->onFail(Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/push/utils/PushLogUtils;->LOG:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {p2, p1}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    new-instance v0, Lcom/transsion/push/config/PushRepository$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/push/config/PushRepository$2;-><init>(Lcom/transsion/push/config/PushRepository;Ljava/lang/String;Lcom/transsion/push/ITopicListener;)V

    invoke-static {v0}, Lcom/transsion/push/utils/ThreadManager;->executeInBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateNewToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "push_token"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "push_is_report_detail"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "report_active_success"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/push/config/PushRepository;->putSpValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
