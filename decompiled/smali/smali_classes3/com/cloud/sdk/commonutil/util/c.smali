.class public Lcom/cloud/sdk/commonutil/util/c;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final IMG_TAG:Ljava/lang/String; = "ssp_img"

.field public static final INFO:I = 0x4

.field public static final JSON:I = 0x9

.field public static final LOAD_TAG:Ljava/lang/String; = "ssp_load"

.field public static final MEASURE_TAG:Ljava/lang/String; = "ssp_measure"

.field public static NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils; = null

.field public static final SECOND_PRICE_TAG:Ljava/lang/String; = "ssp_second_price"

.field public static final SPLASH_TAG:Ljava/lang/String; = "ssp_splash"

.field public static final TAG:Ljava/lang/String; = "ssp"

.field public static final TRACK_TAG:Ljava/lang/String; = "ssp_track"

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field public static final WTF:I = 0x8

.field private static adLogUtil:Lcom/cloud/sdk/commonutil/util/c;


# instance fields
.field private final gloableTag:Ljava/lang/String;

.field private final logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

.field private final mLoggingLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    invoke-direct {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;-><init>()V

    const-string v1, "ADSDK_N"

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->o(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->p(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->n(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    move-result-object v0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/c;->NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const/4 v0, 0x0

    sput-object v0, Lcom/cloud/sdk/commonutil/util/c;->adLogUtil:Lcom/cloud/sdk/commonutil/util/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ADSDK_S"

    iput-object v0, p0, Lcom/cloud/sdk/commonutil/util/c;->gloableTag:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/cloud/sdk/commonutil/util/c;->mLoggingLevel:I

    new-instance v0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    invoke-direct {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;-><init>()V

    const-string v1, "ADSDK"

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->o(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->n(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->y(I)V

    return-void
.end method

.method public static declared-synchronized Log()Lcom/cloud/sdk/commonutil/util/c;
    .locals 3

    const-class v0, Lcom/cloud/sdk/commonutil/util/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cloud/sdk/commonutil/util/c;->adLogUtil:Lcom/cloud/sdk/commonutil/util/c;

    if-nez v1, :cond_1

    const-class v1, Lcom/cloud/sdk/commonutil/util/c;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/cloud/sdk/commonutil/util/c;->adLogUtil:Lcom/cloud/sdk/commonutil/util/c;

    if-nez v2, :cond_0

    new-instance v2, Lcom/cloud/sdk/commonutil/util/c;

    invoke-direct {v2}, Lcom/cloud/sdk/commonutil/util/c;-><init>()V

    sput-object v2, Lcom/cloud/sdk/commonutil/util/c;->adLogUtil:Lcom/cloud/sdk/commonutil/util/c;

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :catchall_1
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v1, Lcom/cloud/sdk/commonutil/util/c;->adLogUtil:Lcom/cloud/sdk/commonutil/util/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static netLog(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/cloud/sdk/commonutil/util/c;->NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {v0, p0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->o(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "******"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getGlobalTag()Ljava/lang/String;
    .locals 1

    const-string v0, "ADSDK_S"

    return-object v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cloud/sdk/commonutil/util/c;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/cloud/sdk/commonutil/util/c;->a(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cloud/sdk/commonutil/util/c;->getGlobalTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    if-eq p1, v0, :cond_a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_8

    const/4 v3, 0x4

    if-eq p1, v3, :cond_6

    const/4 v3, 0x5

    if-eq p1, v3, :cond_4

    const/4 v3, 0x6

    if-eq p1, v3, :cond_2

    const/16 p4, 0x9

    if-eq p1, p4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p1, p2, p3}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-eqz p4, :cond_5

    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    if-eqz p4, :cond_7

    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    if-eqz p4, :cond_9

    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    if-eqz p4, :cond_b

    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->z(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p3, p4, v2

    invoke-virtual {p1, p2, p4}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->z(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    :cond_c
    :goto_2
    return-void
.end method

.method public setLogSwitch(Z)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/sdk/commonutil/util/c;->logUtils:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/c;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->logWithThrowable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
