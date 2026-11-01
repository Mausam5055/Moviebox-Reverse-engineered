.class public final Lcom/vungle/ads/internal/signals/SignalManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/signals/SignalManager$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/signals/SignalManager$a;

.field public static final SESSION_COUNT_KEY:Ljava/lang/String; = "vungle_signal_session_count"

.field private static final SESSION_COUNT_NOT_SET:I = -0x1

.field public static final SESSION_TIME_KEY:Ljava/lang/String; = "vungle_signal_session_creation_time"

.field public static final SIGNAL_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SignalManager"

.field public static final TWENTY_FOUR_HOURS_MILLIS:J = 0x5265c00L


# instance fields
.field private final context:Landroid/content/Context;

.field private currentSession:Lcom/vungle/ads/internal/signals/a;

.field private enterBackgroundTime:J

.field private enterForegroundTime:J

.field private final filePreferences$delegate:Lkotlin/Lazy;

.field private final json:Lkotlinx/serialization/json/a;

.field private mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sessionCount:I

.field private sessionDuration:J

.field private sessionSeriesCreatedTime:J

.field private unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/signals/SignalManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/SignalManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/signals/SignalManager;->Companion:Lcom/vungle/ads/internal/signals/SignalManager$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->context:Landroid/content/Context;

    sget-object v0, Lcom/vungle/ads/internal/signals/SignalManager$json$1;->INSTANCE:Lcom/vungle/ads/internal/signals/SignalManager$json$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->json:Lkotlinx/serialization/json/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->filePreferences$delegate:Lkotlin/Lazy;

    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->registerNotifications()V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    move-result-object v1

    const-string v2, "vungle_signal_session_creation_time"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/vungle/ads/internal/persistence/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->updateSessionCount()V

    new-instance v1, Lcom/vungle/ads/internal/signals/a;

    iget v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    invoke-direct {v1, v2}, Lcom/vungle/ads/internal/signals/a;-><init>(I)V

    iput-object v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    new-instance v1, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$2;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    new-instance v2, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$3;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/signals/SignalManager$special$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-instance v2, Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    iget-object v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/signals/a;->getSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/vungle/ads/internal/signals/SignalManager;->_init_$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v1

    invoke-static {v0}, Lcom/vungle/ads/internal/signals/SignalManager;->_init_$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/p;

    move-result-object v0

    invoke-direct {v2, p1, v3, v1, v0}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/executor/a;Lcom/vungle/ads/internal/util/p;)V

    iput-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    iget-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v2}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;->retrieveUnclosedAd()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/signals/a;->setUnclosedAd(Ljava/util/List;)V

    return-void
.end method

.method private static final _init_$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vungle/ads/internal/executor/a;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method

.method private static final _init_$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/util/p;",
            ">;)",
            "Lcom/vungle/ads/internal/util/p;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/util/p;

    return-object p0
.end method

