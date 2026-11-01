.class public abstract Lqu/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lqu/b;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public static a()V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "\""

    invoke-static {}, Lqu/b;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Tinker.HotfixCfgLoader"

    if-nez v2, :cond_0

    const-string v0, "no remote hotfix config, keep local defaults"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    :try_start_1
    sget-object v1, Lqu/b;->a:Lcom/google/gson/Gson;

    const-class v5, Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    :cond_1
    :goto_0
    :try_start_2
    sget-object v1, Lqu/b;->a:Lcom/google/gson/Gson;

    const-class v5, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;

    invoke-virtual {v1, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;

    if-nez v1, :cond_2

    const-string v1, "remote hotfix config parsed as null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v2

    invoke-static {v2, v1}, Lqu/b;->c(Lou/a;Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;)Lou/a;

    move-result-object v2

    invoke-static {v2}, Lou/a;->H(Lou/a;)V

    const-string v2, "remote hotfix config applied: enabled=%s, crashThreshold=%s, logEnabed=%s"

    iget-object v5, v1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->enabled:Ljava/lang/Boolean;

    iget-object v6, v1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->crashThreshold:Ljava/lang/Integer;

    iget-object v1, v1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->logEnabled:Ljava/lang/Boolean;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    aput-object v6, v7, v0

    const/4 v5, 0x2

    aput-object v1, v7, v5

    invoke-static {v4, v2, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const-string v1, "failed to apply remote hotfix config: %s"

    invoke-static {v4, v1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "Tinker.HotfixCfgLoader"

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v4}, Lsm/f$a;->a()Lsm/f;

    move-result-object v4

    const-string v5, "hotfix_config"

    invoke-virtual {v4, v5, v1}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "loaded hotfix config JSON from ConfigManager, length=%d"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v6, v7, v0

    invoke-static {v2, v5, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    const-string v0, "failed to load hotfix config from ConfigManager: %s"

    invoke-static {v2, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v3
.end method

.method private static c(Lou/a;Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;)Lou/a;
    .locals 2

    invoke-static {p0}, Lou/a$b;->z(Lou/a;)Lou/a$b;

    move-result-object p0

    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->enabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lou/a$b;->y(Z)Lou/a$b;

    :cond_0
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->httpConnectTimeoutMs:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lou/a$b;->A(I)Lou/a$b;

    :cond_1
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->httpReadTimeoutMs:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lou/a$b;->B(I)Lou/a$b;

    :cond_2
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->maxRetryDelayMs:Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lou/a$b;->G(J)Lou/a$b;

    :cond_3
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->defaultMaxRetry:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lou/a$b;->w(I)Lou/a$b;

    :cond_4
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->defaultRetryDelayMs:Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lou/a$b;->x(J)Lou/a$b;

    :cond_5
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->crashThreshold:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lou/a$b;->u(I)Lou/a$b;

    :cond_6
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->crashWindowMs:Ljava/lang/Long;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lou/a$b;->v(J)Lou/a$b;

    :cond_7
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->logFileMaxSizeBytes:Ljava/lang/Long;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lou/a$b;->D(J)Lou/a$b;

    :cond_8
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->logFileName:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lou/a$b;->E(Ljava/lang/String;)Lou/a$b;

    :cond_9
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->maxPatchSizeBytes:Ljava/lang/Long;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lou/a$b;->F(J)Lou/a$b;

    :cond_a
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->patchCacheDir:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lou/a$b;->I(Ljava/lang/String;)Lou/a$b;

    :cond_b
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->watchdogTimeoutMs:Ljava/lang/Long;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lou/a$b;->J(J)Lou/a$b;

    :cond_c
    iget-object v0, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->workManagerBackoffMs:Ljava/lang/Long;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lou/a$b;->K(J)Lou/a$b;

    :cond_d
    iget-object p1, p1, Lcom/transsion/tinker/lib/custom/config/HotfixRemoteConfig;->logEnabled:Ljava/lang/Boolean;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lou/a$b;->C(Z)Lou/a$b;

    :cond_e
    invoke-virtual {p0}, Lou/a$b;->s()Lou/a;

    move-result-object p0

    return-object p0
.end method
