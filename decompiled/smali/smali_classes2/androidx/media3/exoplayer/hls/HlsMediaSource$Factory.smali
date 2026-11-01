.class public final Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/hls/f;

.field private b:Landroidx/media3/exoplayer/hls/g;

.field private c:Li3/s$a;

.field private d:Z

.field private e:I

.field private f:Lc2/e;

.field private g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

.field private h:Lg2/e;

.field private i:Landroidx/media3/exoplayer/drm/w;

.field private j:Landroidx/media3/exoplayer/upstream/m;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:J

.field private o:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/hls/c;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/hls/c;-><init>(Landroidx/media3/datasource/a$a;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/hls/f;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/f;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:Landroidx/media3/exoplayer/hls/f;

    new-instance p1, Landroidx/media3/exoplayer/drm/j;

    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/j;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Landroidx/media3/exoplayer/drm/w;

    new-instance p1, Lc2/a;

    invoke-direct {p1}, Lc2/a;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Lc2/e;

    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/a;->p:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    new-instance p1, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Landroidx/media3/exoplayer/upstream/m;

    new-instance p1, Lg2/f;

    invoke-direct {p1}, Lg2/f;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Lg2/e;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->l:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->n:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:Z

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h(Z)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->l(Li3/s$a;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i(I)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h(Z)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/hls/HlsMediaSource;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v2, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Landroidx/media3/exoplayer/hls/g;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/hls/d;

    invoke-direct {v1}, Landroidx/media3/exoplayer/hls/d;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Landroidx/media3/exoplayer/hls/g;

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Li3/s$a;

    if-eqz v1, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Landroidx/media3/exoplayer/hls/g;

    invoke-interface {v3, v1}, Landroidx/media3/exoplayer/hls/g;->a(Li3/s$a;)Landroidx/media3/exoplayer/hls/g;

    :cond_1
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Landroidx/media3/exoplayer/hls/g;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Z

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/hls/g;->c(Z)Landroidx/media3/exoplayer/hls/g;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Landroidx/media3/exoplayer/hls/g;

    iget v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:I

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/hls/g;->b(I)Landroidx/media3/exoplayer/hls/g;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->b:Landroidx/media3/exoplayer/hls/g;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->f:Lc2/e;

    iget-object v3, v2, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object v3, v3, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lc2/c;

    invoke-direct {v5, v1, v3}, Lc2/c;-><init>(Lc2/e;Ljava/util/List;)V

    move-object v9, v5

    goto :goto_0

    :cond_2
    move-object v9, v1

    :goto_0
    new-instance v18, Landroidx/media3/exoplayer/hls/HlsMediaSource;

    move-object/from16 v1, v18

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:Landroidx/media3/exoplayer/hls/f;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->h:Lg2/e;

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Landroidx/media3/exoplayer/drm/w;

    invoke-interface {v6, v2}, Landroidx/media3/exoplayer/drm/w;->a(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;

    move-result-object v7

    iget-object v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Landroidx/media3/exoplayer/upstream/m;

    move-object v8, v10

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->a:Landroidx/media3/exoplayer/hls/f;

    const/4 v13, 0x0

    move-object v6, v13

    invoke-interface {v11, v12, v10, v9, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$a;->a(Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/upstream/m;Lc2/e;Landroidx/media3/exoplayer/upstream/f;)Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    move-result-object v9

    iget-wide v10, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->n:J

    iget-boolean v12, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->k:Z

    iget v13, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->l:I

    iget-boolean v14, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->m:Z

    move-object/from16 v19, v7

    iget-wide v6, v0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->o:J

    move-wide v15, v6

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v7, v19

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v17}, Landroidx/media3/exoplayer/hls/HlsMediaSource;-><init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/hls/f;Landroidx/media3/exoplayer/hls/g;Lg2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;JZIZJLandroidx/media3/exoplayer/hls/HlsMediaSource$a;)V

    return-object v18
.end method

.method public h(Z)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->d:Z

    return-object p0
.end method

.method public i(I)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->e:I

    return-object p0
.end method

.method public j(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/w;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->i:Landroidx/media3/exoplayer/drm/w;

    return-object p0
.end method

.method public k(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/upstream/m;

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->j:Landroidx/media3/exoplayer/upstream/m;

    return-object p0
.end method

.method public l(Li3/s$a;)Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;->c:Li3/s$a;

    return-object p0
.end method
