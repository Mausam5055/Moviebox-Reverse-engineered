.class abstract Lj3/e;
.super Ljava/lang/Object;

# interfaces
.implements Li3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/e$b;,
        Lj3/e$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayDeque;

.field private final b:Ljava/util/ArrayDeque;

.field private final c:Ljava/util/ArrayDeque;

.field private d:Lj3/e$b;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lj3/e;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lj3/e;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lj3/e$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lj3/e$b;-><init>(Lj3/e$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lj3/e;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj3/e;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lj3/e$c;

    new-instance v3, Lj3/d;

    invoke-direct {v3, p0}, Lj3/d;-><init>(Lj3/e;)V

    invoke-direct {v2, v3}, Lj3/e$c;-><init>(Landroidx/media3/decoder/h$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lj3/e;->c:Ljava/util/ArrayDeque;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lj3/e;->g:J

    return-void
.end method

.method private k(Lj3/e$b;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object v0, p0, Lj3/e;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lj3/e;->g:J

    return-void
.end method

.method protected abstract c()Li3/k;
.end method

.method protected abstract d(Li3/o;)V
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj3/e;->e()Li3/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj3/e;->f()Li3/p;

    move-result-object v0

    return-object v0
.end method

.method public e()Li3/o;
    .locals 1

    iget-object v0, p0, Lj3/e;->d:Lj3/e$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Lj3/e;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lj3/e;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/e$b;

    iput-object v0, p0, Lj3/e;->d:Lj3/e$b;

    return-object v0
.end method

.method public f()Li3/p;
    .locals 9

    iget-object v0, p0, Lj3/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lj3/e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lj3/e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/e$b;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/e$b;

    iget-wide v2, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    iget-wide v4, p0, Lj3/e;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lj3/e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/e$b;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/e$b;

    invoke-virtual {v0}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lj3/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/p;

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/p;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroidx/media3/decoder/a;->addFlag(I)V

    invoke-direct {p0, v0}, Lj3/e;->k(Lj3/e$b;)V

    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lj3/e;->d(Li3/o;)V

    invoke-virtual {p0}, Lj3/e;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lj3/e;->c()Li3/k;

    move-result-object v6

    iget-object v1, p0, Lj3/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/p;

    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/p;

    iget-wide v4, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Li3/p;->a(JLi3/k;J)V

    invoke-direct {p0, v0}, Lj3/e;->k(Lj3/e$b;)V

    return-object v1

    :cond_2
    invoke-direct {p0, v0}, Lj3/e;->k(Lj3/e$b;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lj3/e;->f:J

    iput-wide v0, p0, Lj3/e;->e:J

    :goto_0
    iget-object v0, p0, Lj3/e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj3/e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/e$b;

    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/e$b;

    invoke-direct {p0, v0}, Lj3/e;->k(Lj3/e$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj3/e;->d:Lj3/e$b;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lj3/e;->k(Lj3/e$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj3/e;->d:Lj3/e$b;

    :cond_1
    return-void
.end method

.method protected final g()Li3/p;
    .locals 1

    iget-object v0, p0, Lj3/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li3/p;

    return-object v0
.end method

.method protected final h()J
    .locals 2

    iget-wide v0, p0, Lj3/e;->e:J

    return-wide v0
.end method

.method protected abstract i()Z
.end method

.method public j(Li3/o;)V
    .locals 6

    iget-object v0, p0, Lj3/e;->d:Lj3/e$b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    check-cast p1, Lj3/e$b;

    invoke-virtual {p1}, Landroidx/media3/decoder/a;->isEndOfStream()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->e:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lj3/e;->g:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, p1}, Lj3/e;->k(Lj3/e$b;)V

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lj3/e;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lj3/e;->f:J

    invoke-static {p1, v0, v1}, Lj3/e$b;->h(Lj3/e$b;J)J

    iget-object v0, p0, Lj3/e;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lj3/e;->d:Lj3/e$b;

    return-void
.end method

.method protected l(Li3/p;)V
    .locals 1

    invoke-virtual {p1}, Li3/p;->clear()V

    iget-object v0, p0, Lj3/e;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Li3/o;

    invoke-virtual {p0, p1}, Lj3/e;->j(Li3/o;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    iput-wide p1, p0, Lj3/e;->e:J

    return-void
.end method
