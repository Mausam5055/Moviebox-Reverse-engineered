.class public final Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;
.super Lcom/vungle/ads/internal/task/PriorityRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloader;->download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vungle/ads/internal/downloader/AssetDownloader$download$1",
        "Lcom/vungle/ads/internal/task/PriorityRunnable;",
        "priority",
        "",
        "getPriority",
        "()I",
        "run",
        "",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $downloadListener:Lcom/vungle/ads/internal/downloader/a;

.field final synthetic $downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field final synthetic this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    iput-object p2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;->$downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;->$downloadListener:Lcom/vungle/ads/internal/downloader/a;

    invoke-direct {p0}, Lcom/vungle/ads/internal/task/PriorityRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;->$downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/downloader/DownloadRequest;->getPriority()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;->$downloadRequest:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iget-object v2, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$download$1;->$downloadListener:Lcom/vungle/ads/internal/downloader/a;

    invoke-static {v0, v1, v2}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->access$launchRequest(Lcom/vungle/ads/internal/downloader/AssetDownloader;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    return-void
.end method
