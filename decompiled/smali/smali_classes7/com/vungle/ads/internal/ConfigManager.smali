.class public final Lcom/vungle/ads/internal/ConfigManager;
.super Ljava/lang/Object;


# static fields
.field private static final CONFIG_ALL_DATA:I = 0x2

.field private static final CONFIG_LAST_VALIDATED_TIMESTAMP_ONLY:I = 0x1

.field public static final CONFIG_LAST_VALIDATE_TS_DEFAULT:J = -0x1L

.field private static final CONFIG_NOT_AVAILABLE:I = 0x0

.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0x384

.field private static final DEFAULT_SIGNALS_SESSION_TIMEOUT_SECONDS:I = 0x708

.field public static final INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

.field public static final TAG:Ljava/lang/String; = "ConfigManager"

.field private static applicationId:Ljava/lang/String;

.field private static config:Lcom/vungle/ads/internal/model/ConfigPayload;

.field private static configExt:Ljava/lang/String;

.field private static endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

.field private static final json:Lkotlinx/serialization/json/a;

.field private static placements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vungle/ads/internal/ConfigManager;

    invoke-direct {v0}, Lcom/vungle/ads/internal/ConfigManager;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager$json$1;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager$json$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->json:Lkotlinx/serialization/json/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final fetchConfigAsync$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;
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

.method private static final initWithConfig$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;
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

.method private static final initWithConfig$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;
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

.method private static final initWithConfig$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;
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

