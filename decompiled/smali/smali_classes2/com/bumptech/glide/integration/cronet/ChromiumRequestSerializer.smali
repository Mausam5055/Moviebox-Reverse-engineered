.class final Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;,
        Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;,
        Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;,
        Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$PriorityRunnable;
    }
.end annotation


# static fields
.field private static final GLIDE_EXECUTOR_SUPPLIER:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q;"
        }
    .end annotation
.end field

.field private static final GLIDE_TO_CHROMIUM_PRIORITY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/Priority;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ChromiumSerializer"


# instance fields
.field private final dataLogger:Lcom/bumptech/glide/integration/cronet/DataLogger;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final jobPool:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;

.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;",
            ">;"
        }
    .end annotation
.end field

.field private final requestFactory:Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/bumptech/glide/Priority;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->GLIDE_TO_CHROMIUM_PRIORITY:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;

    invoke-direct {v1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;-><init>()V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/q;)Lcom/google/common/base/q;

    move-result-object v1

    sput-object v1, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->GLIDE_EXECUTOR_SUPPLIER:Lcom/google/common/base/q;

    sget-object v1, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;Lcom/bumptech/glide/integration/cronet/DataLogger;)V
    .locals 2
    .param p2    # Lcom/bumptech/glide/integration/cronet/DataLogger;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobPool:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobs:Ljava/util/Map;

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->requestFactory:Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;

    iput-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->dataLogger:Lcom/bumptech/glide/integration/cronet/DataLogger;

    return-void
.end method

.method static synthetic access$1000(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/DataLogger;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->dataLogger:Lcom/bumptech/glide/integration/cronet/DataLogger;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobPool:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;

    return-object p0
.end method

.method static synthetic access$400(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobs:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800()Lcom/google/common/base/q;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->GLIDE_EXECUTOR_SUPPLIER:Lcom/google/common/base/q;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/net/UrlResponseInfo;Ljava/io/IOException;Z)Ljava/io/IOException;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->getExceptionIfFailed(Lorg/chromium/net/UrlResponseInfo;Ljava/io/IOException;Z)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method private static getExceptionIfFailed(Lorg/chromium/net/UrlResponseInfo;Ljava/io/IOException;Z)Ljava/io/IOException;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p1

    const/16 p2, 0xc8

    if-eq p1, p2, :cond_2

    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p0

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method cancelRequest(Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->removeListener(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method startRequest(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobPool:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->get(Lcom/bumptech/glide/load/model/GlideUrl;)Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->jobs:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p3}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->addListener(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const-string p3, "ChromiumSerializer"

    const/4 v1, 0x2

    invoke-static {p3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "ChromiumSerializer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetching image url using cronet url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$102(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;

    iget-object p3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->requestFactory:Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/model/GlideUrl;->toStringUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->GLIDE_TO_CHROMIUM_PRIORITY:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/bumptech/glide/load/model/GlideUrl;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p3, v1, p1, p2, v0}, Lcom/bumptech/glide/integration/cronet/CronetRequestFactory;->newRequest(Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/UrlRequest$Callback;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$202(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lorg/chromium/net/UrlRequest;)Lorg/chromium/net/UrlRequest;

    invoke-static {v0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$200(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->start()V

    invoke-static {v0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$300(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->access$200(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Lorg/chromium/net/UrlRequest;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
