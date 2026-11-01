.class public final Lcom/google/android/exoplayer2/source/m;
.super Lcom/google/android/exoplayer2/source/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/m$b;,
        Lcom/google/android/exoplayer2/source/m$a;
    }
.end annotation


# instance fields
.field private final k:Lcom/google/android/exoplayer2/source/o;

.field private final l:Z

.field private final m:Lcom/google/android/exoplayer2/k3$d;

.field private final n:Lcom/google/android/exoplayer2/k3$b;

.field private o:Lcom/google/android/exoplayer2/source/m$a;

.field private p:Lcom/google/android/exoplayer2/source/l;

.field private q:Z

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->k:Lcom/google/android/exoplayer2/source/o;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/o;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->l:Z

    new-instance p2, Lcom/google/android/exoplayer2/k3$d;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/k3$d;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/k3$d;

    new-instance p2, Lcom/google/android/exoplayer2/k3$b;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/k3$b;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/m;->n:Lcom/google/android/exoplayer2/k3$b;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/o;->c()Lcom/google/android/exoplayer2/k3;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    invoke-static {p2, p1, p1}, Lcom/google/android/exoplayer2/source/m$a;->B(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/m$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->s:Z

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/source/o;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/m$a;->A(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/source/m$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    :goto_1
    return-void
.end method

.method private M(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/m$a;->y(Lcom/google/android/exoplayer2/source/m$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/m$a;->y(Lcom/google/android/exoplayer2/source/m$a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method private N(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/m$a;->y(Lcom/google/android/exoplayer2/source/m$a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/m$a;->y(Lcom/google/android/exoplayer2/source/m$a;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private R(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v2, v2, Lt9/j;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/m$a;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->n:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/k3;->j(ILcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/exoplayer2/k3$b;->d:J

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
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/l;->l(J)V

    return-void
.end method


# virtual methods
.method public B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/c;->B(Lcom/google/android/exoplayer2/upstream/k0;)V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->l:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->q:Z

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->k:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/source/c;->K(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;)V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->r:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/m;->q:Z

    invoke-super {p0}, Lcom/google/android/exoplayer2/source/c;->D()V

    return-void
.end method

.method protected bridge synthetic F(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/m;->O(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/m;->Q(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method

.method public L(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/l;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/l;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/l;-><init>(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/m;->k:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/l;->n(Lcom/google/android/exoplayer2/source/o;)V

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->r:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lt9/j;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/m;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/o$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/l;->c(Lcom/google/android/exoplayer2/source/o$b;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->q:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->q:Z

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/m;->k:Lcom/google/android/exoplayer2/source/o;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/c;->K(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected O(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 0

    iget-object p1, p2, Lt9/j;->a:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/m;->M(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/o$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    return-object p1
.end method

.method public P()Lcom/google/android/exoplayer2/k3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    return-object v0
.end method

.method protected Q(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 12

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->r:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/m$a;->z(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/source/m$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/l;->f()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/m;->R(J)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/k3;->u()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/m;->s:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/m$a;->z(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/source/m$a;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/k3$d;->r:Ljava/lang/Object;

    sget-object p2, Lcom/google/android/exoplayer2/source/m$a;->f:Ljava/lang/Object;

    invoke-static {p3, p1, p2}, Lcom/google/android/exoplayer2/source/m$a;->B(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/m$a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/k3$d;

    const/4 p2, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/k3$d;->f()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/k3$d;

    iget-object p1, p1, Lcom/google/android/exoplayer2/k3$d;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/l;->i()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    iget-object v5, v5, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-object v5, v5, Lt9/j;->a:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/m;->n:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/k3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3$b;)Lcom/google/android/exoplayer2/k3$b;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/m;->n:Lcom/google/android/exoplayer2/k3$b;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/k3$b;->q()J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/k3$d;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/exoplayer2/k3;->r(ILcom/google/android/exoplayer2/k3$d;)Lcom/google/android/exoplayer2/k3$d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/k3$d;->f()J

    move-result-wide v2

    cmp-long p2, v4, v2

    if-eqz p2, :cond_3

    move-wide v10, v4

    goto :goto_1

    :cond_3
    move-wide v10, v0

    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/m;->m:Lcom/google/android/exoplayer2/k3$d;

    iget-object v8, p0, Lcom/google/android/exoplayer2/source/m;->n:Lcom/google/android/exoplayer2/k3$b;

    const/4 v9, 0x0

    move-object v6, p3

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplayer2/k3;->n(Lcom/google/android/exoplayer2/k3$d;Lcom/google/android/exoplayer2/k3$b;IJ)Landroid/util/Pair;

    move-result-object p2

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->s:Z

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/m$a;->z(Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/source/m$a;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-static {p3, p1, v0}, Lcom/google/android/exoplayer2/source/m$a;->B(Lcom/google/android/exoplayer2/k3;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/m$a;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    if-eqz p1, :cond_5

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/m;->R(J)V

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    iget-object p2, p1, Lt9/j;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/m;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/o$b;->c(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/o$b;

    move-result-object p1

    goto :goto_4

    :cond_5
    :goto_3
    const/4 p1, 0x0

    :goto_4
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->s:Z

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/m;->r:Z

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/m;->o:Lcom/google/android/exoplayer2/source/m$a;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/k3;)V

    if-eqz p1, :cond_6

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/source/l;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/l;->c(Lcom/google/android/exoplayer2/source/o$b;)V

    :cond_6
    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/v1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->k:Lcom/google/android/exoplayer2/source/o;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/o;->a()Lcom/google/android/exoplayer2/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/m;->L(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/l;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/google/android/exoplayer2/source/n;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/source/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/l;->m()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/m;->p:Lcom/google/android/exoplayer2/source/l;

    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method
