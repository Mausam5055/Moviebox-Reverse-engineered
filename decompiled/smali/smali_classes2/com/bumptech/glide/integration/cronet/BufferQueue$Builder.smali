.class public final Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/cronet/BufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private whenClosed:Ljava/lang/RuntimeException;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;-><init>()V

    return-void
.end method

.method private static bufferSizeHeuristic(Lorg/chromium/net/UrlResponseInfo;)J
    .locals 6

    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "content-length"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "content-encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "identity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    return-wide v2

    :cond_1
    :goto_0
    const-wide/16 v0, 0x2

    mul-long/2addr v2, v0

    return-wide v2

    :cond_2
    const-wide/16 v0, 0x2000

    return-wide v0
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/integration/cronet/BufferQueue;
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->whenClosed:Ljava/lang/RuntimeException;

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/bumptech/glide/integration/cronet/BufferQueue;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/integration/cronet/BufferQueue;-><init>(Ljava/util/Queue;Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V

    return-object v2
.end method

.method public getFirstBuffer(Lorg/chromium/net/UrlResponseInfo;)Ljava/nio/ByteBuffer;
    .locals 4

    invoke-static {p1}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->bufferSizeHeuristic(Lorg/chromium/net/UrlResponseInfo;)J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getNextBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/16 p1, 0x1fa0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->whenClosed:Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
