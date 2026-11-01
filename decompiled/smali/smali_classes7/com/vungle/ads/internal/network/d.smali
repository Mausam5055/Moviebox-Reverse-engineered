.class public final Lcom/vungle/ads/internal/network/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/network/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/network/d$c;,
        Lcom/vungle/ads/internal/network/d$b;,
        Lcom/vungle/ads/internal/network/d$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/network/d$a;

.field private static final TAG:Ljava/lang/String; = "OkHttpCall"


# instance fields
.field private volatile canceled:Z

.field private final rawCall:Lokhttp3/Call;

.field private final responseConverter:Lcom/vungle/ads/internal/network/converters/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/ads/internal/network/converters/a;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/network/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/network/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vungle/ads/internal/network/d;->Companion:Lcom/vungle/ads/internal/network/d$a;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call;Lcom/vungle/ads/internal/network/converters/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lcom/vungle/ads/internal/network/converters/a;",
            ")V"
        }
    .end annotation

    const-string v0, "rawCall"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseConverter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/d;->rawCall:Lokhttp3/Call;

    iput-object p2, p0, Lcom/vungle/ads/internal/network/d;->responseConverter:Lcom/vungle/ads/internal/network/converters/a;

    return-void
.end method

.method private final buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    sget-object v1, Lokhttp3/ResponseBody;->Companion:Lokhttp3/ResponseBody$Companion;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lokhttp3/ResponseBody$Companion;->create(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/ads/internal/network/d;->canceled:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d;->rawCall:Lokhttp3/Call;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enqueue(Lcom/vungle/ads/internal/network/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/ads/internal/network/b;",
            ")V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d;->rawCall:Lokhttp3/Call;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean v1, p0, Lcom/vungle/ads/internal/network/d;->canceled:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    new-instance v1, Lcom/vungle/ads/internal/network/d$d;

    invoke-direct {v1, p0, p1}, Lcom/vungle/ads/internal/network/d$d;-><init>(Lcom/vungle/ads/internal/network/d;Lcom/vungle/ads/internal/network/b;)V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lokhttp3/Call;Lokhttp3/Callback;)V

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute()Lcom/vungle/ads/internal/network/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/network/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d;->rawCall:Lokhttp3/Call;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-boolean v1, p0, Lcom/vungle/ads/internal/network/d;->canceled:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    :cond_0
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/ads/internal/network/d;->parseResponse(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vungle/ads/internal/network/d;->canceled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d;->rawCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final parseResponse(Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Lcom/vungle/ads/internal/network/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rawResp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object p1

    new-instance v2, Lcom/vungle/ads/internal/network/d$c;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lcom/vungle/ads/internal/network/d$c;-><init>(Lokhttp3/MediaType;J)V

    invoke-virtual {p1, v2}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2

    const/16 v3, 0xcd

    if-eq v2, v3, :cond_2

    new-instance v1, Lcom/vungle/ads/internal/network/d$b;

    invoke-direct {v1, v0}, Lcom/vungle/ads/internal/network/d$b;-><init>(Lokhttp3/ResponseBody;)V

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/network/d;->responseConverter:Lcom/vungle/ads/internal/network/converters/a;

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/network/converters/a;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/vungle/ads/internal/network/e;->Companion:Lcom/vungle/ads/internal/network/e$a;

    invoke-virtual {v2, v0, p1}, Lcom/vungle/ads/internal/network/e$a;->success(Ljava/lang/Object;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/network/d$b;->throwIfCaught()V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    sget-object v0, Lcom/vungle/ads/internal/network/e;->Companion:Lcom/vungle/ads/internal/network/e$a;

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/network/e$a;->success(Ljava/lang/Object;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/vungle/ads/internal/network/d;->buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;

    move-result-object v2

    sget-object v3, Lcom/vungle/ads/internal/network/e;->Companion:Lcom/vungle/ads/internal/network/e$a;

    invoke-virtual {v3, v2, p1}, Lcom/vungle/ads/internal/network/e$a;->error(Lokhttp3/ResponseBody;Lokhttp3/Response;)Lcom/vungle/ads/internal/network/e;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_1
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
