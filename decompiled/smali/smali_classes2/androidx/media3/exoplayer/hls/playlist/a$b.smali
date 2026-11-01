.class Landroidx/media3/exoplayer/hls/playlist/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/hls/playlist/a;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/hls/playlist/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/hls/playlist/a;Landroidx/media3/exoplayer/hls/playlist/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/hls/playlist/a$b;-><init>(Landroidx/media3/exoplayer/hls/playlist/a;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/a;->C(Landroidx/media3/exoplayer/hls/playlist/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(Landroid/net/Uri;Landroidx/media3/exoplayer/upstream/m$c;Z)Z
    .locals 7

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-static {p3}, Landroidx/media3/exoplayer/hls/playlist/a;->w(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-static {p3}, Landroidx/media3/exoplayer/hls/playlist/a;->t(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/d;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/hls/playlist/d;

    iget-object p3, p3, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    move v3, v0

    move v4, v3

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-static {v5}, Landroidx/media3/exoplayer/hls/playlist/a;->D(Landroidx/media3/exoplayer/hls/playlist/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v6, v6, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/a$c;

    if-eqz v5, :cond_0

    invoke-static {v5}, Landroidx/media3/exoplayer/hls/playlist/a$c;->d(Landroidx/media3/exoplayer/hls/playlist/a$c;)J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Landroidx/media3/exoplayer/upstream/m$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/playlist/a;->t(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/hls/playlist/d;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/playlist/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p3, v2, v0, v1, v4}, Landroidx/media3/exoplayer/upstream/m$a;-><init>(IIII)V

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/playlist/a;->G(Landroidx/media3/exoplayer/hls/playlist/a;)Landroidx/media3/exoplayer/upstream/m;

    move-result-object v1

    invoke-interface {v1, p3, p2}, Landroidx/media3/exoplayer/upstream/m;->d(Landroidx/media3/exoplayer/upstream/m$a;Landroidx/media3/exoplayer/upstream/m$c;)Landroidx/media3/exoplayer/upstream/m$b;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p3, p2, Landroidx/media3/exoplayer/upstream/m$b;->a:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/playlist/a$b;->a:Landroidx/media3/exoplayer/hls/playlist/a;

    invoke-static {p3}, Landroidx/media3/exoplayer/hls/playlist/a;->D(Landroidx/media3/exoplayer/hls/playlist/a;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/playlist/a$c;

    if-eqz p1, :cond_2

    iget-wide p2, p2, Landroidx/media3/exoplayer/upstream/m$b;->b:J

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/hls/playlist/a$c;->b(Landroidx/media3/exoplayer/hls/playlist/a$c;J)Z

    :cond_2
    return v0
.end method
