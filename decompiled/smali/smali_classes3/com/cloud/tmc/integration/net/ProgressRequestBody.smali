.class public final Lcom/cloud/tmc/integration/net/ProgressRequestBody;
.super Lokhttp3/RequestBody;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/net/ProgressRequestBody;",
        "Lokhttp3/RequestBody;",
        "requestBody",
        "progressListener",
        "Lcom/cloud/tmc/integration/net/ProgressRequestListener;",
        "(Lokhttp3/RequestBody;Lcom/cloud/tmc/integration/net/ProgressRequestListener;)V",
        "bufferedSink",
        "Lokio/BufferedSink;",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "sink",
        "Lokio/Sink;",
        "writeTo",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private bufferedSink:Lokio/BufferedSink;

.field private final progressListener:Lcom/cloud/tmc/integration/net/ProgressRequestListener;

.field private final requestBody:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Lcom/cloud/tmc/integration/net/ProgressRequestListener;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    iput-object p2, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->progressListener:Lcom/cloud/tmc/integration/net/ProgressRequestListener;

    return-void
.end method

.method public static final synthetic access$getProgressListener$p(Lcom/cloud/tmc/integration/net/ProgressRequestBody;)Lcom/cloud/tmc/integration/net/ProgressRequestListener;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->progressListener:Lcom/cloud/tmc/integration/net/ProgressRequestListener;

    return-object p0
.end method

.method private final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;

    invoke-direct {v0, p1, p0}, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;-><init>(Lokio/Sink;Lcom/cloud/tmc/integration/net/ProgressRequestBody;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->bufferedSink:Lokio/BufferedSink;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->sink(Lokio/Sink;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->bufferedSink:Lokio/BufferedSink;

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->bufferedSink:Lokio/BufferedSink;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->requestBody:Lokhttp3/RequestBody;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    :cond_1
    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    :cond_2
    return-void
.end method
