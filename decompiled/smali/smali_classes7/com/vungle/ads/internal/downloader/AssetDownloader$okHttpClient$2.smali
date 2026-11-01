.class final Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/downloader/AssetDownloader;-><init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/util/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/OkHttpClient;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/downloader/AssetDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 2

    sget-object v0, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->INSTANCE:Lcom/vungle/ads/internal/downloader/AssetDownloader$b;

    iget-object v1, p0, Lcom/vungle/ads/internal/downloader/AssetDownloader$okHttpClient$2;->this$0:Lcom/vungle/ads/internal/downloader/AssetDownloader;

    invoke-static {v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader;->access$getPathProvider$p(Lcom/vungle/ads/internal/downloader/AssetDownloader;)Lcom/vungle/ads/internal/util/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/downloader/AssetDownloader$b;->createOkHttpClient(Lcom/vungle/ads/internal/util/p;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
