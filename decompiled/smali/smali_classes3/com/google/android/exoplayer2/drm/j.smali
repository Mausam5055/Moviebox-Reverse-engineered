.class public final Lcom/google/android/exoplayer2/drm/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/x;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/v1$f;

.field private c:Lcom/google/android/exoplayer2/drm/u;

.field private d:Lcom/google/android/exoplayer2/upstream/k$a;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/j;->a:Ljava/lang/Object;

    return-void
.end method

.method private b(Lcom/google/android/exoplayer2/v1$f;)Lcom/google/android/exoplayer2/drm/u;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/j;->d:Lcom/google/android/exoplayer2/upstream/k$a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/upstream/s$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/s$b;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/s$b;->b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/s$b;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/drm/i0;

    iget-object v2, p1, Lcom/google/android/exoplayer2/v1$f;->c:Landroid/net/Uri;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/v1$f;->h:Z

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/exoplayer2/drm/i0;-><init>(Ljava/lang/String;ZLcom/google/android/exoplayer2/upstream/k$a;)V

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1$f;->e:Lcom/google/common/collect/ImmutableMap;

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

    invoke-virtual {v1, v3, v2}, Lcom/google/android/exoplayer2/drm/i0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;-><init>()V

    iget-object v2, p1, Lcom/google/android/exoplayer2/v1$f;->a:Ljava/util/UUID;

    sget-object v3, Lcom/google/android/exoplayer2/drm/h0;->d:Lcom/google/android/exoplayer2/drm/c0$c;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->e(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/c0$c;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/v1$f;->f:Z

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->b(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/v1$f;->g:Z

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->c(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/exoplayer2/v1$f;->j:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2}, Lcom/google/common/primitives/Ints;->o(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->d([I)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a(Lcom/google/android/exoplayer2/drm/j0;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1$f;->c()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->E(I[B)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/v1;)Lcom/google/android/exoplayer2/drm/u;
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v1;->b:Lcom/google/android/exoplayer2/v1$h;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v1$h;->c:Lcom/google/android/exoplayer2/v1$f;

    if-eqz p1, :cond_2

    sget v0, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/j;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/j;->b:Lcom/google/android/exoplayer2/v1$f;

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/p0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/j;->b:Lcom/google/android/exoplayer2/v1$f;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/j;->b(Lcom/google/android/exoplayer2/v1$f;)Lcom/google/android/exoplayer2/drm/u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/j;->c:Lcom/google/android/exoplayer2/drm/u;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/drm/j;->c:Lcom/google/android/exoplayer2/drm/u;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/u;

    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    sget-object p1, Lcom/google/android/exoplayer2/drm/u;->a:Lcom/google/android/exoplayer2/drm/u;

    return-object p1
.end method
