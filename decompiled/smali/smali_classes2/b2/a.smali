.class public final Lb2/a;
.super Landroidx/media3/exoplayer/offline/SegmentDownloader;


# direct methods
.method public constructor <init>(Landroidx/media3/common/t;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V
    .locals 7

    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    invoke-direct {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>()V

    const-wide/16 v5, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lb2/a;-><init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/upstream/q$a;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/upstream/q$a;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;J)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/offline/SegmentDownloader;-><init>(Landroidx/media3/common/t;Landroidx/media3/exoplayer/upstream/q$a;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;J)V

    return-void
.end method

.method private l(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f(Landroid/net/Uri;)Lw1/h;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c$f;Ljava/util/HashSet;Ljava/util/ArrayList;)V
    .locals 9

    iget-object v0, p1, Lc2/d;->a:Ljava/lang/String;

    iget-wide v1, p1, Landroidx/media3/exoplayer/hls/playlist/c;->h:J

    iget-wide v3, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->e:J

    add-long/2addr v1, v3

    iget-object p1, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {v0, p1}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f(Landroid/net/Uri;)Lw1/h;

    move-result-object p1

    invoke-direct {p3, v1, v2, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;-><init>(JLw1/h;)V

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance p1, Lw1/h;

    iget-wide v5, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->i:J

    iget-wide v7, p2, Landroidx/media3/exoplayer/hls/playlist/c$g;->j:J

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lw1/h;-><init>(Landroid/net/Uri;JJ)V

    new-instance p2, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    invoke-direct {p2, v1, v2, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;-><init>(JLw1/h;)V

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic h(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/offline/q;Z)Ljava/util/List;
    .locals 0

    check-cast p2, Lc2/d;

    invoke-virtual {p0, p1, p2, p3}, Lb2/a;->n(Landroidx/media3/datasource/a;Lc2/d;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected n(Landroidx/media3/datasource/a;Lc2/d;Z)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p2, Landroidx/media3/exoplayer/hls/playlist/d;

    if-eqz v1, :cond_0

    check-cast p2, Landroidx/media3/exoplayer/hls/playlist/d;

    iget-object p2, p2, Landroidx/media3/exoplayer/hls/playlist/d;->d:Ljava/util/List;

    invoke-direct {p0, p2, v0}, Lb2/a;->l(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lc2/d;->a:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->f(Landroid/net/Uri;)Lw1/h;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw1/h;

    new-instance v3, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5, v2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$b;-><init>(JLw1/h;)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-virtual {p0, p1, v2, p3}, Landroidx/media3/exoplayer/offline/SegmentDownloader;->g(Landroidx/media3/datasource/a;Lw1/h;Z)Landroidx/media3/exoplayer/offline/q;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/playlist/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v2, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/playlist/c$f;

    iget-object v7, v6, Landroidx/media3/exoplayer/hls/playlist/c$g;->b:Landroidx/media3/exoplayer/hls/playlist/c$f;

    if-eqz v7, :cond_2

    if-eq v7, v4, :cond_2

    invoke-direct {p0, v2, v7, v1, p2}, Lb2/a;->m(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c$f;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    move-object v4, v7

    :cond_2
    invoke-direct {p0, v2, v6, v1, p2}, Lb2/a;->m(Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/c$f;Ljava/util/HashSet;Ljava/util/ArrayList;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    throw v2

    :cond_4
    return-object p2
.end method
