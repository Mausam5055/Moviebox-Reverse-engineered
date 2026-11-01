.class public Landroidx/media3/exoplayer/offline/DownloadRequest$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Landroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->h:Landroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 11

    new-instance v10, Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->a:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->b:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->c:Ljava/lang/String;

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->e:[B

    iget-object v6, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->f:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->g:[B

    iget-object v8, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->h:Landroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/offline/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[BLjava/lang/String;[BLandroidx/media3/exoplayer/offline/DownloadRequest$ByteRange;Landroidx/media3/exoplayer/offline/DownloadRequest$a;)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c([B)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->g:[B

    return-object p0
.end method

.method public d([B)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->e:[B

    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    invoke-static {p1}, Landroidx/media3/common/y;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/List;)Landroidx/media3/exoplayer/offline/DownloadRequest$b;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadRequest$b;->d:Ljava/util/List;

    return-object p0
.end method
