.class Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/drm/DefaultDrmSession$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;

.field private b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

.field final synthetic c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->c:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->B(Ljava/lang/Exception;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->F()V

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/drm/DefaultDrmSession;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->F()V

    :cond_0
    return-void
.end method

.method public onProvisionCompleted()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->b:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$f;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->A()V

    goto :goto_0

    :cond_0
    return-void
.end method
