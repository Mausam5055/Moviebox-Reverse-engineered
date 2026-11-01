.class public Lcom/bytedance/sdk/openadsdk/utils/JcM;
.super Ljava/lang/Object;


# static fields
.field private static volatile Dq:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile EjP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile HiB:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile Jcg:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile Sj:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile TEQ:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile TKC:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile Ym:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile sP:Z

.field private static volatile uA:Lcom/bytedance/sdk/component/Dq/TKC/vS;

.field private static volatile vS:Lcom/bytedance/sdk/component/Dq/TKC/vS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/JcM$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$1;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Dq/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/Sj;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/JcM$3;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$3;-><init>()V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Dq/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/HiB;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dq()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TzV()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->TKC()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static EjP()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Zq()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->EjP()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static EjP(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sef()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/JcM$9;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$9;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/component/Dq/vS;->HiB(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method private static Fmk()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_2

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TX()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->xu()I

    move-result v1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP:Z

    :goto_0
    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v4, 0x7fffffff

    const-wide/16 v5, 0x1e

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    monitor-exit v0

    throw v1

    :cond_2
    :goto_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static HiB()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uA()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->sP()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static HiB(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sef()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/JcM$2;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$2;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Fmk()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    sget-boolean p0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP:Z

    if-nez p0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TX()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP:Z

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->xu()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_2
    return-void
.end method

.method public static Jcg()Z
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pag_log"

    goto :goto_0

    :cond_0
    const-string v0, "csj_log"

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static RiZ()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Ym:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Ym:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "imgdisk"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Ym:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Ym:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Ym:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 10

    const-string v0, "logTaskCount"

    const-string v1, "reportLogThreshold"

    const-string v2, "allowCoreTimeOut"

    const-string v3, "keepAlive"

    const-string v4, "createSize"

    const-string v5, "maxSize"

    const-string v6, "coreSize"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object v7

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TX()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v9

    invoke-interface {v9}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->HcZ()Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_7

    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    :cond_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    :cond_2
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    :cond_3
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v7, v3, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    :cond_4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    :cond_5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    :cond_6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_7
    :goto_2
    return-object v7
.end method

.method private static Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;)V

    return-object p1
.end method

.method public static Sj()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->vS()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uA()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/JcM$4;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$4;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/component/Dq/vS;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Dq/Dq;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/JcM$6;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$6;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TzV()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/bytedance/sdk/component/Dq/vS;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;II)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Dq/TKC/sP;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Ym()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Sj(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->TKC()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TX()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static TEQ()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uA:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uA:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "express"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uA:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uA:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uA:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static TKC()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->RiZ()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->TKC()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Zq()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/JcM$7;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$7;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/component/Dq/vS;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->uvD()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/JcM$10;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$10;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/Dq/vS;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method private static TzV()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Jcg:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Jcg:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "io"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Jcg:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Jcg:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Jcg:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static Ym()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TEQ:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TEQ:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "net"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TEQ:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TEQ:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TEQ:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static Zq()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->EjP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->EjP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "log"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->EjP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->EjP:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->EjP:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static aa()Z
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->aZ()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static dNu()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Dq:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Dq:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "image"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Dq:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Dq:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Dq:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;
    .locals 15

    const/16 v0, 0x8

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string p0, "unknown"

    :cond_0
    new-instance v8, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    invoke-direct {v8}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-wide/16 v9, 0x2710

    const-wide/16 v11, 0x4e20

    const/16 v13, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_0
    move v14, v4

    goto/16 :goto_1

    :sswitch_0
    const-string v14, "imgdisk"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    const/16 v14, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v14, "monitor"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    move v14, v0

    goto/16 :goto_1

    :sswitch_2
    const-string v14, "image"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    const/4 v14, 0x7

    goto :goto_1

    :sswitch_3
    const-string v14, "cache"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_0

    :cond_4
    move v14, v1

    goto :goto_1

    :sswitch_4
    const-string v14, "aidl"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_0

    :cond_5
    const/4 v14, 0x5

    goto :goto_1

    :sswitch_5
    const-string v14, "net"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_0

    :cond_6
    move v14, v6

    goto :goto_1

    :sswitch_6
    const-string v14, "log"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_0

    :cond_7
    move v14, v7

    goto :goto_1

    :sswitch_7
    const-string v14, "io"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_0

    :cond_8
    move v14, v5

    goto :goto_1

    :sswitch_8
    const-string v14, "ad"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_0

    :cond_9
    move v14, v3

    goto :goto_1

    :sswitch_9
    const-string v14, "express"

    invoke-virtual {p0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto :goto_0

    :cond_a
    move v14, v2

    :goto_1
    packed-switch v14, :pswitch_data_0

    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v11, v12}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_0
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v11, v12}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v11, v12}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto :goto_2

    :pswitch_7
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v11, v12}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto :goto_2

    :pswitch_8
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v11, v12}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    goto :goto_2

    :pswitch_9
    invoke-virtual {v8, p0}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->TKC(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v9, v10}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(J)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->Sj(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->HiB(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v13}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->EjP(I)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;->sP(Z)Lcom/bytedance/sdk/component/Dq/TKC/vS$Sj;

    move-result-object p0

    :goto_2
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4e057090 -> :sswitch_9
        0xc23 -> :sswitch_8
        0xd26 -> :sswitch_7
        0x1a344 -> :sswitch_6
        0x1a99d -> :sswitch_5
        0x2daeb0 -> :sswitch_4
        0x5a0af82 -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x49b0bd5a -> :sswitch_1
        0x72490be0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static sP()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->dNu()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/vS;->TEQ()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static sP(Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 3

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TzV()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/JcM$5;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$5;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public static sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/Yf;->Sj:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->aa()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/JcM$8;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Dq/Dq;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/JcM$8;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Dq/TKC/sP;->Sj(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Zq()Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Dq/TKC/vS;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method public static sP(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static sef()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "ad"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static uA()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "cache"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->vS:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method private static uvD()Lcom/bytedance/sdk/component/Dq/TKC/vS;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;->HiB:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/JcM;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->HiB:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/vS;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    const-string v1, "aidl"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/JcM;->HiB:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/TKC/vS;)Lcom/bytedance/sdk/component/Dq/TKC/vS;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->HiB:Lcom/bytedance/sdk/component/Dq/TKC/vS;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/JcM;->HiB:Lcom/bytedance/sdk/component/Dq/TKC/vS;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static vS()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
