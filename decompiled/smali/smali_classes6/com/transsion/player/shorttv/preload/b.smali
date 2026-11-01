.class public final Lcom/transsion/player/shorttv/preload/b;
.super Landroidx/media3/exoplayer/offline/b;


# instance fields
.field private final d:Landroidx/media3/datasource/cache/a$c;

.field private final e:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "cacheDataSourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/b;-><init>(Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/b;->d:Landroidx/media3/datasource/cache/a$c;

    iput-object p2, p0, Lcom/transsion/player/shorttv/preload/b;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/o;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    iget-object v1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->A0(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;

    new-instance v1, Landroidx/media3/common/t$c;

    invoke-direct {v1}, Landroidx/media3/common/t$c;-><init>()V

    iget-object v2, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroidx/media3/common/t$c;->i(Landroid/net/Uri;)Landroidx/media3/common/t$c;

    move-result-object v1

    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->customCacheKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroidx/media3/common/t$c;->b(Ljava/lang/String;)Landroidx/media3/common/t$c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/t$c;->a()Landroidx/media3/common/t;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/player/shorttv/preload/b;->d:Landroidx/media3/datasource/cache/a$c;

    iget-object v2, p0, Lcom/transsion/player/shorttv/preload/b;->e:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p1, v1, v2}, Lcom/transsion/player/shorttv/preload/VideoProgressiveDownloader;-><init>(Landroidx/media3/common/t;Landroidx/media3/datasource/cache/a$c;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/offline/b;->a(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/o;

    move-result-object v0

    const-string p1, "createDownloader(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
