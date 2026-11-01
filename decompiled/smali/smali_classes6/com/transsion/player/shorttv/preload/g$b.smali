.class public final Lcom/transsion/player/shorttv/preload/g$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloadManager$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/player/shorttv/preload/g;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/player/shorttv/preload/g;


# direct methods
.method constructor <init>(Lcom/transsion/player/shorttv/preload/g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/shorttv/preload/g$b;->a:Lcom/transsion/player/shorttv/preload/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0

    const-string p2, "downloadManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;)V
    .locals 1

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "download"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0

    const-string p2, "downloadManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 1

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "VideoPreloadHelper"

    const-string v0, "onIdle:"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/g$b;->a:Lcom/transsion/player/shorttv/preload/g;

    invoke-virtual {p1}, Lcom/transsion/player/shorttv/preload/g;->m()V

    return-void
.end method

.method public e(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
    .locals 0

    const-string p3, "downloadManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requirements"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/c;Ljava/lang/Exception;)V
    .locals 6

    const-string p3, "downloadManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "download"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/c;->a()J

    move-result-wide v0

    iget-wide v2, p2, Landroidx/media3/exoplayer/offline/c;->e:J

    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/c;->b()F

    move-result p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDownloadChanged:  download.requestId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "     bytesDownloaded:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  contentLength:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  percentDownloaded:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "VideoPreloadHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/g$b;->a:Lcom/transsion/player/shorttv/preload/g;

    invoke-static {p1}, Lcom/transsion/player/shorttv/preload/g;->c(Lcom/transsion/player/shorttv/preload/g;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p3, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object p3, p3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/player/shorttv/preload/a;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/c;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/player/shorttv/preload/a;->h(J)V

    iget-wide v0, p2, Landroidx/media3/exoplayer/offline/c;->e:J

    invoke-virtual {p1, v0, v1}, Lcom/transsion/player/shorttv/preload/a;->g(J)V

    :cond_0
    iget-object p1, p2, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/player/shorttv/preload/g$b;->a:Lcom/transsion/player/shorttv/preload/g;

    invoke-static {p3}, Lcom/transsion/player/shorttv/preload/g;->d(Lcom/transsion/player/shorttv/preload/g;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p2, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/g$b;->a:Lcom/transsion/player/shorttv/preload/g;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/player/shorttv/preload/g;->e(Lcom/transsion/player/shorttv/preload/g;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/player/shorttv/preload/g$b;->a:Lcom/transsion/player/shorttv/preload/g;

    invoke-virtual {p1}, Lcom/transsion/player/shorttv/preload/g;->m()V

    :cond_2
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 1

    const-string v0, "downloadManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
