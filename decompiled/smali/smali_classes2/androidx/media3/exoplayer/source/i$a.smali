.class final Landroidx/media3/exoplayer/source/i$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ll2/x;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private d:Landroidx/media3/datasource/a$a;

.field private e:Z

.field private f:Li3/s$a;

.field private g:I

.field private h:Landroidx/media3/exoplayer/drm/w;

.field private i:Landroidx/media3/exoplayer/upstream/m;


# direct methods
.method public constructor <init>(Ll2/x;Li3/s$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->a:Ll2/x;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/i$a;->f:Li3/s$a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->b:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/i$a;->e:Z

    return-void
.end method

.method public static synthetic a(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i$a;->g(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/source/i$a;->j(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/source/i$a;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/i$a;->k(Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i$a;->i(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i$a;->h(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i;->i(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic h(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i;->i(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic i(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/i;->i(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic j(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/source/i;->h(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/r$a;

    move-result-object p0

    return-object p0
.end method

.method private synthetic k(Landroidx/media3/datasource/a$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/b0$b;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i$a;->a:Ll2/x;

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/source/b0$b;-><init>(Landroidx/media3/datasource/a$a;Ll2/x;)V

    return-object v0
.end method

.method private l(I)Lcom/google/common/base/q;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->d:Landroidx/media3/datasource/a$a;

    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/a$a;

    const-class v1, Landroidx/media3/exoplayer/source/r$a;

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    new-instance v1, Landroidx/media3/exoplayer/source/h;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/source/h;-><init>(Landroidx/media3/exoplayer/source/i$a;Landroidx/media3/datasource/a$a;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized contentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "androidx.media3.exoplayer.rtsp.RtspMediaSource$Factory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/source/g;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/g;-><init>(Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    const-class v2, Landroidx/media3/exoplayer/hls/HlsMediaSource$Factory;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/source/f;

    invoke-direct {v2, v1, v0}, Landroidx/media3/exoplayer/source/f;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)V

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_4
    const-string v2, "androidx.media3.exoplayer.smoothstreaming.SsMediaSource$Factory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/source/e;

    invoke-direct {v2, v1, v0}, Landroidx/media3/exoplayer/source/e;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)V

    goto :goto_0

    :cond_5
    const-class v2, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/source/d;

    invoke-direct {v2, v1, v0}, Landroidx/media3/exoplayer/source/d;-><init>(Ljava/lang/Class;Landroidx/media3/datasource/a$a;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public f(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/r$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/i$a;->l(I)Lcom/google/common/base/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/r$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i$a;->h:Landroidx/media3/exoplayer/drm/w;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r$a;->e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/i$a;->i:Landroidx/media3/exoplayer/upstream/m;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r$a;->f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/i$a;->f:Li3/s$a;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r$a;->a(Li3/s$a;)Landroidx/media3/exoplayer/source/r$a;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/i$a;->e:Z

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r$a;->c(Z)Landroidx/media3/exoplayer/source/r$a;

    iget v1, p0, Landroidx/media3/exoplayer/source/i$a;->g:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r$a;->b(I)Landroidx/media3/exoplayer/source/r$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public m(I)V
    .locals 1

    iput p1, p0, Landroidx/media3/exoplayer/source/i$a;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->a:Ll2/x;

    invoke-interface {v0, p1}, Ll2/x;->b(I)Ll2/x;

    return-void
.end method

.method public n(Landroidx/media3/datasource/a$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->d:Landroidx/media3/datasource/a$a;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->d:Landroidx/media3/datasource/a$a;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public o(Landroidx/media3/exoplayer/drm/w;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->h:Landroidx/media3/exoplayer/drm/w;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/r$a;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/r$a;->e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->a:Ll2/x;

    instance-of v1, v0, Ll2/m;

    if-eqz v1, :cond_0

    check-cast v0, Ll2/m;

    invoke-virtual {v0, p1}, Ll2/m;->l(I)Ll2/m;

    :cond_0
    return-void
.end method

.method public q(Landroidx/media3/exoplayer/upstream/m;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->i:Landroidx/media3/exoplayer/upstream/m;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/r$a;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/r$a;->f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/i$a;->e:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->a:Ll2/x;

    invoke-interface {v0, p1}, Ll2/x;->d(Z)Ll2/x;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/r$a;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/r$a;->c(Z)Landroidx/media3/exoplayer/source/r$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s(Li3/s$a;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/i$a;->f:Li3/s$a;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->a:Ll2/x;

    invoke-interface {v0, p1}, Ll2/x;->a(Li3/s$a;)Ll2/x;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/i$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/r$a;

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/r$a;->a(Li3/s$a;)Landroidx/media3/exoplayer/source/r$a;

    goto :goto_0

    :cond_0
    return-void
.end method
