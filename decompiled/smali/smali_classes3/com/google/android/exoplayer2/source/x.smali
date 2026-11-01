.class public final Lcom/google/android/exoplayer2/source/x;
.super Lcom/google/android/exoplayer2/source/a;

# interfaces
.implements Lcom/google/android/exoplayer2/source/w$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/x$b;
    }
.end annotation


# instance fields
.field private final h:Lcom/google/android/exoplayer2/v1;

.field private final i:Lcom/google/android/exoplayer2/v1$h;

.field private final j:Lcom/google/android/exoplayer2/upstream/k$a;

.field private final k:Lcom/google/android/exoplayer2/source/r$a;

.field private final l:Lcom/google/android/exoplayer2/drm/u;

.field private final m:Lcom/google/android/exoplayer2/upstream/z;

.field private final n:I

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Lcom/google/android/exoplayer2/upstream/k0;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/v1$h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/v1$h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/v1;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/upstream/k$a;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/x;->k:Lcom/google/android/exoplayer2/source/r$a;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/x;->m:Lcom/google/android/exoplayer2/upstream/z;

    iput p6, p0, Lcom/google/android/exoplayer2/source/x;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;ILcom/google/android/exoplayer2/source/x$a;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/x;-><init>(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/source/r$a;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;I)V

    return-void
.end method

.method private E()V
    .locals 9

    new-instance v8, Lt9/u;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/x;->q:Z

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/x;->r:Z

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/v1;

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lt9/u;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/v1;)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/source/x$a;

    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplayer2/source/x$a;-><init>(Lcom/google/android/exoplayer2/source/x;Lcom/google/android/exoplayer2/k3;)V

    move-object v8, v0

    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/a;->C(Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/x;->s:Lcom/google/android/exoplayer2/upstream/k0;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/drm/u;->prepare()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->z()Le9/u1;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/u;->b(Landroid/os/Looper;Le9/u1;)V

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->E()V

    return-void
.end method

.method protected D()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/drm/u;->release()V

    return-void
.end method

.method public a()Lcom/google/android/exoplayer2/v1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/x;->h:Lcom/google/android/exoplayer2/v1;

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 14

    move-object v12, p0

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->j:Lcom/google/android/exoplayer2/upstream/k$a;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k$a;->createDataSource()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v2

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->s:Lcom/google/android/exoplayer2/upstream/k0;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Lcom/google/android/exoplayer2/upstream/k;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    :cond_0
    new-instance v13, Lcom/google/android/exoplayer2/source/w;

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/v1$h;

    iget-object v1, v0, Lcom/google/android/exoplayer2/v1$h;->a:Landroid/net/Uri;

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->k:Lcom/google/android/exoplayer2/source/r$a;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->z()Le9/u1;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/r$a;->a(Le9/u1;)Lcom/google/android/exoplayer2/source/r;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/exoplayer2/source/x;->l:Lcom/google/android/exoplayer2/drm/u;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->t(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object v5

    iget-object v6, v12, Lcom/google/android/exoplayer2/source/x;->m:Lcom/google/android/exoplayer2/upstream/z;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object v7

    iget-object v0, v12, Lcom/google/android/exoplayer2/source/x;->i:Lcom/google/android/exoplayer2/v1$h;

    iget-object v10, v0, Lcom/google/android/exoplayer2/v1$h;->e:Ljava/lang/String;

    iget v11, v12, Lcom/google/android/exoplayer2/source/x;->n:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/w;-><init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/source/r;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/upstream/z;Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/w$b;Lcom/google/android/exoplayer2/upstream/b;Ljava/lang/String;I)V

    return-object v13
.end method

.method public k(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/w;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/w;->S()V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public p(JZZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->q:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/x;->r:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/x;->p:J

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/source/x;->q:Z

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/source/x;->r:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/x;->o:Z

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/x;->E()V

    return-void
.end method
