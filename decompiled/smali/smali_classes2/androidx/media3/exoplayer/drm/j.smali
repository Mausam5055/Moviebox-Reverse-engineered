.class public final Landroidx/media3/exoplayer/drm/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/drm/w;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroidx/media3/common/t$f;

.field private c:Landroidx/media3/exoplayer/drm/t;

.field private d:Landroidx/media3/datasource/a$a;

.field private e:Ljava/lang/String;

.field private f:Landroidx/media3/exoplayer/upstream/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/drm/j;->a:Ljava/lang/Object;

    return-void
.end method

.method private b(Landroidx/media3/common/t$f;)Landroidx/media3/exoplayer/drm/t;
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/j;->d:Landroidx/media3/datasource/a$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/datasource/c$b;

    invoke-direct {v0}, Landroidx/media3/datasource/c$b;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/c$b;->d(Ljava/lang/String;)Landroidx/media3/datasource/c$b;

    move-result-object v0

    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/drm/l0;

    iget-object v2, p1, Landroidx/media3/common/t$f;->c:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v3, p1, Landroidx/media3/common/t$f;->h:Z

    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/exoplayer/drm/l0;-><init>(Ljava/lang/String;ZLandroidx/media3/datasource/a$a;)V

    iget-object v0, p1, Landroidx/media3/common/t$f;->e:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/r4;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/exoplayer/drm/l0;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;

    invoke-direct {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;-><init>()V

    iget-object v2, p1, Landroidx/media3/common/t$f;->a:Ljava/util/UUID;

    sget-object v3, Landroidx/media3/exoplayer/drm/k0;->d:Landroidx/media3/exoplayer/drm/b0$c;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->f(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/b0$c;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-boolean v2, p1, Landroidx/media3/common/t$f;->f:Z

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->c(Z)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-boolean v2, p1, Landroidx/media3/common/t$f;->g:Z

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->d(Z)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-object v2, p1, Landroidx/media3/common/t$f;->j:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->e([I)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/j;->f:Landroidx/media3/exoplayer/upstream/m;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->b(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;

    :cond_3
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$b;->a(Landroidx/media3/exoplayer/drm/m0;)Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/media3/common/t$f;->c()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->E(I[B)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;
    .locals 2

    iget-object v0, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object p1, p1, Landroidx/media3/common/t$h;->c:Landroidx/media3/common/t$f;

    if-nez p1, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/drm/t;->a:Landroidx/media3/exoplayer/drm/t;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/j;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/j;->b:Landroidx/media3/common/t$f;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/j;->b:Landroidx/media3/common/t$f;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/j;->b(Landroidx/media3/common/t$f;)Landroidx/media3/exoplayer/drm/t;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/j;->c:Landroidx/media3/exoplayer/drm/t;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/j;->c:Landroidx/media3/exoplayer/drm/t;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/t;

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
