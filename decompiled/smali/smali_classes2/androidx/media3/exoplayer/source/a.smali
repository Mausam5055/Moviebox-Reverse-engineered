.class public abstract Landroidx/media3/exoplayer/source/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/r;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/HashSet;

.field private final c:Landroidx/media3/exoplayer/source/s$a;

.field private final d:Landroidx/media3/exoplayer/drm/r$a;

.field private e:Landroid/os/Looper;

.field private f:Landroidx/media3/common/e0;

.field private g:Ly1/f4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    new-instance v0, Landroidx/media3/exoplayer/source/s$a;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/s$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    new-instance v0, Landroidx/media3/exoplayer/drm/r$a;

    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/r$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    return-void
.end method


# virtual methods
.method protected final A(Landroidx/media3/common/e0;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/e0;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v1, p0, p1}, Landroidx/media3/exoplayer/source/r$c;->a(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract B()V
.end method

.method public synthetic b()Z
    .locals 1

    invoke-static {p0}, Lg2/k;->c(Landroidx/media3/exoplayer/source/r;)Z

    move-result v0

    return v0
.end method

.method public synthetic c()Landroidx/media3/common/e0;
    .locals 1

    invoke-static {p0}, Lg2/k;->b(Landroidx/media3/exoplayer/source/r;)Landroidx/media3/common/e0;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/s$a;->h(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public final e(Landroidx/media3/exoplayer/source/s;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/s$a;->E(Landroidx/media3/exoplayer/source/s;)V

    return-void
.end method

.method public final h(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V
    .locals 1

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->g(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V

    return-void
.end method

.method public final i(Landroidx/media3/exoplayer/drm/r;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/drm/r$a;->t(Landroidx/media3/exoplayer/drm/r;)V

    return-void
.end method

.method public final k(Landroidx/media3/exoplayer/source/r$c;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->w()V

    :cond_0
    return-void
.end method

.method public synthetic l(Landroidx/media3/common/t;)V
    .locals 0

    invoke-static {p0, p1}, Lg2/k;->d(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/t;)V

    return-void
.end method

.method public final m(Landroidx/media3/exoplayer/source/r$c;Lw1/n;Ly1/f4;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/a;->a(Z)V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/a;->g:Ly1/f4;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/e0;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/a;->z(Lw1/n;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->k(Landroidx/media3/exoplayer/source/r$c;)V

    invoke-interface {p1, p0, p3}, Landroidx/media3/exoplayer/source/r$c;->a(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final n(Landroidx/media3/exoplayer/source/r$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->e:Landroid/os/Looper;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->f:Landroidx/media3/common/e0;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->g:Ly1/f4;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->B()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->o(Landroidx/media3/exoplayer/source/r$c;)V

    :goto_0
    return-void
.end method

.method public final o(Landroidx/media3/exoplayer/source/r$c;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->v()V

    :cond_0
    return-void
.end method

.method public synthetic q(Landroidx/media3/common/t;)Z
    .locals 0

    invoke-static {p0, p1}, Lg2/k;->a(Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/t;)Z

    move-result p1

    return p1
.end method

.method protected final r(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/drm/r$a;->u(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    move-result-object p1

    return-object p1
.end method

.method protected final s(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->d:Landroidx/media3/exoplayer/drm/r$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/drm/r$a;->u(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/drm/r$a;

    move-result-object p1

    return-object p1
.end method

.method protected final t(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/s$a;->H(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    move-result-object p1

    return-object p1
.end method

.method protected final u(Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->c:Landroidx/media3/exoplayer/source/s$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/source/s$a;->H(ILandroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/s$a;

    move-result-object p1

    return-object p1
.end method

.method protected v()V
    .locals 0

    return-void
.end method

.method protected w()V
    .locals 0

    return-void
.end method

.method protected final x()Ly1/f4;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->g:Ly1/f4;

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/f4;

    return-object v0
.end method

.method protected final y()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract z(Lw1/n;)V
.end method
