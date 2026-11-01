.class public final Lc2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lc2/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/upstream/q$a;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>()V

    return-object v0
.end method

.method public b(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)Landroidx/media3/exoplayer/upstream/q$a;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)V

    return-object v0
.end method
