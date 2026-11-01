.class final Lcom/bumptech/glide/integration/cronet/BufferQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"


# instance fields
.field private final mBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsCoalesced:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mIsCoalesced:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Queue;Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/cronet/BufferQueue;-><init>(Ljava/util/Queue;)V

    return-void
.end method

.method public static builder()Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;-><init>(Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V

    return-object v0
.end method

.method private markCoalesced()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mIsCoalesced:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This BufferQueue has already been consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public coalesceToBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    invoke-direct {p0}, Lcom/bumptech/glide/integration/cronet/BufferQueue;->markCoalesced()V

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method
