.class public final Lcom/vungle/ads/internal/network/d$b;
.super Lokhttp3/ResponseBody;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/network/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final delegate:Lokhttp3/ResponseBody;

.field private final delegateSource:Lokio/BufferedSource;

.field private thrownException:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/network/d$b;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    new-instance v0, Lcom/vungle/ads/internal/network/d$b$a;

    invoke-direct {v0, p0, p1}, Lcom/vungle/ads/internal/network/d$b$a;-><init>(Lcom/vungle/ads/internal/network/d$b;Lokio/BufferedSource;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/network/d$b;->delegateSource:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$b;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$b;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$b;->delegate:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final getThrownException()Ljava/io/IOException;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$b;->thrownException:Ljava/io/IOException;

    return-object v0
.end method

.method public final setThrownException(Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/network/d$b;->thrownException:Ljava/io/IOException;

    return-void
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$b;->delegateSource:Lokio/BufferedSource;

    return-object v0
.end method

.method public final throwIfCaught()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/vungle/ads/internal/network/d$b;->thrownException:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    throw v0
.end method
