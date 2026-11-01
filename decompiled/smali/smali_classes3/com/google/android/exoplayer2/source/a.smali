.class public abstract Lcom/google/android/exoplayer2/source/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/o;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Ljava/util/HashSet;

.field private final c:Lcom/google/android/exoplayer2/source/p$a;

.field private final d:Lcom/google/android/exoplayer2/drm/s$a;

.field private e:Landroid/os/Looper;

.field private f:Lcom/google/android/exoplayer2/k3;

.field private g:Le9/u1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/exoplayer2/source/p$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/p$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/p$a;

    new-instance v0, Lcom/google/android/exoplayer2/drm/s$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/s$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    return-void
.end method


# virtual methods
.method protected final A()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected abstract B(Lcom/google/android/exoplayer2/upstream/k0;)V
.end method

.method protected final C(Lcom/google/android/exoplayer2/k3;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->f:Lcom/google/android/exoplayer2/k3;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v1, p0, p1}, Lcom/google/android/exoplayer2/source/o$c;->a(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract D()V
.end method

.method public synthetic b()Z
    .locals 1

    invoke-static {p0}, Lt9/k;->b(Lcom/google/android/exoplayer2/source/o;)Z

    move-result v0

    return v0
.end method

.method public synthetic c()Lcom/google/android/exoplayer2/k3;
    .locals 1

    invoke-static {p0}, Lt9/k;->a(Lcom/google/android/exoplayer2/source/o;)Lcom/google/android/exoplayer2/k3;

    move-result-object v0

    return-object v0
.end method

.method public final e(Lcom/google/android/exoplayer2/source/o$c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->f:Lcom/google/android/exoplayer2/k3;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a;->g:Le9/u1;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->D()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->o(Lcom/google/android/exoplayer2/source/o$c;)V

    :goto_0
    return-void
.end method

.method public final g(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/p$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V

    return-void
.end method

.method public final h(Lcom/google/android/exoplayer2/source/p;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/p$a;->C(Lcom/google/android/exoplayer2/source/p;)V

    return-void
.end method

.method public final i(Lcom/google/android/exoplayer2/source/o$c;Lcom/google/android/exoplayer2/upstream/k0;Le9/u1;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

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
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/a;->g:Le9/u1;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/a;->f:Lcom/google/android/exoplayer2/k3;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/a;->B(Lcom/google/android/exoplayer2/upstream/k0;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->m(Lcom/google/android/exoplayer2/source/o$c;)V

    invoke-interface {p1, p0, p3}, Lcom/google/android/exoplayer2/source/o$c;->a(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final m(Lcom/google/android/exoplayer2/source/o$c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->e:Landroid/os/Looper;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->y()V

    :cond_0
    return-void
.end method

.method public final o(Lcom/google/android/exoplayer2/source/o$c;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/a;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->x()V

    :cond_0
    return-void
.end method

.method public final q(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method public final r(Lcom/google/android/exoplayer2/drm/s;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/drm/s$a;->t(Lcom/google/android/exoplayer2/drm/s;)V

    return-void
.end method

.method protected final s(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/drm/s$a;->u(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    return-object p1
.end method

.method protected final t(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->d:Lcom/google/android/exoplayer2/drm/s$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/s$a;->u(ILcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/drm/s$a;

    move-result-object p1

    return-object p1
.end method

.method protected final u(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/p$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/p$a;->F(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object p1

    return-object p1
.end method

.method protected final v(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/p$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/exoplayer2/source/p$a;->F(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object p1

    return-object p1
.end method

.method protected final w(Lcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;
    .locals 2

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->c:Lcom/google/android/exoplayer2/source/p$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->F(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;

    move-result-object p1

    return-object p1
.end method

.method protected x()V
    .locals 0

    return-void
.end method

.method protected y()V
    .locals 0

    return-void
.end method

.method protected final z()Le9/u1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/a;->g:Le9/u1;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le9/u1;

    return-object v0
.end method
