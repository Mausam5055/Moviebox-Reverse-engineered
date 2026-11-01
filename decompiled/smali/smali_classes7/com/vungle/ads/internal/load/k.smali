.class public final synthetic Lcom/vungle/ads/internal/load/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/downloader/a$a;

.field public final synthetic b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

.field public final synthetic c:Lcom/vungle/ads/internal/model/AdPayload;

.field public final synthetic d:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/k;->a:Lcom/vungle/ads/internal/downloader/a$a;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/k;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/k;->c:Lcom/vungle/ads/internal/model/AdPayload;

    iput-object p4, p0, Lcom/vungle/ads/internal/load/k;->d:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/load/k;->a:Lcom/vungle/ads/internal/downloader/a$a;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/k;->b:Lcom/vungle/ads/internal/downloader/DownloadRequest;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/k;->c:Lcom/vungle/ads/internal/model/AdPayload;

    iget-object v3, p0, Lcom/vungle/ads/internal/load/k;->d:Ljava/io/File;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/load/i$b;->a(Lcom/vungle/ads/internal/downloader/a$a;Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;)V

    return-void
.end method
