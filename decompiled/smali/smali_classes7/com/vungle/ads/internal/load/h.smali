.class public final synthetic Lcom/vungle/ads/internal/load/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/load/i$a;

.field public final synthetic b:Lcom/vungle/ads/internal/model/AdPayload;

.field public final synthetic c:Lcom/vungle/ads/internal/util/p;

.field public final synthetic d:Lcom/vungle/ads/internal/downloader/Downloader;

.field public final synthetic e:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/load/h;->a:Lcom/vungle/ads/internal/load/i$a;

    iput-object p2, p0, Lcom/vungle/ads/internal/load/h;->b:Lcom/vungle/ads/internal/model/AdPayload;

    iput-object p3, p0, Lcom/vungle/ads/internal/load/h;->c:Lcom/vungle/ads/internal/util/p;

    iput-object p4, p0, Lcom/vungle/ads/internal/load/h;->d:Lcom/vungle/ads/internal/downloader/Downloader;

    iput-object p5, p0, Lcom/vungle/ads/internal/load/h;->e:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/vungle/ads/internal/load/h;->a:Lcom/vungle/ads/internal/load/i$a;

    iget-object v1, p0, Lcom/vungle/ads/internal/load/h;->b:Lcom/vungle/ads/internal/model/AdPayload;

    iget-object v2, p0, Lcom/vungle/ads/internal/load/h;->c:Lcom/vungle/ads/internal/util/p;

    iget-object v3, p0, Lcom/vungle/ads/internal/load/h;->d:Lcom/vungle/ads/internal/downloader/Downloader;

    iget-object v4, p0, Lcom/vungle/ads/internal/load/h;->e:Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/load/i;->a(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    return-void
.end method
