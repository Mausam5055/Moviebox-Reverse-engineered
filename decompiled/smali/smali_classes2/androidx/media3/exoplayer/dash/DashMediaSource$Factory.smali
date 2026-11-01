.class public final Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/dash/a$a;

.field private final b:Landroidx/media3/datasource/a$a;

.field private c:Landroidx/media3/exoplayer/drm/w;

.field private d:Lg2/e;

.field private e:Landroidx/media3/exoplayer/upstream/m;

.field private f:J

.field private g:J

.field private h:Landroidx/media3/exoplayer/upstream/q$a;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/dash/d$a;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/dash/d$a;-><init>(Landroidx/media3/datasource/a$a;)V

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/dash/a$a;Landroidx/media3/datasource/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/dash/a$a;Landroidx/media3/datasource/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/dash/a$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Landroidx/media3/datasource/a$a;

    new-instance p1, Landroidx/media3/exoplayer/drm/j;

    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/j;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/w;

    new-instance p1, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:Landroidx/media3/exoplayer/upstream/m;

    const-wide/16 p1, 0x7530

    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    const-wide/32 p1, 0x4c4b40

    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    new-instance p1, Lg2/f;

    invoke-direct {p1}, Lg2/f;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:Lg2/e;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->h(Z)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->l(Li3/s$a;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->i(I)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->h(Z)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->j(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->k(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/dash/DashMediaSource;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v2, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->h:Landroidx/media3/exoplayer/upstream/q$a;

    if-nez v1, :cond_0

    new-instance v1, La2/d;

    invoke-direct {v1}, La2/d;-><init>()V

    :cond_0
    iget-object v3, v2, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    iget-object v3, v3, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Landroidx/media3/exoplayer/offline/r;

    invoke-direct {v4, v1, v3}, Landroidx/media3/exoplayer/offline/r;-><init>(Landroidx/media3/exoplayer/upstream/q$a;Ljava/util/List;)V

    move-object v5, v4

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_0
    new-instance v16, Landroidx/media3/exoplayer/dash/DashMediaSource;

    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Landroidx/media3/datasource/a$a;

    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    iget-object v7, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:Lg2/e;

    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/w;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/drm/w;->a(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;

    move-result-object v9

    iget-object v10, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:Landroidx/media3/exoplayer/upstream/m;

    iget-wide v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/dash/DashMediaSource;-><init>(Landroidx/media3/common/t;La2/c;Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/upstream/q$a;Landroidx/media3/exoplayer/dash/a$a;Lg2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;JJLandroidx/media3/exoplayer/dash/DashMediaSource$a;)V

    return-object v16
.end method

.method public h(Z)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/dash/a$a;->c(Z)Landroidx/media3/exoplayer/dash/a$a;

    return-object p0
.end method

.method public i(I)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/dash/a$a;->b(I)Landroidx/media3/exoplayer/dash/a$a;

    return-object p0
.end method

.method public j(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/w;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/w;

    return-object p0
.end method

.method public k(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/upstream/m;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:Landroidx/media3/exoplayer/upstream/m;

    return-object p0
.end method

.method public l(Li3/s$a;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li3/s$a;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/dash/a$a;->a(Li3/s$a;)Landroidx/media3/exoplayer/dash/a$a;

    return-object p0
.end method
