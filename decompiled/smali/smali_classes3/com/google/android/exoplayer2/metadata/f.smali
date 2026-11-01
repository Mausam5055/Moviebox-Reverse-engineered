.class public final Lcom/google/android/exoplayer2/metadata/f;
.super Lcom/google/android/exoplayer2/h;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final n:Lcom/google/android/exoplayer2/metadata/c;

.field private final o:Lcom/google/android/exoplayer2/metadata/e;

.field private final p:Landroid/os/Handler;

.field private final q:Lcom/google/android/exoplayer2/metadata/d;

.field private r:Lcom/google/android/exoplayer2/metadata/b;

.field private s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lcom/google/android/exoplayer2/metadata/Metadata;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;)V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/metadata/c;->a:Lcom/google/android/exoplayer2/metadata/c;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/metadata/f;-><init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/e;Landroid/os/Looper;Lcom/google/android/exoplayer2/metadata/c;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/h;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/e;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->o:Lcom/google/android/exoplayer2/metadata/e;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/p0;->v(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->p:Landroid/os/Handler;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/metadata/c;

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    new-instance p1, Lcom/google/android/exoplayer2/metadata/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    return-void
.end method

.method private A(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/f;->B(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    :goto_0
    return-void
.end method

.method private B(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->o:Lcom/google/android/exoplayer2/metadata/e;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/e;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method private C(J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    cmp-long p1, v2, p1

    if-gtz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/f;->A(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez p2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/metadata/f;->t:Z

    :cond_1
    return p1
.end method

.method private D()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/h;->k()Lcom/google/android/exoplayer2/p1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/h;->w(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/metadata/f;->u:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/metadata/d;->i:J

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->r:Lcom/google/android/exoplayer2/metadata/b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/metadata/b;->a(Lcom/google/android/exoplayer2/metadata/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/metadata/f;->z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    goto :goto_0

    :cond_1
    const/4 v2, -0x5

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Lcom/google/android/exoplayer2/p1;->b:Lcom/google/android/exoplayer2/o1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/o1;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/o1;->p:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/metadata/f;->u:J

    :cond_2
    :goto_0
    return-void
.end method

.method private z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/c;->a(Lcom/google/android/exoplayer2/o1;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/metadata/c;->b(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/metadata/b;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->getWrappedMetadataBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->n()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/f;->q:Lcom/google/android/exoplayer2/metadata/d;

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/metadata/b;->a(Lcom/google/android/exoplayer2/metadata/d;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p2}, Lcom/google/android/exoplayer2/metadata/f;->z(Lcom/google/android/exoplayer2/metadata/Metadata;Ljava/util/List;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/o1;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/metadata/c;->a(Lcom/google/android/exoplayer2/o1;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/exoplayer2/o1;->E:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/exoplayer2/y2;->a(I)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/f;->B(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/metadata/f;->t:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected p()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/f;->r:Lcom/google/android/exoplayer2/metadata/b;

    return-void
.end method

.method protected r(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->w:Lcom/google/android/exoplayer2/metadata/Metadata;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/metadata/f;->v:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/f;->s:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/metadata/f;->t:Z

    return-void
.end method

.method public render(JJ)V
    .locals 0

    const/4 p3, 0x1

    :goto_0
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/f;->D()V

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/metadata/f;->C(J)Z

    move-result p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v([Lcom/google/android/exoplayer2/o1;JJ)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/f;->n:Lcom/google/android/exoplayer2/metadata/c;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/metadata/c;->b(Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/metadata/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/f;->r:Lcom/google/android/exoplayer2/metadata/b;

    return-void
.end method
