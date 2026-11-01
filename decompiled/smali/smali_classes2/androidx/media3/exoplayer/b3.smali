.class final Landroidx/media3/exoplayer/b3;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/media3/common/e0$b;

.field private final b:Landroidx/media3/common/e0$c;

.field private final c:Ly1/a;

.field private final d:Landroidx/media3/common/util/p;

.field private final e:Landroidx/media3/exoplayer/y2$a;

.field private f:J

.field private g:I

.field private h:Z

.field private i:Landroidx/media3/exoplayer/ExoPlayer$c;

.field private j:Landroidx/media3/exoplayer/y2;

.field private k:Landroidx/media3/exoplayer/y2;

.field private l:Landroidx/media3/exoplayer/y2;

.field private m:Landroidx/media3/exoplayer/y2;

.field private n:Landroidx/media3/exoplayer/y2;

.field private o:I

.field private p:Ljava/lang/Object;

.field private q:J

.field private r:Ljava/util/List;


# direct methods
.method public constructor <init>(Ly1/a;Landroidx/media3/common/util/p;Landroidx/media3/exoplayer/y2$a;Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->c:Ly1/a;

    iput-object p2, p0, Landroidx/media3/exoplayer/b3;->d:Landroidx/media3/common/util/p;

    iput-object p3, p0, Landroidx/media3/exoplayer/b3;->e:Landroidx/media3/exoplayer/y2$a;

    iput-object p4, p0, Landroidx/media3/exoplayer/b3;->i:Landroidx/media3/exoplayer/ExoPlayer$c;

    new-instance p1, Landroidx/media3/common/e0$b;

    invoke-direct {p1}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    new-instance p1, Landroidx/media3/common/e0$c;

    invoke-direct {p1}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    return-void
.end method

.method private A(Ljava/lang/Object;Landroidx/media3/common/e0;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/e0$b;->c()I

    move-result p1

    iget-object p2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p2}, Landroidx/media3/common/e0$b;->p()I

    move-result p2

    if-lez p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, p2}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide p1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private C(Landroidx/media3/exoplayer/source/r$b;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Landroidx/media3/exoplayer/source/r$b;->e:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private D(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Z)Z
    .locals 6

    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object p2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v1, p2}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/media3/common/e0$c;->i:Z

    if-nez p2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget v4, p0, Landroidx/media3/exoplayer/b3;->g:I

    iget-boolean v5, p0, Landroidx/media3/exoplayer/b3;->h:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->r(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private E(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z
    .locals 3

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/b3;->C(Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    iget-object p2, p2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/e0$c;->o:I

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static H(Landroidx/media3/common/e0$b;)Z
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/common/e0$b;->c()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/common/e0$b;->r(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/e0$b;->p()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Landroidx/media3/common/e0$b;->e(J)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-wide v5, p0, Landroidx/media3/common/e0$b;->d:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroidx/media3/common/e0$b;->r(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    sub-int/2addr v0, v5

    move v5, v1

    :goto_1
    if-gt v5, v0, :cond_4

    invoke-virtual {p0, v5}, Landroidx/media3/common/e0$b;->i(I)J

    move-result-wide v6

    add-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-wide v5, p0, Landroidx/media3/common/e0$b;->d:J

    cmp-long p0, v5, v3

    if-gtz p0, :cond_5

    move v1, v2

    :cond_5
    :goto_2
    return v1
.end method

.method private synthetic I(Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->c:Ly1/a;

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ly1/a;->p(Ljava/util/List;Landroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private K()V
    .locals 4

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->d:Landroidx/media3/common/util/p;

    new-instance v3, Landroidx/media3/exoplayer/a3;

    invoke-direct {v3, p0, v0, v1}, Landroidx/media3/exoplayer/a3;-><init>(Landroidx/media3/exoplayer/b3;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V

    invoke-interface {v2, v3}, Landroidx/media3/common/util/p;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private M(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->x()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/b3;->J()V

    return-void
.end method

.method private P(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/y2;->d(Landroidx/media3/exoplayer/z2;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/y2;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 7

    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget v0, p7, Landroidx/media3/common/e0$b;->c:I

    invoke-virtual {p0, v0, p6}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    invoke-virtual {p0, p1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    move-object v2, p1

    :goto_0
    invoke-static {p7}, Landroidx/media3/exoplayer/b3;->H(Landroidx/media3/common/e0$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p6, Landroidx/media3/common/e0$c;->o:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p7, p1}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    iget-object p1, p7, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p7}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/e0$b;->e(J)I

    move-result v3

    const/4 p0, -0x1

    if-ne v3, p0, :cond_1

    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/e0$b;->d(J)I

    move-result p0

    new-instance p1, Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {p1, v2, p4, p5, p0}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;JI)V

    return-object p1

    :cond_1
    invoke-virtual {p7, v3}, Landroidx/media3/common/e0$b;->l(I)I

    move-result v4

    new-instance p0, Landroidx/media3/exoplayer/source/r$b;

    move-object v1, p0

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private S(Landroidx/media3/common/e0;Ljava/lang/Object;)J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v1, v3}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/e0$b;->c:I

    if-ne v1, v0, :cond_0

    iget-wide p1, p0, Landroidx/media3/exoplayer/b3;->q:J

    return-wide p1

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide p1, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    return-wide p1

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/e0$b;->c:I

    if-ne v3, v0, :cond_3

    iget-object p1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide p1, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    return-wide p1

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/b3;->T(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_5

    return-wide v0

    :cond_5
    iget-wide v0, p0, Landroidx/media3/exoplayer/b3;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/b3;->f:J

    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    if-nez p1, :cond_6

    iput-object p2, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    iput-wide v0, p0, Landroidx/media3/exoplayer/b3;->q:J

    :cond_6
    return-wide v0
.end method

.method private T(Ljava/lang/Object;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v0, p1, Landroidx/media3/exoplayer/source/r$b;->d:J

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private V(Landroidx/media3/common/e0;)I
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget v5, p0, Landroidx/media3/exoplayer/b3;->g:I

    iget-boolean v6, p0, Landroidx/media3/exoplayer/b3;->h:Z

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/e0;->d(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)I

    move-result v2

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/z2;->h:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    move-result v1

    iget-object v2, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/b3;->z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    iput-object p1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    return v1
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/b3;Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b3;->I(Lcom/google/common/collect/ImmutableList$a;Landroidx/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method static e(JJ)Z
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private f(Landroidx/media3/exoplayer/z2;Landroidx/media3/exoplayer/z2;)Z
    .locals 4

    iget-wide v0, p1, Landroidx/media3/exoplayer/z2;->b:J

    iget-wide v2, p2, Landroidx/media3/exoplayer/z2;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object p2, p2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/r$b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private i(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroid/util/Pair;
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object p2

    iget p2, p2, Landroidx/media3/common/e0$b;->c:I

    iget v0, p0, Landroidx/media3/exoplayer/b3;->g:I

    iget-boolean v1, p0, Landroidx/media3/exoplayer/b3;->h:Z

    invoke-virtual {p1, p2, v0, v1}, Landroidx/media3/common/e0;->e(IIZ)I

    move-result v5

    const/4 p2, -0x1

    if-eq v5, p2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p1

    move-wide v8, p3

    invoke-virtual/range {v2 .. v9}, Landroidx/media3/common/e0;->k(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJJ)Landroid/util/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private j(Landroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;
    .locals 7

    iget-object v1, p1, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    iget-object v2, p1, Landroidx/media3/exoplayer/r3;->b:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v3, p1, Landroidx/media3/exoplayer/r3;->c:J

    iget-wide v5, p1, Landroidx/media3/exoplayer/r3;->s:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/b3;->o(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJ)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    return-object p1
.end method

.method private k(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v14, p2

    iget-object v15, v14, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v0, v15, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v6, v0}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-object v3, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget v4, v7, Landroidx/media3/exoplayer/b3;->g:I

    iget-boolean v5, v7, Landroidx/media3/exoplayer/b3;->h:Z

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/e0;->d(ILandroidx/media3/common/e0$b;Landroidx/media3/common/e0$c;IZ)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    const/4 v3, 0x1

    invoke-virtual {v6, v0, v1, v3}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    move-result-object v1

    iget v11, v1, Landroidx/media3/common/e0$b;->c:I

    iget-object v1, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-object v1, v1, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, v15, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/r$b;->d:J

    iget-object v5, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    invoke-virtual {v6, v11, v5}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/e0$c;->n:I

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v8, 0x0

    if-ne v5, v0, :cond_4

    iget-object v0, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget-object v10, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v3, p3

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object/from16 v8, p1

    move-object v9, v0

    move-object v0, v15

    move-wide v14, v3

    invoke-virtual/range {v8 .. v15}, Landroidx/media3/common/e0;->k(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, v1, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v1, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v3, v1, Landroidx/media3/exoplayer/source/r$b;->d:J

    :cond_2
    :goto_0
    move-wide v12, v3

    move-wide/from16 v3, v16

    move-wide/from16 v18, v8

    move-object v9, v2

    move-wide/from16 v1, v18

    goto :goto_1

    :cond_3
    invoke-direct {v7, v2}, Landroidx/media3/exoplayer/b3;->T(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v10, -0x1

    cmp-long v1, v3, v10

    if-nez v1, :cond_2

    iget-wide v3, v7, Landroidx/media3/exoplayer/b3;->f:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v3

    iput-wide v10, v7, Landroidx/media3/exoplayer/b3;->f:J

    goto :goto_0

    :cond_4
    move-object v0, v15

    move-wide v12, v3

    move-wide v3, v8

    move-object v9, v1

    move-wide v1, v3

    :goto_1
    iget-object v14, v7, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget-object v15, v7, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    move-object/from16 v8, p1

    move-wide v10, v1

    invoke-static/range {v8 .. v15}, Landroidx/media3/exoplayer/b3;->Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v5

    cmp-long v8, v3, v16

    if-eqz v8, :cond_5

    iget-wide v8, v0, Landroidx/media3/exoplayer/z2;->c:J

    cmp-long v8, v8, v16

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v8, v8, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-direct {v7, v8, v6}, Landroidx/media3/exoplayer/b3;->A(Ljava/lang/Object;Landroidx/media3/common/e0;)Z

    move-result v8

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    iget-wide v3, v0, Landroidx/media3/exoplayer/z2;->c:J

    :cond_5
    move-wide v8, v1

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_5

    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->c:J

    move-wide v8, v0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v5, v8

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/b3;->o(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0
.end method

.method private l(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;
    .locals 5

    iget-object v0, p2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/media3/exoplayer/z2;->e:J

    add-long/2addr v1, v3

    sub-long/2addr v1, p3

    iget-boolean p3, v0, Landroidx/media3/exoplayer/z2;->h:Z

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/b3;->k(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/media3/exoplayer/b3;->m(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private m(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;
    .locals 15

    move-object v10, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    iget-object v9, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v11, v9, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v1, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v2, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v8, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-boolean v12, v9, Landroidx/media3/exoplayer/z2;->g:Z

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    iget v3, v11, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, v3}, Landroidx/media3/common/e0$b;->a(I)I

    move-result v0

    const/4 v13, 0x0

    if-ne v0, v2, :cond_0

    return-object v13

    :cond_0
    iget-object v1, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v2, v11, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/e0$b;->m(II)I

    move-result v4

    if-ge v4, v0, :cond_1

    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v5, v9, Landroidx/media3/exoplayer/z2;->c:J

    iget-wide v13, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide v7, v13

    move v9, v12

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0

    :cond_1
    iget-wide v0, v9, Landroidx/media3/exoplayer/z2;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    iget-object v1, v10, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget-object v2, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v3, v2, Landroidx/media3/common/e0$b;->c:I

    const-wide/16 v4, 0x0

    move-wide/from16 v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/e0;->k(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJJ)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v13

    :cond_2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_3
    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget v3, v11, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-direct {p0, v8, v2, v3}, Landroidx/media3/exoplayer/b3;->s(Landroidx/media3/common/e0;Ljava/lang/Object;I)J

    move-result-wide v2

    iget-object v4, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v13, v9, Landroidx/media3/exoplayer/z2;->c:J

    iget-wide v2, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide v7, v2

    move-object v2, v4

    move-wide v3, v5

    move-wide v5, v13

    move v9, v12

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0

    :cond_4
    move-wide/from16 v6, p3

    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    if-eq v1, v2, :cond_5

    iget-object v2, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v2, v1}, Landroidx/media3/common/e0$b;->r(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct/range {p0 .. p4}, Landroidx/media3/exoplayer/b3;->k(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/e0$b;->l(I)I

    move-result v4

    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    invoke-virtual {v0, v1}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/e0$b;->h(II)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    iget-object v1, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v2, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/e0$b;->a(I)I

    move-result v1

    if-eq v4, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget v3, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    iget-wide v5, v9, Landroidx/media3/exoplayer/z2;->e:J

    iget-wide v13, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide v7, v13

    move v9, v12

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_1
    iget-object v0, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget v1, v11, Landroidx/media3/exoplayer/source/r$b;->e:I

    invoke-direct {p0, v8, v0, v1}, Landroidx/media3/exoplayer/b3;->s(Landroidx/media3/common/e0;Ljava/lang/Object;I)J

    move-result-wide v3

    iget-object v2, v11, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v5, v9, Landroidx/media3/exoplayer/z2;->e:J

    iget-wide v11, v11, Landroidx/media3/exoplayer/source/r$b;->d:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide v7, v11

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0
.end method

.method private o(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;JJ)Landroidx/media3/exoplayer/z2;
    .locals 13

    move-object v0, p2

    iget-object v1, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    move-object v12, p0

    iget-object v2, v12, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    move-object v3, p1

    invoke-virtual {p1, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v4, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget v5, v0, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v6, v0, Landroidx/media3/exoplayer/source/r$b;->c:I

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v4, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p3

    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    return-object v0
.end method

.method private p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;
    .locals 19

    move-object/from16 v0, p0

    new-instance v7, Landroidx/media3/exoplayer/source/r$b;

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v7, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v1

    iget v2, v7, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v3, v7, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/e0$b;->b(II)J

    move-result-wide v9

    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Landroidx/media3/common/e0$b;->l(I)I

    move-result v1

    const-wide/16 v2, 0x0

    if-ne v4, v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v1}, Landroidx/media3/common/e0$b;->g()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v6, v7, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v1, v6}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v12

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v9, v13

    if-eqz v1, :cond_1

    cmp-long v1, v4, v9

    if-ltz v1, :cond_1

    const-wide/16 v4, 0x1

    sub-long v4, v9, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v3, v1

    goto :goto_1

    :cond_1
    move-wide v3, v4

    :goto_1
    new-instance v16, Landroidx/media3/exoplayer/z2;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    move-object/from16 v1, v16

    move-object v2, v7

    move-wide/from16 v5, p5

    move-wide/from16 v7, v17

    move/from16 v11, p9

    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/z2;-><init>(Landroidx/media3/exoplayer/source/r$b;JJJJZZZZZ)V

    return-object v16
.end method

.method private q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget-object v5, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v5, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/e0$b;->d(J)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    iget-object v9, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v9, v5}, Landroidx/media3/common/e0$b;->r(I)Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v6

    :goto_0
    if-ne v5, v8, :cond_1

    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v10}, Landroidx/media3/common/e0$b;->c()I

    move-result v10

    if-lez v10, :cond_2

    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v10}, Landroidx/media3/common/e0$b;->p()I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_1

    :cond_1
    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v10, v5}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v10, v5}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide v10

    iget-object v12, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-wide v13, v12, Landroidx/media3/common/e0$b;->d:J

    cmp-long v10, v10, v13

    if-nez v10, :cond_2

    invoke-virtual {v12, v5}, Landroidx/media3/common/e0$b;->q(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v7

    move v5, v8

    goto :goto_1

    :cond_2
    move v10, v6

    :goto_1
    new-instance v12, Landroidx/media3/exoplayer/source/r$b;

    move-wide/from16 v13, p7

    invoke-direct {v12, v2, v13, v14, v5}, Landroidx/media3/exoplayer/source/r$b;-><init>(Ljava/lang/Object;JI)V

    invoke-direct {v0, v12}, Landroidx/media3/exoplayer/b3;->C(Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v2

    invoke-direct {v0, v1, v12}, Landroidx/media3/exoplayer/b3;->E(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v24

    invoke-direct {v0, v1, v12, v2}, Landroidx/media3/exoplayer/b3;->D(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Z)Z

    move-result v25

    if-eq v5, v8, :cond_3

    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v5}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v9, :cond_3

    move/from16 v22, v7

    goto :goto_2

    :cond_3
    move/from16 v22, v6

    :goto_2
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v5, v8, :cond_4

    if-nez v9, :cond_4

    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v5}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide v8

    :goto_3
    move-wide/from16 v17, v8

    goto :goto_4

    :cond_4
    if-eqz v10, :cond_5

    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-wide v8, v1, Landroidx/media3/common/e0$b;->d:J

    goto :goto_3

    :cond_5
    move-wide/from16 v17, v13

    :goto_4
    cmp-long v1, v17, v13

    if-eqz v1, :cond_7

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, v17, v8

    if-nez v1, :cond_6

    goto :goto_5

    :cond_6
    move-wide/from16 v19, v17

    goto :goto_6

    :cond_7
    :goto_5
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-wide v8, v1, Landroidx/media3/common/e0$b;->d:J

    move-wide/from16 v19, v8

    :goto_6
    cmp-long v1, v19, v13

    if-eqz v1, :cond_a

    cmp-long v1, v3, v19

    if-ltz v1, :cond_a

    if-nez v25, :cond_8

    if-nez v10, :cond_9

    :cond_8
    move v6, v7

    :cond_9
    int-to-long v3, v6

    sub-long v3, v19, v3

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_a
    move-wide v13, v3

    new-instance v1, Landroidx/media3/exoplayer/z2;

    move-object v11, v1

    move-wide/from16 v15, p5

    move/from16 v21, p9

    move/from16 v23, v2

    invoke-direct/range {v11 .. v25}, Landroidx/media3/exoplayer/z2;-><init>(Landroidx/media3/exoplayer/source/r$b;JJJJZZZZZ)V

    return-object v1
.end method

.method private r(Landroidx/media3/common/e0;Ljava/lang/Object;JJ)Landroidx/media3/exoplayer/z2;
    .locals 11

    move-object v10, p0

    iget-object v6, v10, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget-object v7, v10, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-wide/from16 v4, p5

    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/b3;->Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget v3, v0, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v4, v0, Landroidx/media3/exoplayer/source/r$b;->c:I

    iget-wide v7, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->p(Landroidx/media3/common/e0;Ljava/lang/Object;IIJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-wide v7, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    const/4 v9, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/b3;->q(Landroidx/media3/common/e0;Ljava/lang/Object;JJJZ)Landroidx/media3/exoplayer/z2;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private s(Landroidx/media3/common/e0;Ljava/lang/Object;I)J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p3}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide p1

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-wide p1, p1, Landroidx/media3/common/e0$b;->d:J

    return-wide p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v0, p3}, Landroidx/media3/common/e0$b;->i(I)J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method


# virtual methods
.method public B(Landroidx/media3/common/e0;)V
    .locals 14

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->i:Landroidx/media3/exoplayer/ExoPlayer$c;

    iget-wide v0, v0, Landroidx/media3/exoplayer/ExoPlayer$c;->a:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v2, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Landroidx/media3/exoplayer/b3;->i(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/e0$b;->c:I

    iget-object v4, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/e0$c;->f()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/b3;->T(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    iget-wide v3, p0, Landroidx/media3/exoplayer/b3;->f:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/media3/exoplayer/b3;->f:J

    :cond_1
    move-wide v12, v3

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v13}, Landroidx/media3/exoplayer/b3;->r(Landroidx/media3/common/e0;Ljava/lang/Object;JJ)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->P(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v2

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v4, v0, Landroidx/media3/exoplayer/z2;->e:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroidx/media3/exoplayer/z2;->b:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->e:Landroidx/media3/exoplayer/y2$a;

    invoke-interface {v0, p1, v2, v3}, Landroidx/media3/exoplayer/y2$a;->a(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;

    move-result-object v2

    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/b3;->M(Ljava/util/List;)V

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/b3;->N()V

    return-void
.end method

.method public F(Landroidx/media3/exoplayer/source/q;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public G(Landroidx/media3/exoplayer/source/q;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public J()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/y2;->t()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public L(J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/y2;->w(J)V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/b3;->M(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public O(Landroidx/media3/exoplayer/y2;)I
    .locals 2

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/y2;

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    const/4 v1, 0x3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/exoplayer/y2;->x()V

    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/y2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/y2;->A(Landroidx/media3/exoplayer/y2;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    return v1
.end method

.method public R(Landroidx/media3/common/e0;Ljava/lang/Object;J)Landroidx/media3/exoplayer/source/r$b;
    .locals 10

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/b3;->S(Landroidx/media3/common/e0;Ljava/lang/Object;)J

    move-result-wide v4

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v0, v0, Landroidx/media3/common/e0$b;->c:I

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    invoke-virtual {p1, p2}, Landroidx/media3/common/e0;->b(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget v3, v3, Landroidx/media3/common/e0$c;->n:I

    if-lt v0, v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    const/4 v6, 0x1

    invoke-virtual {p1, v0, v3, v6}, Landroidx/media3/common/e0;->g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;

    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v3}, Landroidx/media3/common/e0$b;->c()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    or-int/2addr v2, v6

    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-wide v7, v3, Landroidx/media3/common/e0$b;->d:J

    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/e0$b;->e(J)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-object p2, p2, Landroidx/media3/common/e0$b;->b:Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_1
    if-eqz v2, :cond_3

    if-eqz v6, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget-wide v6, v3, Landroidx/media3/common/e0$b;->d:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, p2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :goto_2
    iget-object v6, p0, Landroidx/media3/exoplayer/b3;->b:Landroidx/media3/common/e0$c;

    iget-object v7, p0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    move-object v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/b3;->Q(Landroidx/media3/common/e0;Ljava/lang/Object;JJLandroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    return-object p1
.end method

.method public U()Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/z2;->j:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v0, v0, Landroidx/media3/exoplayer/z2;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public W(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/ExoPlayer$c;)V
    .locals 0

    iput-object p2, p0, Landroidx/media3/exoplayer/b3;->i:Landroidx/media3/exoplayer/ExoPlayer$c;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/b3;->B(Landroidx/media3/common/e0;)V

    return-void
.end method

.method public X(Landroidx/media3/common/e0;JJJ)I
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v3, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/b3;->z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Landroidx/media3/exoplayer/b3;->l(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/b3;->f(Landroidx/media3/exoplayer/z2;Landroidx/media3/exoplayer/z2;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    :cond_1
    move-object v1, v4

    :goto_1
    iget-wide v4, v3, Landroidx/media3/exoplayer/z2;->c:J

    invoke-virtual {v1, v4, v5}, Landroidx/media3/exoplayer/z2;->a(J)Landroidx/media3/exoplayer/z2;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v3, v3, Landroidx/media3/exoplayer/z2;->e:J

    iget-wide v5, v1, Landroidx/media3/exoplayer/z2;->e:J

    invoke-static {v3, v4, v5, v6}, Landroidx/media3/exoplayer/b3;->e(JJ)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->E()V

    iget-wide p1, v1, Landroidx/media3/exoplayer/z2;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v3

    if-nez p3, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/y2;->D(J)J

    move-result-wide p1

    :goto_2
    iget-object p3, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    const/4 v1, 0x1

    const-wide/high16 v3, -0x8000000000000000L

    if-ne v0, p3, :cond_4

    iget-object p3, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-boolean p3, p3, Landroidx/media3/exoplayer/z2;->g:Z

    if-nez p3, :cond_4

    cmp-long p3, p4, v3

    if-eqz p3, :cond_3

    cmp-long p3, p4, p1

    if-ltz p3, :cond_4

    :cond_3
    move p3, v1

    goto :goto_3

    :cond_4
    move p3, v2

    :goto_3
    iget-object p4, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    if-ne v0, p4, :cond_6

    cmp-long p4, p6, v3

    if-eqz p4, :cond_5

    cmp-long p1, p6, p1

    if-ltz p1, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    move-result p1

    if-eqz p1, :cond_7

    return p1

    :cond_7
    if-eqz v2, :cond_8

    or-int/lit8 p3, p3, 0x2

    :cond_8
    return p3

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_a
    :goto_4
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/b3;->O(Landroidx/media3/exoplayer/y2;)I

    move-result p1

    return p1

    :cond_b
    return v2
.end method

.method public Y(Landroidx/media3/common/e0;I)I
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/b3;->g:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->V(Landroidx/media3/common/e0;)I

    move-result p1

    return p1
.end method

.method public Z(Landroidx/media3/common/e0;Z)I
    .locals 0

    iput-boolean p2, p0, Landroidx/media3/exoplayer/b3;->h:Z

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->V(Landroidx/media3/common/e0;)I

    move-result p1

    return p1
.end method

.method public b()Landroidx/media3/exoplayer/y2;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    if-ne v0, v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->x()V

    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    if-nez v0, :cond_3

    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v0, v0, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/r$b;->d:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/b3;->q:J

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public c()Landroidx/media3/exoplayer/y2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public d()Landroidx/media3/exoplayer/y2;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/y2;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public g()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/y2;

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->b:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-object v1, v1, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-wide v1, v1, Landroidx/media3/exoplayer/source/r$b;->d:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/b3;->q:J

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->x()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->k()Landroidx/media3/exoplayer/y2;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    iput-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/b3;->o:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    return-void
.end method

.method public h(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/y2;->m()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    iget-object v2, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    iget-wide v2, v2, Landroidx/media3/exoplayer/z2;->e:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroidx/media3/exoplayer/z2;->b:J

    sub-long/2addr v0, v2

    :goto_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/b3;->P(Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/y2;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/b3;->e:Landroidx/media3/exoplayer/y2$a;

    invoke-interface {v2, p1, v0, v1}, Landroidx/media3/exoplayer/y2$a;->a(Landroidx/media3/exoplayer/z2;J)Landroidx/media3/exoplayer/y2;

    move-result-object v2

    goto :goto_1

    :cond_1
    iput-object p1, v2, Landroidx/media3/exoplayer/y2;->h:Landroidx/media3/exoplayer/z2;

    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/y2;->B(J)V

    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/y2;->A(Landroidx/media3/exoplayer/y2;)V

    goto :goto_2

    :cond_2
    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/b3;->p:Ljava/lang/Object;

    iput-object v2, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    iget p1, p0, Landroidx/media3/exoplayer/b3;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/b3;->o:I

    invoke-direct {p0}, Landroidx/media3/exoplayer/b3;->K()V

    return-object v2
.end method

.method public n()Landroidx/media3/exoplayer/y2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public t(JLandroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->m:Landroidx/media3/exoplayer/y2;

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/b3;->j(Landroidx/media3/exoplayer/r3;)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p3, p3, Landroidx/media3/exoplayer/r3;->a:Landroidx/media3/common/e0;

    invoke-direct {p0, p3, v0, p1, p2}, Landroidx/media3/exoplayer/b3;->l(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/y2;J)Landroidx/media3/exoplayer/z2;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public u()Landroidx/media3/exoplayer/y2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->j:Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public v(Landroidx/media3/exoplayer/source/q;)Landroidx/media3/exoplayer/y2;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/b3;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/y2;

    iget-object v2, v1, Landroidx/media3/exoplayer/y2;->a:Landroidx/media3/exoplayer/source/q;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public w()Landroidx/media3/exoplayer/y2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->n:Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public x()Landroidx/media3/exoplayer/y2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->l:Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public y()Landroidx/media3/exoplayer/y2;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b3;->k:Landroidx/media3/exoplayer/y2;

    return-object v0
.end method

.method public z(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/z2;)Landroidx/media3/exoplayer/z2;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/b3;->C(Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v13

    invoke-direct {v0, v1, v3}, Landroidx/media3/exoplayer/b3;->E(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;)Z

    move-result v14

    invoke-direct {v0, v1, v3, v13}, Landroidx/media3/exoplayer/b3;->D(Landroidx/media3/common/e0;Landroidx/media3/exoplayer/source/r$b;Z)Z

    move-result v15

    iget-object v4, v2, Landroidx/media3/exoplayer/z2;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/e0;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    if-nez v1, :cond_1

    iget v1, v3, Landroidx/media3/exoplayer/source/r$b;->e:I

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v7, v1}, Landroidx/media3/common/e0$b;->f(I)J

    move-result-wide v7

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v7, v4

    :goto_1
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v4, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    iget v5, v3, Landroidx/media3/exoplayer/source/r$b;->c:I

    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/e0$b;->b(II)J

    move-result-wide v4

    :goto_2
    move-wide v9, v4

    goto :goto_4

    :cond_2
    cmp-long v1, v7, v4

    if-eqz v1, :cond_4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v7, v4

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-wide v9, v7

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v1}, Landroidx/media3/common/e0$b;->k()J

    move-result-wide v4

    goto :goto_2

    :goto_4
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/r$b;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    iget v4, v3, Landroidx/media3/exoplayer/source/r$b;->b:I

    invoke-virtual {v1, v4}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v1

    :goto_5
    move v12, v1

    goto :goto_6

    :cond_5
    iget v1, v3, Landroidx/media3/exoplayer/source/r$b;->e:I

    if-eq v1, v6, :cond_6

    iget-object v4, v0, Landroidx/media3/exoplayer/b3;->a:Landroidx/media3/common/e0$b;

    invoke-virtual {v4, v1}, Landroidx/media3/common/e0$b;->s(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :goto_6
    new-instance v16, Landroidx/media3/exoplayer/z2;

    iget-wide v4, v2, Landroidx/media3/exoplayer/z2;->b:J

    move/from16 v17, v14

    move/from16 v18, v15

    iget-wide v14, v2, Landroidx/media3/exoplayer/z2;->c:J

    iget-boolean v11, v2, Landroidx/media3/exoplayer/z2;->f:Z

    move-object/from16 v1, v16

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v14

    move/from16 v14, v17

    move/from16 v15, v18

    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/z2;-><init>(Landroidx/media3/exoplayer/source/r$b;JJJJZZZZZ)V

    return-object v16
.end method