.method public static synthetic initWithConfig$vungle_ads_release$default(Lcom/vungle/ads/internal/ConfigManager;Landroid/content/Context;Lcom/vungle/ads/internal/model/ConfigPayload;ZLcom/vungle/ads/w;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$vungle_ads_release(Landroid/content/Context;Lcom/vungle/ads/internal/model/ConfigPayload;ZLcom/vungle/ads/w;)V

    return-void
.end method

.method private static final updateConfigExtension$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;
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

.method public static synthetic validateEndpoints$vungle_ads_release$default(Lcom/vungle/ads/internal/ConfigManager;Lcom/vungle/ads/internal/model/ConfigPayload$f;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/ConfigManager;->validateEndpoints$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload$f;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final afterClickDuration()J
    .locals 2

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getAutoRedirect()Lcom/vungle/ads/internal/model/ConfigPayload$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$b;->getAfterClickDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method public final allowAutoRedirects()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getAutoRedirect()Lcom/vungle/ads/internal/model/ConfigPayload$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$b;->getAllowAutoRedirect()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final checkConfigPayload$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    :cond_4
    :goto_1
    return v0
.end method

.method public final clearConfig$vungle_ads_release()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    sput-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    return-void
.end method

.method public final configLastValidatedTimestamp()J
    .locals 2

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public final fetchConfigAsync$vungle_ads_release(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$fetchConfigAsync$$inlined$inject$1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/ConfigManager$fetchConfigAsync$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/vungle/ads/internal/ConfigManager;->fetchConfigAsync$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/VungleApiClient;->config()Lcom/vungle/ads/internal/network/a;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$a;

    invoke-direct {v1, p2, p1}, Lcom/vungle/ads/internal/ConfigManager$a;-><init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/network/a;->enqueue(Lcom/vungle/ads/internal/network/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/lang/SecurityException;

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config unknown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/vungle/ads/NetworkUnreachable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/vungle/ads/NetworkUnreachable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    return-void
.end method

.method public final fpdEnabled()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getFpdEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final getAdsEndpoint()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getAdsEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    sget-object v1, Lcom/vungle/ads/internal/b;->DEFAULT_ADS_ENDPOINT:Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method public final getCachedConfig(Lcom/vungle/ads/internal/persistence/b;Ljava/lang/String;)Lcom/vungle/ads/internal/model/ConfigPayload;
    .locals 6

    const-string v0, "ConfigManager"

    const-string v1, "filePreferences"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "appId"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "config_app_id"

    invoke-virtual {p1, v2}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    invoke-static {v2, p2, v3}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "config_response"

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/persistence/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const-string v2, "config_update_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/vungle/ads/internal/persistence/b;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->json:Lkotlinx/serialization/json/a;

    invoke-interface {p1}, Lkotlinx/serialization/e;->a()Lf00/c;

    move-result-object v4

    const-class v5, Lcom/vungle/ads/internal/model/ConfigPayload;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4, p2}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/ads/internal/model/ConfigPayload;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigSettings()Lcom/vungle/ads/internal/model/ConfigPayload$e;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload$e;->getRefreshTime()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-wide/16 v4, -0x1

    :goto_0
    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p2, v4, v2

    if-gez p2, :cond_3

    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "cache config expired. re-config"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v2, "use cache config."

    invoke-virtual {p2, v0, v2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "app id mismatch, re-config"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_2
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing cached config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getCleverCacheDiskPercentage()I
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/ConfigPayload$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$c;->getDiskPercentage()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public final getCleverCacheDiskSize()J
    .locals 4

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/ConfigPayload$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$c;->getDiskSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v2, v2

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x3e800000

    return-wide v0
.end method

.method public final getConfigExtension()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->configExt:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public final getErrorLoggingEndpoint()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getErrorLogsEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    sget-object v1, Lcom/vungle/ads/internal/b;->DEFAULT_ERROR_LOGS_ENDPOINT:Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method public final getGDPRButtonAccept()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getButtonAccept()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGDPRButtonDeny()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getButtonDeny()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGDPRConsentMessage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getConsentMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGDPRConsentMessageVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getConsentMessageVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method public final getGDPRConsentTitle()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->getConsentTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getGDPRIsCountryDataProtected()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$g;->isCountryDataProtected()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getLogLevel()I
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getLogMetricsSettings()Lcom/vungle/ads/internal/model/ConfigPayload$h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$h;->getErrorLogLevel()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_ERROR:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    invoke-virtual {v0}, Lcom/vungle/ads/AnalyticsClient$LogLevel;->getLevel()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getMetricsEnabled()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getLogMetricsSettings()Lcom/vungle/ads/internal/model/ConfigPayload$h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$h;->getMetricsEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getMetricsEndpoint()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMetricsEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    sget-object v1, Lcom/vungle/ads/internal/b;->DEFAULT_METRICS_ENDPOINT:Ljava/lang/String;

    :cond_3
    return-object v1
.end method

.method public final getMraidEndpoint()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMraidEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMraidJsVersion()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMraidEndpoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "mraid_1"

    :cond_1
    return-object v0
.end method

.method public final getPlacement(Ljava/lang/String;)Lcom/vungle/ads/internal/model/g;
    .locals 4

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vungle/ads/internal/model/g;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/g;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/vungle/ads/internal/model/g;

    :cond_2
    return-object v1
.end method

.method public final getRiEndpoint()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getRiEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getSessionTimeout()J
    .locals 4

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x384

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getSignalsSessionTimeout()J
    .locals 4

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getSignalSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x708

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTcfStatus()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;
    .locals 2

    sget-object v0, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;->Companion:Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus$a;

    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getUserPrivacy()Lcom/vungle/ads/internal/model/ConfigPayload$i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/ConfigPayload$i;->getIab()Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings;->getTcfStatus()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus$a;->fromRawValue(Ljava/lang/Integer;)Lcom/vungle/ads/internal/model/ConfigPayload$IABSettings$TcfStatus;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized initWithConfig$vungle_ads_release(Landroid/content/Context;Lcom/vungle/ads/internal/model/ConfigPayload;ZLcom/vungle/ads/w;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/vungle/ads/internal/ConfigManager;->checkConfigPayload$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload;)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    sput-object p2, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move-object v3, v2

    :goto_0
    sput-object v3, Lcom/vungle/ads/internal/ConfigManager;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$f;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getPlacements()Ljava/util/List;

    move-result-object v2

    :cond_1
    sput-object v2, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getLogLevel()I

    move-result v2

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMetricsEnabled()Z

    move-result v3

    new-instance v4, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$2;

    invoke-direct {v4, p1}, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v4

    new-instance v5, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$3;

    invoke-direct {v5, p1}, Lcom/vungle/ads/internal/ConfigManager$initWithConfig$$inlined$inject$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sget-object v5, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    invoke-static {v4}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-4(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v4

    invoke-static {v0}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-5(Lkotlin/Lazy;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/a;->getLoggerExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v5, v4, v0, v2, v3}, Lcom/vungle/ads/AnalyticsClient;->initOrUpdate$vungle_ads_release(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;IZ)V

    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    invoke-static {v1}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/vungle/ads/internal/ConfigManager;->updateCachedConfig(Lcom/vungle/ads/internal/model/ConfigPayload;Lcom/vungle/ads/internal/persistence/b;)V

    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigExtension()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p3, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {p3, p1, p2}, Lcom/vungle/ads/internal/ConfigManager;->updateConfigExtension$vungle_ads_release(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    if-eqz p4, :cond_3

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p4

    invoke-static/range {v5 .. v10}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/w;Lcom/vungle/ads/internal/util/n;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_3
    sget-object p1, Lcom/vungle/ads/internal/privacy/PrivacyManager;->INSTANCE:Lcom/vungle/ads/internal/privacy/PrivacyManager;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->shouldDisableAdId()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/privacy/PrivacyManager;->updateDisableAdId(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    if-nez p3, :cond_7

    if-eqz p2, :cond_7

    :try_start_2
    invoke-virtual {p2}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigLastValidatedTimestamp()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    :goto_1
    sget-object p3, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->setConfigLastValidatedTimestamp(Ljava/lang/Long;)V

    :goto_2
    sget-object p1, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz p1, :cond_7

    sget-object p2, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-static {v1}, Lcom/vungle/ads/internal/ConfigManager;->initWithConfig$lambda-2(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/vungle/ads/internal/ConfigManager;->updateCachedConfig(Lcom/vungle/ads/internal/model/ConfigPayload;Lcom/vungle/ads/internal/persistence/b;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    monitor-exit p0

    return-void

    :cond_8
    :try_start_3
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "ConfigManager"

    const-string p3, "Config is not available."

    invoke-virtual {p1, p2, p3}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p3, "ConfigManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while validating config: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final isCleverCacheEnabled()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/ConfigPayload$c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$c;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isReportIncentivizedEnabled()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->isReportIncentivizedEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final otEnabled()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEnableOT()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final placements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/g;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->placements:Ljava/util/List;

    return-object v0
.end method

.method public final retryPriorityTPATs()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getRetryPriorityTPATs()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final rtaDebuggingEnabled()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getRtaDebugging()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setAppId$vungle_ads_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/vungle/ads/internal/ConfigManager;->applicationId:Ljava/lang/String;

    return-void
.end method

.method public final shouldDisableAdId()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getDisableAdId()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final signalsDisabled()Z
    .locals 1

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getSignalsDisabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateCachedConfig(Lcom/vungle/ads/internal/model/ConfigPayload;Lcom/vungle/ads/internal/persistence/b;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePreferences"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "config_app_id"

    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->applicationId:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "applicationId"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    const-string v0, "config_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;J)Lcom/vungle/ads/internal/persistence/b;

    const-string v0, "config_response"

    sget-object v1, Lcom/vungle/ads/internal/ConfigManager;->json:Lkotlinx/serialization/json/a;

    invoke-interface {v1}, Lkotlinx/serialization/e;->a()Lf00/c;

    move-result-object v2

    const-class v3, Lcom/vungle/ads/internal/model/ConfigPayload;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlinx/serialization/h;->b(Lf00/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, p1}, Lkotlinx/serialization/j;->c(Lkotlinx/serialization/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    invoke-virtual {p2}, Lcom/vungle/ads/internal/persistence/b;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for updating cached config"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfigManager"

    invoke-virtual {p2, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final updateConfigExtension$vungle_ads_release(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/vungle/ads/internal/ConfigManager;->configExt:Ljava/lang/String;

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/ConfigManager$updateConfigExtension$$inlined$inject$1;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/ConfigManager$updateConfigExtension$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    invoke-static {p1}, Lcom/vungle/ads/internal/ConfigManager;->updateConfigExtension$lambda-1(Lkotlin/Lazy;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object p1

    const-string v0, "config_extension"

    invoke-virtual {p1, v0, p2}, Lcom/vungle/ads/internal/persistence/b;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/persistence/b;->apply()V

    return-void
.end method

.method public final validateConfig$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/ConfigManager;->validateEndpoints$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload$f;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getPlacements()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final validateEndpoints$vungle_ads_release(Lcom/vungle/ads/internal/model/ConfigPayload$f;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getAdsEndpoint()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Lcom/vungle/ads/InvalidEndpointError;

    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_ADS_ENDPOINT:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    const-string v4, "The ads endpoint was not provided in the config."

    invoke-direct {v1, v3, v4}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    move v1, v2

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getRiEndpoint()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    new-instance v3, Lcom/vungle/ads/InvalidEndpointError;

    sget-object v4, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_RI_ENDPOINT:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    const-string v5, "The ri endpoint was not provided in the config."

    invoke-direct {v3, v4, v5}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMraidEndpoint()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v0

    :goto_4
    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_7

    goto :goto_5

    :cond_7
    move v2, v1

    goto :goto_6

    :cond_8
    :goto_5
    new-instance v1, Lcom/vungle/ads/InvalidEndpointError;

    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_DOWNLOAD_JS_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    const-string v4, "The mraid endpoint was not provided in the config."

    invoke-direct {v1, v3, v4}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :goto_6
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getMetricsEndpoint()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_9
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_a

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    new-instance v1, Lcom/vungle/ads/InvalidEndpointError;

    sget-object v3, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->INVALID_METRICS_ENDPOINT:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    const-string v4, "The metrics endpoint was not provided in the config."

    invoke-direct {v1, v3, v4}, Lcom/vungle/ads/InvalidEndpointError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload$f;->getErrorLogsEndpoint()Ljava/lang/String;

    move-result-object v0

    :cond_c
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_e

    :cond_d
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v0, "ConfigManager"

    const-string v1, "The error logging endpoint was not provided in the config."

    invoke-virtual {p1, v0, v1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v2
.end method
