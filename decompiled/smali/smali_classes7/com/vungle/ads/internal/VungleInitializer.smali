.class public final Lcom/vungle/ads/internal/VungleInitializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/VungleInitializer$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/VungleInitializer$a;

.field private static final TAG:Ljava/lang/String; = "VungleInitializer"


# instance fields
.field private final initDurationMetric:Lcom/vungle/ads/x;

.field private final initializationCallbackArray:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/vungle/ads/m;",
            ">;"
        }
    .end annotation
.end field

.field private isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/VungleInitializer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/VungleInitializer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/VungleInitializer;->Companion:Lcom/vungle/ads/internal/VungleInitializer$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initializationCallbackArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/vungle/ads/x;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->INIT_TO_SUCCESS_CALLBACK_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v1}, Lcom/vungle/ads/x;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lkotlin/Lazy;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-2(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lkotlin/Lazy;)V

    return-void
.end method

.method public static final synthetic access$downloadMraidJs(Lcom/vungle/ads/internal/VungleInitializer;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->downloadMraidJs(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getInitializationCallbackArray$p(Lcom/vungle/ads/internal/VungleInitializer;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initializationCallbackArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/VungleInitializer;)V
    .locals 0

    invoke-static {p0}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-3(Lcom/vungle/ads/internal/VungleInitializer;)V

    return-void
.end method

.method private final configure(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    const-string v0, "VungleInitializer"

    :try_start_0
    sget-object v1, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/vungle/ads/internal/VungleInitializer$configure$$inlined$inject$1;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/VungleInitializer$configure$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    sget-object v10, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-static {v2}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object v2

    invoke-virtual {v10, v2, p2}, Lcom/vungle/ads/internal/ConfigManager;->getCachedConfig(Lcom/vungle/ads/internal/persistence/b;Ljava/lang/String;)Lcom/vungle/ads/internal/model/ConfigPayload;

    move-result-object v5

    const/4 p2, 0x1

    if-eqz v5, :cond_0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v10

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$vungle_ads_release$default(Lcom/vungle/ads/internal/ConfigManager;Landroid/content/Context;Lcom/vungle/ads/internal/model/ConfigPayload;ZLcom/vungle/ads/w;ILjava/lang/Object;)V

    move v2, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/vungle/ads/internal/VungleInitializer;->onInitSuccess()V

    sget-object v3, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running cleanup and resend tpat jobs. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/vungle/ads/internal/VungleInitializer$configure$$inlined$inject$2;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/VungleInitializer$configure$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/task/d;

    move-result-object v1

    sget-object v3, Lcom/vungle/ads/internal/task/CleanupJob;->Companion:Lcom/vungle/ads/internal/task/CleanupJob$a;

    const/4 v4, 0x0

    invoke-static {v3, v4, p2, v4}, Lcom/vungle/ads/internal/task/CleanupJob$a;->makeJobInfo$default(Lcom/vungle/ads/internal/task/CleanupJob$a;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/task/c;

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/vungle/ads/internal/task/d;->execute(Lcom/vungle/ads/internal/task/c;)V

    if-nez v2, :cond_1

    new-instance p2, Lcom/vungle/ads/internal/VungleInitializer$configure$1;

    invoke-direct {p2, p0, p1}, Lcom/vungle/ads/internal/VungleInitializer$configure$1;-><init>(Lcom/vungle/ads/internal/VungleInitializer;Landroid/content/Context;)V

    invoke-virtual {v10, p1, p2}, Lcom/vungle/ads/internal/ConfigManager;->fetchConfigAsync$vungle_ads_release(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->downloadMraidJs(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "Cannot get config"

    invoke-virtual {p2, v0, v1, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private static final configure$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/persistence/b;",
            ">;)",
            "Lcom/vungle/ads/internal/persistence/b;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/persistence/b;

    return-object p0
.end method

.method private static final configure$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/task/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vungle/ads/internal/task/d;",
            ">;)",
            "Lcom/vungle/ads/internal/task/d;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/task/d;

    return-object p0
.end method

.method private final downloadMraidJs(Landroid/content/Context;)V
    .locals 11

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$downloadMraidJs$$inlined$inject$1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInitializer$downloadMraidJs$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    new-instance v2, Lcom/vungle/ads/internal/VungleInitializer$downloadMraidJs$$inlined$inject$2;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/VungleInitializer$downloadMraidJs$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lcom/vungle/ads/internal/VungleInitializer$downloadMraidJs$$inlined$inject$3;

    invoke-direct {v3, p1}, Lcom/vungle/ads/internal/VungleInitializer$downloadMraidJs$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    sget-object v3, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->downloadMraidJs$lambda-6(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/p;

    move-result-object v4

    invoke-static {v2}, Lcom/vungle/ads/internal/VungleInitializer;->downloadMraidJs$lambda-7(Lkotlin/Lazy;)Lcom/vungle/ads/internal/downloader/Downloader;

    move-result-object v5

    invoke-static {p1}, Lcom/vungle/ads/internal/VungleInitializer;->downloadMraidJs$lambda-8(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/vungle/ads/internal/executor/a;->getBackgroundExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v6

    const/16 v9, 0x18

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/vungle/ads/internal/load/i;->downloadJs$default(Lcom/vungle/ads/internal/load/i;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;ILjava/lang/Object;)V

    return-void
.end method

.method private static final downloadMraidJs$lambda-6(Lkotlin/Lazy;)Lcom/vungle/ads/internal/util/p;
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

.method private static final downloadMraidJs$lambda-7(Lkotlin/Lazy;)Lcom/vungle/ads/internal/downloader/Downloader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "+",
            "Lcom/vungle/ads/internal/downloader/Downloader;",
            ">;)",
            "Lcom/vungle/ads/internal/downloader/Downloader;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/downloader/Downloader;

    return-object p0
.end method

.method private static final downloadMraidJs$lambda-8(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
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

.method private final hasInvalidChar(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static final init$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
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

.method private static final init$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/network/VungleApiClient;",
            ">;)",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object p0
.end method

.method private static final init$lambda-2(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lkotlin/Lazy;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$vungleApiClient$delegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->init(Landroid/content/Context;)V

    invoke-static {p3}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->initialize(Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static final init$lambda-3(Lcom/vungle/ads/internal/VungleInitializer;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/OutOfMemory;

    const-string v1, "Config: Out of Memory"

    invoke-direct {v0, v1}, Lcom/vungle/ads/OutOfMemory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method private final isAppIdInvalid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->hasInvalidChar(Ljava/lang/String;)Z

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

.method public static synthetic isInitialized$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isInitializing$vungle_ads_release$annotations()V
    .locals 0

    return-void
.end method

.method private final onInitError(Lcom/vungle/ads/VungleError;)V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    sget-object v2, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->INIT_TO_FAIL_CALLBACK_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-virtual {v1, v2}, Lcom/vungle/ads/p;->setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    invoke-virtual {v1}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object v2, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release(Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v2, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;

    invoke-direct {v2, p0, p1}, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;-><init>(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/VungleError;)V

    invoke-virtual {v1, v2}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "VungleInitializer"

    invoke-virtual {p1, v1, v0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final onInitSuccess()V
    .locals 7

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->INIT_TO_SUCCESS_CALLBACK_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/p;->setMetricType(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markEnd()V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object v2, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/x;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VungleInitializer"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/vungle/ads/internal/util/u;->INSTANCE:Lcom/vungle/ads/internal/util/u;

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$onInitSuccess$1;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/VungleInitializer$onInitSuccess$1;-><init>(Lcom/vungle/ads/internal/VungleInitializer;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/u;->runOnUiThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final deInit$vungle_ads_release()V
    .locals 2

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/ServiceLocator$Companion;->deInit()V

    sget-object v0, Lcom/vungle/ads/internal/network/VungleApiClient;->Companion:Lcom/vungle/ads/internal/network/VungleApiClient$a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/VungleApiClient$a;->reset$vungle_ads_release()V

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initializationCallbackArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/m;)V
    .locals 7

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    new-instance v2, Lcom/vungle/ads/w;

    sget-object v0, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->SDK_INIT_API:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v2, v0}, Lcom/vungle/ads/w;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initDurationMetric:Lcom/vungle/ads/x;

    invoke-virtual {v0}, Lcom/vungle/ads/x;->markStart()V

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initializationCallbackArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->isAppIdInvalid(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App id invalid: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", package name: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/vungle/ads/InvalidAppId;

    invoke-direct {p2, p1}, Lcom/vungle/ads/InvalidAppId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_0
    sget-object p3, Lcom/vungle/ads/internal/util/v;->INSTANCE:Lcom/vungle/ads/internal/util/v;

    invoke-virtual {p3}, Lcom/vungle/ads/internal/util/v;->isOSVersionInvalid()Z

    move-result p3

    const-string v0, "VungleInitializer"

    if-eqz p3, :cond_1

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "Init: SDK is supported only for API versions 25 and above."

    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/vungle/ads/SdkVersionTooLow;

    invoke-direct {p1, p2}, Lcom/vungle/ads/SdkVersionTooLow;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_1
    sget-object p3, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {p3, p1}, Lcom/vungle/ads/internal/ConfigManager;->setAppId$vungle_ads_release(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "init already complete"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/vungle/ads/internal/VungleInitializer;->onInitSuccess()V

    return-void

    :cond_2
    iget-object p3, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "init already in progress"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string p3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p2, p3}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "android.permission.INTERNET"

    invoke-static {p2, p3}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    sget-object p3, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object p3, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/vungle/ads/internal/VungleInitializer$init$$inlined$inject$1;

    invoke-direct {v0, p2}, Lcom/vungle/ads/internal/VungleInitializer$init$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {p3, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$init$$inlined$inject$2;

    invoke-direct {v1, p2}, Lcom/vungle/ads/internal/VungleInitializer$init$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {p3, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p3

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/a;->getBackgroundExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/internal/h;

    invoke-direct {v1, p2, p1, p0, p3}, Lcom/vungle/ads/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lkotlin/Lazy;)V

    new-instance p1, Lcom/vungle/ads/internal/i;

    invoke-direct {p1, p0}, Lcom/vungle/ads/internal/i;-><init>(Lcom/vungle/ads/internal/VungleInitializer;)V

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_0
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "Network permissions not granted"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/vungle/ads/SdkNotInitialized;

    invoke-direct {p1, p2}, Lcom/vungle/ads/SdkNotInitialized;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public final isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final isInitialized$vungle_ads_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final isInitializing$vungle_ads_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final setInitialized$vungle_ads_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setInitializing$vungle_ads_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public final setIntegrationName(Lcom/vungle/ads/VungleWrapperFramework;Ljava/lang/String;)V
    .locals 5

    const-string v0, "wrapperFramework"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapperFrameworkVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/VungleWrapperFramework;->none:Lcom/vungle/ads/VungleWrapperFramework;

    const-string v1, "VungleInitializer"

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "Wrapper is null or is none"

    invoke-virtual {p1, v1, p2}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/network/k;->INSTANCE:Lcom/vungle/ads/internal/network/k;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/k;->getHeaderUa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, p1, v4, p2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "Wrapper info already set"

    invoke-virtual {p1, v1, p2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3b

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/network/k;->setHeaderUa(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "VUNGLE WARNING: SDK already initialized, you should\'ve set wrapper info before"

    invoke-virtual {p1, v1, p2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
