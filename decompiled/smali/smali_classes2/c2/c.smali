.class public final Lc2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lc2/e;


# instance fields
.field private final a:Lc2/e;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lc2/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/c;->a:Lc2/e;

    iput-object p2, p0, Lc2/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/upstream/q$a;
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/offline/r;

    iget-object v1, p0, Lc2/c;->a:Lc2/e;

    invoke-interface {v1}, Lc2/e;->a()Landroidx/media3/exoplayer/upstream/q$a;

    move-result-object v1

    iget-object v2, p0, Lc2/c;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/offline/r;-><init>(Landroidx/media3/exoplayer/upstream/q$a;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/upstream/q$a;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/offline/r;

    iget-object v1, p0, Lc2/c;->a:Lc2/e;

    invoke-interface {v1, p1, p2}, Lc2/e;->b(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/upstream/q$a;

    move-result-object p1

    iget-object p2, p0, Lc2/c;->b:Ljava/util/List;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/offline/r;-><init>(Landroidx/media3/exoplayer/upstream/q$a;Ljava/util/List;)V

    return-object v0
.end method
