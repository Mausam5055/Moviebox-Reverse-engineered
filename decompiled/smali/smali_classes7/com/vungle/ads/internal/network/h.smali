.class public final Lcom/vungle/ads/internal/network/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/h$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/h$a;

.field private static final FAILED_TPATS:Ljava/lang/String; = "FAILED_TPATS"

.field private static final TAG:Ljava/lang/String; = "TpatSender"


# instance fields
.field private final jobExecutor:Ljava/util/concurrent/Executor;

.field private final signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

.field private final tpatFilePreferences:Lcom/vungle/ads/internal/persistence/b;

.field private final tpatLock:Ljava/lang/Object;

.field private final vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/network/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/network/h;->Companion:Lcom/vungle/ads/internal/network/h$a;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/signals/SignalManager;)V
    .locals 1

    const-string v0, "vungleApiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jobExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/h;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    iput-object p3, p0, Lcom/vungle/ads/internal/network/h;->jobExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/vungle/ads/internal/network/h;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    sget-object p1, Lcom/vungle/ads/internal/persistence/b;->Companion:Lcom/vungle/ads/internal/persistence/b$a;

    const-string p3, "vngFailedTpats"

    invoke-virtual {p1, p2, p4, p3}, Lcom/vungle/ads/internal/persistence/b$a;->get(Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/h;->tpatFilePreferences:Lcom/vungle/ads/internal/persistence/b;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/h;->tpatLock:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/signals/SignalManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/network/h;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/signals/SignalManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/vungle/ads/internal/network/h;->sendTpat$lambda-1(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Z)V

    return-void
.end method

.method private final getStoredTpats()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/network/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/network/h;->tpatFilePreferences:Lcom/vungle/ads/internal/persistence/b;

    const-string v1, "FAILED_TPATS"

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    invoke-interface {v1}, Lkotlinx/serialization/e;->a()Lf00/c;

    move-result-object v2

    const-class v3, Ljava/util/Map;

    sget-object v4, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v5, Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v5

    const-class v6, Lcom/vungle/ads/internal/network/c;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lkotlin/jvm/internal/Reflection;->o(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->d(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode stored tpats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TpatSender"

    invoke-virtual {v2, v3, v1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_1
    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_3
    return-object v0
.end method

.method private final isPriorityTpat(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "checkpoint.0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "clickUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "impression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "load_ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final logTpatError(Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Lcom/vungle/ads/internal/model/e;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tpat key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getTpatKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/e;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorIsTerminal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/e;->getErrorIsTerminal()Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " url: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "TpatSender"

    invoke-virtual {p3, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/vungle/ads/TpatError;

    invoke-direct {p3, p4, p2}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    return-void
.end method

.method private final performPriorityRetry(Lcom/vungle/ads/internal/network/f;Ljava/lang/String;)Lcom/vungle/ads/internal/model/e;
    .locals 10

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getPriorityRetry()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getTpatKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/network/h;->isPriorityTpat(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ConfigManager;->retryPriorityTPATs()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/vungle/ads/internal/network/h;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getMethod()Lcom/vungle/ads/internal/network/HttpMethod;

    move-result-object v8

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getLogEntry()Lcom/vungle/ads/internal/util/n;

    move-result-object v9

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/vungle/ads/internal/network/VungleApiClient;->pingTPAT(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/vungle/ads/internal/network/HttpMethod;Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/internal/model/e;

    move-result-object v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/e;->isRetryCode()Z

    move-result v4

    if-ne v4, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getPriorityRetryCount()I

    move-result v4

    if-lt v2, v4, :cond_2

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getPriorityRetryCount()I

    move-result v0

    if-lt v2, v0, :cond_4

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_RETRY_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    :goto_2
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/vungle/ads/internal/network/h;->logTpatError(Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Lcom/vungle/ads/internal/model/e;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)V

    :cond_5
    return-object v1
.end method

.method private final saveStoredTpats(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vungle/ads/internal/network/c;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vungle/ads/internal/network/h;->tpatFilePreferences:Lcom/vungle/ads/internal/persistence/b;

    const-string v1, "FAILED_TPATS"

    sget-object v2, Lkotlinx/serialization/json/a;->d:Lkotlinx/serialization/json/a$a;

    invoke-interface {v2}, Lkotlinx/serialization/e;->a()Lf00/c;

    move-result-object v3

    const-class v4, Ljava/util/Map;

    sget-object v5, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    const-class v6, Ljava/lang/String;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    const-class v7, Lcom/vungle/ads/internal/network/c;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lkotlin/jvm/internal/Reflection;->o(Ljava/lang/Class;Lkotlin/reflect/KTypeProjection;Lkotlin/reflect/KTypeProjection;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->d(Lkotlin/reflect/KType;)Lkotlin/reflect/KType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, p1}, Lkotlinx/serialization/j;->c(Lkotlinx/serialization/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to encode the about to storing tpats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TpatSender"

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/internal/network/h;->sendTpat(Lcom/vungle/ads/internal/network/f;Z)V

    return-void
.end method

.method private static final sendTpat$lambda-1(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "this$0"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$request"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$urlWithSessionId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/vungle/ads/internal/network/h;->performPriorityRetry(Lcom/vungle/ads/internal/network/f;Ljava/lang/String;)Lcom/vungle/ads/internal/model/e;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getRegularRetry()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/e;->getErrorIsTerminal()Z

    move-result v5

    if-ne v5, v4, :cond_1

    return-void

    :cond_1
    if-nez v3, :cond_2

    if-nez p3, :cond_2

    return-void

    :cond_2
    iget-object v5, v0, Lcom/vungle/ads/internal/network/h;->tpatLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/vungle/ads/internal/network/h;->getStoredTpats()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vungle/ads/internal/network/c;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/vungle/ads/internal/network/c;->getRetryAttempt()I

    move-result v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-nez v3, :cond_4

    if-lez v7, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v6}, Lcom/vungle/ads/internal/network/h;->saveStoredTpats(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getRegularRetryCount()I

    move-result v8

    if-lt v7, v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v6}, Lcom/vungle/ads/internal/network/h;->saveStoredTpats(Ljava/util/Map;)V

    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->TPAT_RETRY_FAILED:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/network/h;->logTpatError(Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Lcom/vungle/ads/internal/model/e;Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;)V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/vungle/ads/internal/network/c;

    if-eqz v8, :cond_6

    add-int/lit8 v12, v7, 0x1

    const/16 v15, 0x37

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v16}, Lcom/vungle/ads/internal/network/c;->copy$default(Lcom/vungle/ads/internal/network/c;Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/network/c;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    new-instance v2, Lcom/vungle/ads/internal/network/c;

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getMethod()Lcom/vungle/ads/internal/network/HttpMethod;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getHeaders()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getRegularRetryCount()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getTpatKey()Ljava/lang/String;

    move-result-object v13

    const/4 v11, 0x1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/vungle/ads/internal/network/c;-><init>(Lcom/vungle/ads/internal/network/HttpMethod;Ljava/util/Map;Ljava/lang/String;IILjava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/vungle/ads/internal/network/f;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v6}, Lcom/vungle/ads/internal/network/h;->saveStoredTpats(Ljava/util/Map;)V

    :cond_8
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :goto_2
    monitor-exit v5

    throw v0
.end method


# virtual methods
.method public final getJobExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/h;->jobExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getSignalManager()Lcom/vungle/ads/internal/signals/SignalManager;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/h;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    return-object v0
.end method

.method public final getVungleApiClient()Lcom/vungle/ads/internal/network/VungleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/h;->vungleApiClient:Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object v0
.end method

.method public final injectSessionIdToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/network/h;->signalManager:Lcom/vungle/ads/internal/signals/SignalManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/SignalManager;->getUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "{{{session_id}}}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "quote(Constants.SESSION_ID)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public final resendStoredTpats$vungle_ads_release()V
    .locals 5

    invoke-direct {p0}, Lcom/vungle/ads/internal/network/h;->getStoredTpats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/network/c;

    new-instance v3, Lcom/vungle/ads/internal/network/f$a;

    invoke-direct {v3, v2}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/vungle/ads/internal/network/f$a;->regularRetry(Z)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/f$a;->priorityRetry(Z)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/c;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/f$a;->headers(Ljava/util/Map;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/c;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/f$a;->body(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/c;->getRetryCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/f$a;->regularRetryCount(I)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/c;->getMethod()Lcom/vungle/ads/internal/network/HttpMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/ads/internal/network/f$a;->method(Lcom/vungle/ads/internal/network/HttpMethod;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/c;->getTpatKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/vungle/ads/internal/network/h;->sendTpat(Lcom/vungle/ads/internal/network/f;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendTpat(Lcom/vungle/ads/internal/network/f;Z)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/network/f;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/network/h;->injectSessionIdToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/network/h;->jobExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/vungle/ads/internal/network/g;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/vungle/ads/internal/network/g;-><init>(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
