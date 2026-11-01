.class public final synthetic Lcom/vungle/ads/internal/load/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lcom/vungle/ads/internal/load/BaseAdLoader$b;

.field public final synthetic c:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic d:Lcom/vungle/ads/internal/load/BaseAdLoader;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Lcom/vungle/ads/internal/load/BaseAdLoader$b;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/load/BaseAdLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/c;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/c;->b:Lcom/vungle/ads/internal/load/BaseAdLoader$b;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/c;->c:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iput-object p4, p0, Lcom/vungle/ads/internal/load/c;->d:Lcom/vungle/ads/internal/load/BaseAdLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/load/c;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/c;->b:Lcom/vungle/ads/internal/load/BaseAdLoader$b;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/c;->c:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iget-object v3, p0, Lcom/vungle/ads/internal/load/c;->d:Lcom/vungle/ads/internal/load/BaseAdLoader;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/load/BaseAdLoader$b;->a(Ljava/io/File;Lcom/vungle/ads/internal/load/BaseAdLoader$b;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/load/BaseAdLoader;)V

    return-void
.end method