.method public static synthetic getCurrentSession$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private final registerNotifications()V
    .locals 2

    sget-object v0, Lcom/vungle/ads/internal/util/a;->Companion:Lcom/vungle/ads/internal/util/a$a;

    new-instance v1, Lcom/vungle/ads/internal/signals/SignalManager$b;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/signals/SignalManager$b;-><init>(Lcom/vungle/ads/internal/signals/SignalManager;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/a$a;->addLifecycleListener(Lcom/vungle/ads/internal/util/a$b;)V

    return-void
.end method

.method private final updateSessionCount()V
    .locals 9

    iget v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    const/4 v1, -0x1

    const-string v2, "vungle_signal_session_count"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/persistence/b;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    sub-long v5, v0, v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    const/4 v4, 0x1

    if-ltz v3, :cond_2

    const-wide/32 v7, 0x5265c00

    cmp-long v3, v5, v7

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v4, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    move-result-object v3

    const-string v4, "vungle_signal_session_creation_time"

    invoke-virtual {v3, v4, v0, v1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/b;

    iput-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    :goto_1
    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    move-result-object v0

    iget v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;I)Lcom/vungle/ads/internal/persistence/b;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->getFilePreferences()Lcom/vungle/ads/internal/persistence/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    return-void
.end method

.method private final updateSessionDuration()V
    .locals 5

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    iget-wide v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionDuration:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/signals/a;->setSessionDuration(J)V

    return-void
.end method


# virtual methods
.method public final createNewSessionData()V
    .locals 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->updateSessionCount()V

    new-instance v0, Lcom/vungle/ads/internal/signals/a;

    iget v1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/signals/a;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    return-void
.end method

.method public final generateSignals()Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/vungle/ads/internal/signals/SignalManager;->updateSessionDuration()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->json:Lkotlinx/serialization/json/a;

    iget-object v3, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-interface {v2}, Lkotlinx/serialization/e;->a()Lf00/c;

    move-result-object v4

    const-class v5, Lcom/vungle/ads/internal/signals/a;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v4, v3}, Lkotlinx/serialization/j;->c(Lkotlinx/serialization/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentSession$vungle_ads_release()Lcom/vungle/ads/internal/signals/a;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    return-object v0
.end method

.method public final getEnterBackgroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterBackgroundTime:J

    return-wide v0
.end method

.method public final getEnterForegroundTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    return-wide v0
.end method

.method public final getFilePreferences()Lcom/vungle/ads/internal/persistence/b;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->filePreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/persistence/b;

    return-object v0
.end method

.method public final getMapOfLastLoadTimes()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final getSessionCount()I
    .locals 1

    iget v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    return v0
.end method

.method public final getSessionDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionDuration:J

    return-wide v0
.end method

.method public final getSessionSeriesCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    return-wide v0
.end method

.method public final declared-synchronized getSignaledAd(Ljava/lang/String;)Lcom/vungle/ads/internal/signals/b;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/vungle/ads/internal/signals/b;

    invoke-direct {p1, v2, v0, v1}, Lcom/vungle/ads/internal/signals/b;-><init>(Ljava/lang/Long;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized increaseSessionDepthCounter()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSessionDepthCounter()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/signals/a;->setSessionDepthCounter(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final recordUnclosedAd(Lcom/vungle/ads/internal/model/j;)V
    .locals 1

    const-string v0, "unclosedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->signalsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;->addUnclosedAd(Lcom/vungle/ads/internal/model/j;)V

    return-void
.end method

.method public final registerSignaledAd(Landroid/content/Context;Lcom/vungle/ads/internal/signals/b;)V
    .locals 1

    const-string v0, "signaledAd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vungle/ads/internal/signals/b;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/signals/SignalManager;->screenOrientation(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/vungle/ads/internal/signals/b;->setScreenOrientation(I)V

    return-void
.end method

.method public final removeUnclosedAd(Lcom/vungle/ads/internal/model/j;)V
    .locals 1

    const-string v0, "unclosedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/ConfigManager;->signalsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->unclosedAdDetector:Lcom/vungle/ads/internal/session/UnclosedAdDetector;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/session/UnclosedAdDetector;->removeUnclosedAd(Lcom/vungle/ads/internal/model/j;)V

    return-void
.end method

.method public final screenOrientation(Landroid/content/Context;)I
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->context:Landroid/content/Context;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    goto :goto_4

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_7

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v1, -0x1

    :goto_4
    return v1
.end method

.method public final setCurrentSession$vungle_ads_release(Lcom/vungle/ads/internal/signals/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    return-void
.end method

.method public final setEnterBackgroundTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterBackgroundTime:J

    return-void
.end method

.method public final setEnterForegroundTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->enterForegroundTime:J

    return-void
.end method

.method public final setMapOfLastLoadTimes(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->mapOfLastLoadTimes:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final setSessionCount(I)V
    .locals 0

    iput p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionCount:I

    return-void
.end method

.method public final setSessionDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionDuration:J

    return-void
.end method

.method public final setSessionSeriesCreatedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/vungle/ads/internal/signals/SignalManager;->sessionSeriesCreatedTime:J

    return-void
.end method

.method public final updateTemplateSignals(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vungle/ads/internal/signals/SignalManager;->currentSession:Lcom/vungle/ads/internal/signals/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/signals/a;->getSignaledAd()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/signals/b;

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/signals/b;->setTemplateSignals(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
