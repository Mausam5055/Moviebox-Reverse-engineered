.class public final Landroidx/media3/exoplayer/source/p;
.super Landroidx/media3/exoplayer/source/l0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/p$a;,
        Landroidx/media3/exoplayer/source/p$b;
    }
.end annotation


# instance fields
.field private final m:Z

.field private final n:Landroidx/media3/common/e0$c;

.field private final o:Landroidx/media3/common/e0$b;

.field private p:Landroidx/media3/exoplayer/source/p$a;

.field private q:Landroidx/media3/exoplayer/source/o;

.field private r:Z

.field private s:Z

.field private t:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/r;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/l0;-><init>(Landroidx/media3/exoplayer/source/r;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/r;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/p;->m:Z

    new-instance p2, Landroidx/media3/common/e0$c;

    invoke-direct {p2}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/p;->n:Landroidx/media3/common/e0$c;

    new-instance p2, Landroidx/media3/common/e0$b;

    invoke-direct {p2}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/p;->o:Landroidx/media3/common/e0$b;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/r;->c()Landroidx/media3/common/e0;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-static {p2, p1, p1}, Landroidx/media3/exoplayer/source/p$a;->v(Landroidx/media3/common/e0;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->t:Z

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/r;->a()Landroidx/media3/common/t;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/source/p$a;->u(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    :goto_1
    return-void
.end method

.method private U(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/p$a;->s(Landroidx/media3/exoplayer/source/p$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/p$a;->s(Landroidx/media3/exoplayer/source/p$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/source/p$a;->h:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private V(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/p$a;->s(Landroidx/media3/exoplayer/source/p$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/source/p$a;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/p$a;->s(Landroidx/media3/exoplayer/source/p$a;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private X(J)Z
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/p$a;->b(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/p;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v2, v1, v3}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/common/e0$b;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x1

    sub-long/2addr v1, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/o;->m(J)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public B()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->s:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->r:Z

    invoke-super {p0}, Landroidx/media3/exoplayer/source/c;->B()V

    return-void
.end method

.method protected J(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
    .locals 1

    iget-object v0, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/p;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/r$b;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    return-object p1
.end method

.method protected P(Landroidx/media3/common/e0;)V
    .locals 14

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/p$a;->t(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/o;->i()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/p;->X(J)Z

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/e0;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/p$a;->t(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/media3/common/e0$c;->q:Ljava/lang/Object;

    sget-object v1, Landroidx/media3/exoplayer/source/p$a;->h:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/source/p$a;->v(Landroidx/media3/common/e0;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->n:Landroidx/media3/common/e0$c;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->n:Landroidx/media3/common/e0$c;

    invoke-virtual {v0}, Landroidx/media3/common/e0$c;->c()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->n:Landroidx/media3/common/e0$c;

    iget-object v0, v0, Landroidx/media3/common/e0$c;->a:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/o;->j()J

    move-result-wide v4

    iget-object v6, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v7, v7, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    iget-object v8, p0, Landroidx/media3/exoplayer/source/p;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v6, v7, v8}, Landroidx/media3/exoplayer/source/m;->h(Ljava/lang/Object;Landroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/p;->o:Landroidx/media3/common/e0$b;

    invoke-virtual {v6}, Landroidx/media3/common/e0$b;->o()J

    move-result-wide v6

    add-long/2addr v6, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iget-object v5, p0, Landroidx/media3/exoplayer/source/p;->n:Landroidx/media3/common/e0$c;

    invoke-virtual {v4, v1, v5}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/e0$c;->c()J

    move-result-wide v4

    cmp-long v1, v6, v4

    if-eqz v1, :cond_3

    move-wide v12, v6

    goto :goto_1

    :cond_3
    move-wide v12, v2

    :goto_1
    iget-object v9, p0, Landroidx/media3/exoplayer/source/p;->n:Landroidx/media3/common/e0$c;

    iget-object v10, p0, Landroidx/media3/exoplayer/source/p;->o:Landroidx/media3/common/e0$b;

    const/4 v11, 0x0

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroidx/media3/common/e0;->j(Landroidx/media3/common/e0$c;Landroidx/media3/common/e0$b;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/p;->t:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/p$a;->t(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p1, v0, v2}, Landroidx/media3/exoplayer/source/p$a;->v(Landroidx/media3/common/e0;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    if-eqz p1, :cond_5

    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/source/p;->X(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p1, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/p;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/r$b;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x0

    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->t:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->s:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    if-eqz p1, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/o;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/o;->h(Landroidx/media3/exoplayer/source/r$b;)V

    :cond_6
    return-void
.end method

.method public S()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->r:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l0;->R()V

    :cond_0
    return-void
.end method

.method public T(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/o;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/source/o;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/o;-><init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)V

    iget-object p2, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/source/o;->o(Landroidx/media3/exoplayer/source/r;)V

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/p;->s:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Landroidx/media3/exoplayer/source/r$b;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/p;->V(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/r$b;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/r$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/o;->h(Landroidx/media3/exoplayer/source/r$b;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/p;->r:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/p;->r:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l0;->R()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public W()Landroidx/media3/common/e0;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    return-object v0
.end method

.method public bridge synthetic g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/p;->T(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/o;

    move-result-object p1

    return-object p1
.end method

.method public j(Landroidx/media3/exoplayer/source/q;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/o;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/o;->n()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p;->q:Landroidx/media3/exoplayer/source/o;

    :cond_0
    return-void
.end method

.method public l(Landroidx/media3/common/t;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/p;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    new-instance v1, Lg2/x;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/m;->e:Landroidx/media3/common/e0;

    invoke-direct {v1, v2, p1}, Lg2/x;-><init>(Landroidx/media3/common/e0;Landroidx/media3/common/t;)V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/p$a;->t(Landroidx/media3/common/e0;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/source/p$a;->u(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/p$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/p;->p:Landroidx/media3/exoplayer/source/p$a;

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->l(Landroidx/media3/common/t;)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/l0;->k:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/r;->q(Landroidx/media3/common/t;)Z

    move-result p1

    return p1
.end method
