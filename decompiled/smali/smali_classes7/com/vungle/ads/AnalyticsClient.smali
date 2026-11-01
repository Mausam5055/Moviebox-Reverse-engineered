.class public final Lcom/vungle/ads/AnalyticsClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/AnalyticsClient$LogLevel;,
        Lcom/vungle/ads/AnalyticsClient$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/AnalyticsClient;

.field private static final MAX_BATCH_SIZE:I = 0x14

.field private static final REFRESH_TIME_MILLIS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "AnalyticsClient"

.field private static final errors:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;",
            ">;"
        }
    .end annotation
.end field

.field private static executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

.field private static final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static logLevel:Lcom/vungle/ads/AnalyticsClient$LogLevel;

.field private static final metrics:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;",
            ">;"
        }
    .end annotation
.end field

.field private static metricsEnabled:Z

.field private static final pendingErrors:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final pendingMetrics:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;",
            ">;"
        }
    .end annotation
.end field

.field private static refreshEnabled:Z

.field private static vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/AnalyticsClient;

    invoke-direct {v0}, Lcom/vungle/ads/AnalyticsClient;-><init>()V

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->errors:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->metrics:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->pendingErrors:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->pendingMetrics:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_ERROR:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->logLevel:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vungle/ads/AnalyticsClient;->refreshEnabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0}, Lcom/vungle/ads/AnalyticsClient;->initOrUpdate$lambda-1(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/vungle/ads/AnalyticsClient;->initOrUpdate$lambda-1$lambda-0()V

    return-void
.end method

.method public static synthetic c(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vungle/ads/AnalyticsClient;->logError$lambda-2(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    return-void
.end method

.method public static synthetic d(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/vungle/ads/AnalyticsClient;->logMetric$lambda-3(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method

.method private final flushErrors()V
    .locals 4

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vungle/ads/AnalyticsClient;->errors:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errors"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AnalyticsClient"

    invoke-virtual {v0, v3, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vungle/ads/AnalyticsClient$b;

    invoke-direct {v2, v0}, Lcom/vungle/ads/AnalyticsClient$b;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v1, v0, v2}, Lcom/vungle/ads/internal/network/VungleApiClient;->reportErrors(Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/AnalyticsClient$a;)V

    :cond_1
    return-void
.end method

.method private final flushMetrics()V
    .locals 4

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vungle/ads/AnalyticsClient;->metrics:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " metrics"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AnalyticsClient"

    invoke-virtual {v0, v3, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vungle/ads/AnalyticsClient$c;

    invoke-direct {v2, v0}, Lcom/vungle/ads/AnalyticsClient$c;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v1, v0, v2}, Lcom/vungle/ads/internal/network/VungleApiClient;->reportMetrics(Ljava/util/concurrent/BlockingQueue;Lcom/vungle/ads/AnalyticsClient$a;)V

    :cond_1
    return-void
.end method

.method private final genMetric(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;
    .locals 1

    invoke-static {}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric;->newBuilder()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setValue(J)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setMake(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setModel(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    const-string p3, "Amazon"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "amazon"

    goto :goto_0

    :cond_0
    const-string p2, "android"

    :goto_0
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setOs(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setOsVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    const-string p2, ""

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/vungle/ads/internal/util/n;->getPlacementRefId$vungle_ads_release()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_2

    :cond_1
    move-object p3, p2

    :cond_2
    invoke-virtual {p1, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setPlacementReferenceId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/vungle/ads/internal/util/n;->getCreativeId$vungle_ads_release()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_4

    :cond_3
    move-object p3, p2

    :cond_4
    invoke-virtual {p1, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setCreativeId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    if-eqz p4, :cond_5

    invoke-virtual {p4}, Lcom/vungle/ads/internal/util/n;->getEventId$vungle_ads_release()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_6

    :cond_5
    move-object p3, p2

    :cond_6
    invoke-virtual {p1, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setEventId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    if-nez p5, :cond_7

    move-object p5, p2

    :cond_7
    invoke-virtual {p1, p5}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setMeta(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    if-eqz p4, :cond_8

    invoke-virtual {p4}, Lcom/vungle/ads/internal/util/n;->getMediationName$vungle_ads_release()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9

    :cond_8
    sget-object p3, Lcom/vungle/ads/internal/network/k;->INSTANCE:Lcom/vungle/ads/internal/network/k;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/network/k;->getHeaderUa()Ljava/lang/String;

    move-result-object p3

    :cond_9
    invoke-virtual {p1, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setMediationName(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Lcom/vungle/ads/internal/util/n;->getAdSource$vungle_ads_release()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_b

    :cond_a
    move-object p3, p2

    :cond_b
    invoke-virtual {p1, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setAdSource(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    if-eqz p4, :cond_d

    invoke-virtual {p4}, Lcom/vungle/ads/internal/util/n;->getVmVersion$vungle_ads_release()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_c

    goto :goto_1

    :cond_c
    move-object p2, p3

    :cond_d
    :goto_1
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setVmVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    sget-object p2, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/a$a;->isForeground()Z

    move-result p2

    if-eqz p2, :cond_e

    const-wide/16 p2, 0x0

    goto :goto_2

    :cond_e
    const-wide/16 p2, 0x2

    :goto_2
    invoke-virtual {p1, p2, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->setAppState(J)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p1

    const-string p2, "newBuilder()\n           \u2026isForeground()) 0 else 2)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic genMetric$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move-object v4, p3

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, p3

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->genMetric(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p0

    return-object p0
.end method

.method private final genSDKError(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;
    .locals 3

    invoke-static {}, Lcom/vungle/ads/internal/protos/Sdk$SDKError;->newBuilder()Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "amazon"

    goto :goto_0

    :cond_0
    const-string v2, "android"

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setOs(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setOsVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setMake(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setModel(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setReason(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setMessage(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setAt(J)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    const-string p2, ""

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/n;->getPlacementRefId$vungle_ads_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setPlacementReferenceId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/n;->getCreativeId$vungle_ads_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    move-object v0, p2

    :cond_4
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setCreativeId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/n;->getEventId$vungle_ads_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_5
    move-object v0, p2

    :cond_6
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setEventId(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/n;->getAdSource$vungle_ads_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    move-object v0, p2

    :cond_8
    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setAdSource(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/n;->getVmVersion$vungle_ads_release()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    move-object p2, v0

    :cond_a
    :goto_1
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setVmVersion(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/n;->getMediationName$vungle_ads_release()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_c

    :cond_b
    sget-object p2, Lcom/vungle/ads/internal/network/k;->INSTANCE:Lcom/vungle/ads/internal/network/k;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/network/k;->getHeaderUa()Ljava/lang/String;

    move-result-object p2

    :cond_c
    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setMediationName(Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    sget-object p2, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/a$a;->isForeground()Z

    move-result p2

    if-eqz p2, :cond_d

    const-wide/16 p2, 0x0

    goto :goto_2

    :cond_d
    const-wide/16 p2, 0x2

    :goto_2
    invoke-virtual {p1, p2, p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->setAppState(J)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p1

    const-string p2, "newBuilder()\n           \u2026isForeground()) 0 else 2)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic genSDKError$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;ILjava/lang/Object;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->genSDKError(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getErrors$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExecutor$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMetrics$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMetricsEnabled$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPendingErrors$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPendingMetrics$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRefreshEnabled$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVungleApiClient$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private static final initOrUpdate$lambda-1(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 1

    const-string v0, "$executor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/d;

    invoke-direct {v0}, Lcom/vungle/ads/d;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final initOrUpdate$lambda-1$lambda-0()V
    .locals 1

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    invoke-direct {v0}, Lcom/vungle/ads/AnalyticsClient;->report()V

    return-void
.end method

.method public static synthetic isInitialized$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private static final logError$lambda-2(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V
    .locals 1

    const-string v0, "$reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    invoke-direct {v0, p0, p1, p2}, Lcom/vungle/ads/AnalyticsClient;->logErrorInSameThread(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    return-void
.end method

.method public static synthetic logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    return-void
.end method

.method private final declared-synchronized logErrorInSameThread(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->logLevel:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    sget-object v1, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_OFF:Lcom/vungle/ads/AnalyticsClient$LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->genSDKError(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object p3

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->errors:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v2, "AnalyticsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with message: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mediation: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;->getMediationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    const/16 p2, 0x14

    if-lt p1, p2, :cond_1

    invoke-direct {p0}, Lcom/vungle/ads/AnalyticsClient;->report()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p3, "AnalyticsClient"

    const-string v0, "Cannot logError"

    invoke-virtual {p2, p3, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method static synthetic logErrorInSameThread$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->logErrorInSameThread(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    return-void
.end method

.method private static final logMetric$lambda-3(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 7

    const-string v0, "$metricType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetricInSameThread(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move-object v4, p3

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, p3

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/t;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/p;->getMeta()Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/t;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/p;->getMeta()Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/p;->getMeta()Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized logMetricInSameThread(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/vungle/ads/AnalyticsClient;->metricsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/vungle/ads/AnalyticsClient;->genMetric(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object p5

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->metrics:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v2, "AnalyticsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logging Metric "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with value "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " for placement "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/vungle/ads/internal/util/n;->getPlacementRefId$vungle_ads_release()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mediation:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;->getMediationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    const/16 p2, 0x14

    if-lt p1, p2, :cond_2

    invoke-direct {p0}, Lcom/vungle/ads/AnalyticsClient;->report()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p3, "AnalyticsClient"

    const-string p4, "Cannot logMetrics"

    invoke-virtual {p2, p3, p4, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method static synthetic logMetricInSameThread$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move-object v4, p3

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, p3

    goto :goto_1

    :cond_2
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/AnalyticsClient;->logMetricInSameThread(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized report()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->logLevel:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    sget-object v1, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_OFF:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->errors:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/vungle/ads/AnalyticsClient;->flushErrors()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/vungle/ads/AnalyticsClient;->metricsEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->metrics:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/vungle/ads/AnalyticsClient;->flushMetrics()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getErrors$vungle_ads_release()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->errors:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public final getExecutor$vungle_ads_release()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-object v0
.end method

.method public final getMetrics$vungle_ads_release()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->metrics:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public final getMetricsEnabled$vungle_ads_release()Z
    .locals 1

    sget-boolean v0, Lcom/vungle/ads/AnalyticsClient;->metricsEnabled:Z

    return v0
.end method

.method public final getPendingErrors$vungle_ads_release()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->pendingErrors:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public final getPendingMetrics$vungle_ads_release()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->pendingMetrics:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public final getRefreshEnabled$vungle_ads_release()Z
    .locals 1

    sget-boolean v0, Lcom/vungle/ads/AnalyticsClient;->refreshEnabled:Z

    return v0
.end method

.method public final getVungleApiClient$vungle_ads_release()Lcom/vungle/ads/internal/network/VungleApiClient;
    .locals 1

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object v0
.end method

.method public final declared-synchronized initOrUpdate$vungle_ads_release(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;IZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "vungleApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/AnalyticsClient$LogLevel;->Companion:Lcom/vungle/ads/AnalyticsClient$LogLevel$a;

    invoke-virtual {v0, p3}, Lcom/vungle/ads/AnalyticsClient$LogLevel$a;->fromValue(I)Lcom/vungle/ads/AnalyticsClient$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/AnalyticsClient;->logLevel:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    sput-boolean p4, Lcom/vungle/ads/AnalyticsClient;->metricsEnabled:Z

    sget-object p4, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_DEBUG:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    invoke-virtual {p4}, Lcom/vungle/ads/AnalyticsClient$LogLevel;->getLevel()I

    move-result p4

    const/4 v0, 0x1

    if-ne p3, p4, :cond_0

    sget-object p3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    invoke-virtual {p3, v0}, Lcom/vungle/ads/internal/util/o$a;->enable(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    sget-object p4, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_ERROR:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    invoke-virtual {p4}, Lcom/vungle/ads/AnalyticsClient$LogLevel;->getLevel()I

    move-result p4

    const/4 v1, 0x0

    if-ne p3, p4, :cond_1

    sget-object p3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    invoke-virtual {p3, v1}, Lcom/vungle/ads/internal/util/o$a;->enable(Z)V

    goto :goto_0

    :cond_1
    sget-object p4, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_OFF:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    invoke-virtual {p4}, Lcom/vungle/ads/AnalyticsClient$LogLevel;->getLevel()I

    move-result p4

    if-ne p3, p4, :cond_2

    sget-object p3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    invoke-virtual {p3, v1}, Lcom/vungle/ads/internal/util/o$a;->enable(Z)V

    :cond_2
    :goto_0
    sget-object p3, Lcom/vungle/ads/AnalyticsClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "AnalyticsClient"

    const-string p3, "AnalyticsClient already initialized"

    invoke-virtual {p1, p2, p3}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sput-object p2, Lcom/vungle/ads/AnalyticsClient;->executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    sput-object p1, Lcom/vungle/ads/AnalyticsClient;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p1, Lcom/vungle/ads/AnalyticsClient;->pendingErrors:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    sget-object p3, Lcom/vungle/ads/AnalyticsClient;->errors:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    sget-object p3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p4, "AnalyticsClient"

    const-string v0, "Failed to add pendingErrors to errors queue."

    invoke-virtual {p3, p4, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_1
    :try_start_4
    sget-object p1, Lcom/vungle/ads/AnalyticsClient;->pendingMetrics:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    sget-object p3, Lcom/vungle/ads/AnalyticsClient;->metrics:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_5
    sget-object p3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p4, "AnalyticsClient"

    const-string v0, "Failed to add pendingMetrics to metrics queue."

    invoke-virtual {p3, p4, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_2
    sget-boolean p1, Lcom/vungle/ads/AnalyticsClient;->refreshEnabled:Z

    if-eqz p1, :cond_6

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/f;

    invoke-direct {v1, p2}, Lcom/vungle/ads/f;-><init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0x1388

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final isInitialized$vungle_ads_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final declared-synchronized logError$vungle_ads_release(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->genSDKError(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/protos/Sdk$SDKError$a;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->pendingErrors:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    new-instance v1, Lcom/vungle/ads/e;

    invoke-direct {v1, p1, p2, p3}, Lcom/vungle/ads/e;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;Lcom/vungle/ads/internal/util/n;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v2, "AnalyticsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot logError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logMetric$vungle_ads_release(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "metricType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/vungle/ads/AnalyticsClient;->executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/vungle/ads/AnalyticsClient;->genMetric(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$a;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->pendingMetrics:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    new-instance v7, Lcom/vungle/ads/c;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/c;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_3
    sget-object v1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v2, "AnalyticsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot logMetric "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logMetric$vungle_ads_release(Lcom/vungle/ads/t;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "oneShotTimeIntervalMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/t;->isLogged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/t;->markLogged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logMetric$vungle_ads_release(Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "singleValueMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/p;->getMetricType()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/ads/w;->getValue()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized logMetric$vungle_ads_release(Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "timeIntervalMetric"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/p;->getMetricType()Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/vungle/ads/x;->getValue()J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;JLcom/vungle/ads/internal/util/n;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setExecutor$vungle_ads_release(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 0

    sput-object p1, Lcom/vungle/ads/AnalyticsClient;->executor:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-void
.end method

.method public final setMetricsEnabled$vungle_ads_release(Z)V
    .locals 0

    sput-boolean p1, Lcom/vungle/ads/AnalyticsClient;->metricsEnabled:Z

    return-void
.end method

.method public final setRefreshEnabled$vungle_ads_release(Z)V
    .locals 0

    sput-boolean p1, Lcom/vungle/ads/AnalyticsClient;->refreshEnabled:Z

    return-void
.end method

.method public final setVungleApiClient$vungle_ads_release(Lcom/vungle/ads/internal/network/VungleApiClient;)V
    .locals 0

    sput-object p1, Lcom/vungle/ads/AnalyticsClient;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-void
.end method
