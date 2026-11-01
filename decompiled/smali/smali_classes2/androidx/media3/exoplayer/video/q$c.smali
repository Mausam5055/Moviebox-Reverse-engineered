.class final Landroidx/media3/exoplayer/video/q$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;
.implements Landroidx/media3/exoplayer/video/q$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private c:Lcom/google/common/collect/ImmutableList;

.field private d:Landroidx/media3/common/r;

.field private e:I

.field private f:J

.field private g:J

.field private h:Landroidx/media3/exoplayer/video/VideoSink$a;

.field private i:Ljava/util/concurrent/Executor;

.field private j:Z

.field final synthetic k:Landroidx/media3/exoplayer/video/q;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/q;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroidx/media3/exoplayer/video/q$c;->b:I

    invoke-static {p2}, Landroidx/media3/common/util/a1;->f0(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/q$c;->a:I

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->c:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/q$c;->g:J

    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$a;->a:Landroidx/media3/exoplayer/video/VideoSink$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->h:Landroidx/media3/exoplayer/video/VideoSink$a;

    invoke-static {}, Landroidx/media3/exoplayer/video/q;->c()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private w(Landroidx/media3/common/r;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/common/r;->C:Landroidx/media3/common/i;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q;->v(Landroidx/media3/common/i;)Landroidx/media3/common/i;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/common/r$b;->T(Landroidx/media3/common/i;)Landroidx/media3/common/r$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method private x(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->t(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/c0$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/c0$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->c:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->u(Landroidx/media3/exoplayer/video/q;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$a;->l(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->c:Lcom/google/common/collect/ImmutableList;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/q;->n(Landroidx/media3/exoplayer/video/q;F)V

    return-void
.end method

.method public b(JZLandroidx/media3/exoplayer/video/VideoSink$b;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/q$c;->isInitialized()Z

    move-result p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q;->q(Landroidx/media3/exoplayer/video/q;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->c()V

    return-void
.end method

.method public d(Landroidx/media3/exoplayer/video/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/q;->m(Landroidx/media3/exoplayer/video/q;Landroidx/media3/exoplayer/video/t;)V

    return-void
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/q$c;->g:J

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/video/q;->i(Landroidx/media3/exoplayer/video/q;J)J

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->j(Landroidx/media3/exoplayer/video/q;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v2}, Landroidx/media3/exoplayer/video/q;->h(Landroidx/media3/exoplayer/video/q;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->e()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/q;->k(Landroidx/media3/exoplayer/video/q;Z)Z

    :cond_0
    return-void
.end method

.method public f(JJ)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->o(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/util/o0;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/exoplayer/video/q$c;->g:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroidx/media3/common/util/o0;->a(JLjava/lang/Object;)V

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/q$c;->f:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {p1, p3, p4}, Landroidx/media3/exoplayer/video/q;->p(Landroidx/media3/exoplayer/video/q;J)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->g()V

    return-void
.end method

.method public h(Landroidx/media3/exoplayer/w3$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/q;->s(Landroidx/media3/exoplayer/video/q;Landroidx/media3/exoplayer/w3$a;)Landroidx/media3/exoplayer/w3$a;

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q$c;->x(Ljava/util/List;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->d:Landroidx/media3/common/r;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/q$c;->w(Landroidx/media3/common/r;)V

    :cond_1
    return-void
.end method

.method public isEnded()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/q$c;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->l(Landroidx/media3/exoplayer/video/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/q$c;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/q;->g(Landroidx/media3/exoplayer/video/q;Z)Z

    move-result p1

    return p1
.end method

.method public k(Landroidx/media3/common/r;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/q$c;->isInitialized()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    iget v1, p0, Landroidx/media3/exoplayer/video/q$c;->b:I

    invoke-static {v0, p1, v1}, Landroidx/media3/exoplayer/video/q;->e(Landroidx/media3/exoplayer/video/q;Landroidx/media3/common/r;I)Landroidx/media3/common/k0;

    const/4 p1, 0x0

    return p1
.end method

.method public l(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->l(Z)V

    return-void
.end method

.method public m()Landroid/view/Surface;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/q$c;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v0
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->n()V

    return-void
.end method

.method public o(ILandroidx/media3/common/r;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/q$c;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported input type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/video/q$c;->x(Ljava/util/List;)V

    iput p1, p0, Landroidx/media3/exoplayer/video/q$c;->e:I

    iput-object p2, p0, Landroidx/media3/exoplayer/video/q$c;->d:Landroidx/media3/common/r;

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/video/q;->i(Landroidx/media3/exoplayer/video/q;J)J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/q;->k(Landroidx/media3/exoplayer/video/q;Z)Z

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/video/q$c;->w(Landroidx/media3/common/r;)V

    return-void
.end method

.method public p(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/q;->M(Landroid/view/Surface;Landroidx/media3/common/util/l0;)V

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoSink;->q()V

    return-void
.end method

.method public r(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->r(I)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/q;->J()V

    return-void
.end method

.method public render(JJ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/q;->r(Landroidx/media3/exoplayer/video/q;JJ)V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/q;->y()V

    return-void
.end method

.method public t(Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/q$c;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/q$c;->g:J

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/q;->f(Landroidx/media3/exoplayer/video/q;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/q$c;->j:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method public u(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$c;->k:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->d(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/exoplayer/video/VideoSink;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoSink;->u(Z)V

    return-void
.end method

.method public v(Landroidx/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$c;->h:Landroidx/media3/exoplayer/video/VideoSink$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/q$c;->i:Ljava/util/concurrent/Executor;

    return-void
.end method
