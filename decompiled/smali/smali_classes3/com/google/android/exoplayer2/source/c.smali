.class public abstract Lcom/google/android/exoplayer2/source/c;
.super Lcom/google/android/exoplayer2/source/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/c$a;,
        Lcom/google/android/exoplayer2/source/c$b;
    }
.end annotation


# instance fields
.field private final h:Ljava/util/HashMap;

.field private i:Landroid/os/Handler;

.field private j:Lcom/google/android/exoplayer2/upstream/k0;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic E(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/c;->I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method

.method private synthetic I(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/c;->J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V

    return-void
.end method


# virtual methods
.method protected B(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->j:Lcom/google/android/exoplayer2/upstream/k0;

    invoke-static {}, Lcom/google/android/exoplayer2/util/p0;->w()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c;->i:Landroid/os/Handler;

    return-void
.end method

.method protected D()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/c$b;->b:Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/o;->e(Lcom/google/android/exoplayer2/source/o$c;)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v3, v1, Lcom/google/android/exoplayer2/source/c$b;->c:Lcom/google/android/exoplayer2/source/c$a;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/source/o;->h(Lcom/google/android/exoplayer2/source/p;)V

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/c$b;->c:Lcom/google/android/exoplayer2/source/c$a;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/o;->r(Lcom/google/android/exoplayer2/drm/s;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected F(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/o$b;
    .locals 0

    return-object p2
.end method

.method protected G(Ljava/lang/Object;J)J
    .locals 0

    return-wide p2
.end method

.method protected H(Ljava/lang/Object;I)I
    .locals 0

    return p2
.end method

.method protected abstract J(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/k3;)V
.end method

.method protected final K(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/o;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    new-instance v0, Lt9/b;

    invoke-direct {v0, p0, p1}, Lt9/b;-><init>(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/c$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/c$a;-><init>(Lcom/google/android/exoplayer2/source/c;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    new-instance v3, Lcom/google/android/exoplayer2/source/c$b;

    invoke-direct {v3, p2, v0, v1}, Lcom/google/android/exoplayer2/source/c$b;-><init>(Lcom/google/android/exoplayer2/source/o;Lcom/google/android/exoplayer2/source/o$c;Lcom/google/android/exoplayer2/source/c$a;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->i:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/o;->g(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->i:Landroid/os/Handler;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplayer2/source/o;->q(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c;->j:Lcom/google/android/exoplayer2/upstream/k0;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->z()Le9/u1;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/o$c;Lcom/google/android/exoplayer2/upstream/k0;Le9/u1;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/a;->A()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/source/o;->o(Lcom/google/android/exoplayer2/source/o$c;)V

    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/o;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/source/o;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/c$b;->b:Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/o;->o(Lcom/google/android/exoplayer2/source/o$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/c$b;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/c$b;->a:Lcom/google/android/exoplayer2/source/o;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/c$b;->b:Lcom/google/android/exoplayer2/source/o$c;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/o;->m(Lcom/google/android/exoplayer2/source/o$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method
