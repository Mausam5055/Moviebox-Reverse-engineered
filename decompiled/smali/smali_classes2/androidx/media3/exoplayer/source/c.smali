.class public abstract Landroidx/media3/exoplayer/source/c;
.super Landroidx/media3/exoplayer/source/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/c$b;,
        Landroidx/media3/exoplayer/source/c$a;
    }
.end annotation


# instance fields
.field private final h:Ljava/util/HashMap;

.field private i:Landroid/os/Handler;

.field private j:Lw1/n;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic C(Landroidx/media3/exoplayer/source/c;Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/c;->G(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    return-void
.end method

.method private synthetic G(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/c;->H(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media3/exoplayer/source/c$b;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/c$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/c$b;->b:Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/r;->n(Landroidx/media3/exoplayer/source/r$c;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/source/c$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/c$b;->c:Landroidx/media3/exoplayer/source/c$a;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/r;->e(Landroidx/media3/exoplayer/source/s;)V

    iget-object v2, v1, Landroidx/media3/exoplayer/source/c$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/c$b;->c:Landroidx/media3/exoplayer/source/c$a;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/source/r;->i(Landroidx/media3/exoplayer/drm/r;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected abstract D(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r$b;)Landroidx/media3/exoplayer/source/r$b;
.end method

.method protected E(Ljava/lang/Object;JLandroidx/media3/exoplayer/source/r$b;)J
    .locals 0

    return-wide p2
.end method

.method protected F(Ljava/lang/Object;I)I
    .locals 0

    return p2
.end method

.method protected abstract H(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;Landroidx/media3/common/e0;)V
.end method

.method protected final I(Ljava/lang/Object;Landroidx/media3/exoplayer/source/r;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    new-instance v0, Lg2/c;

    invoke-direct {v0, p0, p1}, Lg2/c;-><init>(Landroidx/media3/exoplayer/source/c;Ljava/lang/Object;)V

    new-instance v1, Landroidx/media3/exoplayer/source/c$a;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/c$a;-><init>(Landroidx/media3/exoplayer/source/c;Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

    new-instance v3, Landroidx/media3/exoplayer/source/c$b;

    invoke-direct {v3, p2, v0, v1}, Landroidx/media3/exoplayer/source/c$b;-><init>(Landroidx/media3/exoplayer/source/r;Landroidx/media3/exoplayer/source/r$c;Landroidx/media3/exoplayer/source/c$a;)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c;->i:Landroid/os/Handler;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Landroidx/media3/exoplayer/source/r;->d(Landroid/os/Handler;Landroidx/media3/exoplayer/source/s;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c;->i:Landroid/os/Handler;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-interface {p2, p1, v1}, Landroidx/media3/exoplayer/source/r;->h(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/r;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/c;->j:Lw1/n;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->x()Ly1/f4;

    move-result-object v1

    invoke-interface {p2, v0, p1, v1}, Landroidx/media3/exoplayer/source/r;->m(Landroidx/media3/exoplayer/source/r$c;Lw1/n;Ly1/f4;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/a;->y()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/source/r;->o(Landroidx/media3/exoplayer/source/r$c;)V

    :cond_0
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media3/exoplayer/source/c$b;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/c$b;->a:Landroidx/media3/exoplayer/source/r;

    invoke-interface {v1}, Landroidx/media3/exoplayer/source/r;->maybeThrowSourceInfoRefreshError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected v()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media3/exoplayer/source/c$b;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/c$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/c$b;->b:Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/source/r;->o(Landroidx/media3/exoplayer/source/r$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected w()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/c;->h:Ljava/util/HashMap;

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

    check-cast v1, Landroidx/media3/exoplayer/source/c$b;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/c$b;->a:Landroidx/media3/exoplayer/source/r;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/c$b;->b:Landroidx/media3/exoplayer/source/r$c;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/source/r;->k(Landroidx/media3/exoplayer/source/r$c;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z(Lw1/n;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/c;->j:Lw1/n;

    invoke-static {}, Landroidx/media3/common/util/a1;->A()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/c;->i:Landroid/os/Handler;

    return-void
.end method
