.class public final Lba/g;
.super Ljava/lang/Object;

# interfaces
.implements Lba/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lba/g$b;
    }
.end annotation


# instance fields
.field private final a:Lba/c;

.field private final b:Lba/m;

.field private final c:Ljava/util/Deque;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lba/c;

    invoke-direct {v0}, Lba/c;-><init>()V

    iput-object v0, p0, Lba/g;->a:Lba/c;

    new-instance v0, Lba/m;

    invoke-direct {v0}, Lba/m;-><init>()V

    iput-object v0, p0, Lba/g;->b:Lba/m;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lba/g;->c:Ljava/util/Deque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lba/g;->c:Ljava/util/Deque;

    new-instance v3, Lba/g$a;

    invoke-direct {v3, p0}, Lba/g$a;-><init>(Lba/g;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lba/g;->d:I

    return-void
.end method

.method static synthetic a(Lba/g;Lba/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lba/g;->e(Lba/n;)V

    return-void
.end method

.method private e(Lba/n;)V
    .locals 3

    iget-object v0, p0, Lba/g;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lba/g;->c:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    invoke-virtual {p1}, Lba/n;->b()V

    iget-object v0, p0, Lba/g;->c:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Lba/m;
    .locals 2

    iget-boolean v0, p0, Lba/g;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget v0, p0, Lba/g;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iput v1, p0, Lba/g;->d:I

    iget-object v0, p0, Lba/g;->b:Lba/m;

    return-object v0
.end method

.method public c()Lba/n;
    .locals 7

    iget-boolean v0, p0, Lba/g;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget v0, p0, Lba/g;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lba/g;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lba/g;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/n;

    iget-object v1, p0, Lba/g;->b:Lba/m;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    goto :goto_0

    :cond_1
    new-instance v4, Lba/g$b;

    iget-object v1, p0, Lba/g;->b:Lba/m;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-object v5, p0, Lba/g;->a:Lba/c;

    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Lba/c;->a([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v4, v2, v3, v1}, Lba/g$b;-><init>(JLcom/google/common/collect/ImmutableList;)V

    iget-object v1, p0, Lba/g;->b:Lba/m;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lba/n;->m(JLba/i;J)V

    :goto_0
    iget-object v1, p0, Lba/g;->b:Lba/m;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    const/4 v1, 0x0

    iput v1, p0, Lba/g;->d:I

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lba/m;)V
    .locals 3

    iget-boolean v0, p0, Lba/g;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget v0, p0, Lba/g;->d:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lba/g;->b:Lba/m;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const/4 p1, 0x2

    iput p1, p0, Lba/g;->d:I

    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lba/g;->b()Lba/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lba/g;->c()Lba/n;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lba/g;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    iget-object v0, p0, Lba/g;->b:Lba/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lba/g;->d:I

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lba/m;

    invoke-virtual {p0, p1}, Lba/g;->d(Lba/m;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lba/g;->e:Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method
