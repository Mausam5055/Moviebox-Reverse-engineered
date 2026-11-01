.class public final Lcom/tmc/network/ProgressResponseBody;
.super Lokhttp3/ResponseBody;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/tmc/network/ProgressResponseBody;",
        "Lokhttp3/ResponseBody;",
        "responseBody",
        "mListener",
        "Lcom/tmc/network/ProgressListener;",
        "(Lokhttp3/ResponseBody;Lcom/tmc/network/ProgressListener;)V",
        "bufferedSource",
        "Lokio/BufferedSource;",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "mySource",
        "Lokio/Source;",
        "source",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private final mListener:Lcom/tmc/network/ProgressListener;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/tmc/network/ProgressListener;)V
    .locals 1

    const-string v0, "responseBody"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    iput-object p2, p0, Lcom/tmc/network/ProgressResponseBody;->mListener:Lcom/tmc/network/ProgressListener;

    return-void
.end method

.method public static final synthetic access$getMListener$p(Lcom/tmc/network/ProgressResponseBody;)Lcom/tmc/network/ProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/tmc/network/ProgressResponseBody;->mListener:Lcom/tmc/network/ProgressListener;

    return-object p0
.end method

.method private final mySource(Lokio/Source;)Lokio/Source;
    .locals 1

    new-instance v0, Lcom/tmc/network/ProgressResponseBody$mySource$1;

    invoke-direct {v0, p0, p1}, Lcom/tmc/network/ProgressResponseBody$mySource$1;-><init>(Lcom/tmc/network/ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tmc/network/ProgressResponseBody;->mySource(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    :cond_0
    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type okio.BufferedSource"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
