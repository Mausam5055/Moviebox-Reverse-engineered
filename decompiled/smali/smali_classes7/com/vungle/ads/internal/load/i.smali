.class public final Lcom/vungle/ads/internal/load/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/load/i$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/load/i;

.field public static final MRAID_AVAILABLE:I = 0xd

.field public static final MRAID_DOWNLOADED:I = 0xa

.field public static final MRAID_DOWNLOAD_FAILED:I = 0xc

.field public static final MRAID_INVALID_ENDPOINT:I = 0xb

.field private static final TAG:Ljava/lang/String; = "MraidJsLoader"

.field private static final isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/vungle/ads/internal/load/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vungle/ads/internal/load/i;

    invoke-direct {v0}, Lcom/vungle/ads/internal/load/i;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vungle/ads/internal/load/i;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/load/i;->downloadJs$lambda-1(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    return-void
.end method

.method public static final synthetic access$notifyListeners(Lcom/vungle/ads/internal/load/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/i;->notifyListeners(I)V

    return-void
.end method

.method public static synthetic downloadJs$default(Lcom/vungle/ads/internal/load/i;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/vungle/ads/internal/load/i;->downloadJs(Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;)V

    return-void
.end method

.method private static final downloadJs$lambda-1(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V
    .locals 10

    const-string v0, "$pathProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$downloader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$executor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MraidJsLoader"

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    sget-object p0, Lcom/vungle/ads/internal/load/i;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p1, "mraid js is downloading, waiting for the previous request."

    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object p0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMraidEndpoint()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/vungle/ads/internal/ConfigManager;->getMraidJsVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/vungle/ads/internal/util/p;->getJsAssetDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v3, Ljava/io/File;

    const-string v4, "mraid.min.js"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p1, "mraid js already downloaded"

    invoke-virtual {p0, v0, p1}, Lcom/vungle/ads/internal/util/o$a;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    const/16 p1, 0xd

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/i;->notifyListeners(I)V

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/p;->getJsDir()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/vungle/ads/internal/util/g;->deleteContents(Ljava/io/File;)V

    new-instance p2, Lcom/vungle/ads/internal/model/AdAsset;

    const-string v5, "mraid.min.js"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/mraid.min.js"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v1, "mraidJsFile.absolutePath"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/vungle/ads/internal/model/AdAsset$FileType;->ASSET:Lcom/vungle/ads/internal/model/AdAsset$FileType;

    const/4 v9, 0x1

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/vungle/ads/internal/model/AdAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vungle/ads/internal/model/AdAsset$FileType;Z)V

    new-instance v1, Lcom/vungle/ads/internal/downloader/DownloadRequest;

    sget-object v4, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->HIGH:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    :cond_4
    invoke-direct {v1, v4, p2, v2}, Lcom/vungle/ads/internal/downloader/DownloadRequest;-><init>(Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;Lcom/vungle/ads/internal/model/AdAsset;Lcom/vungle/ads/internal/util/n;)V

    new-instance p2, Lcom/vungle/ads/internal/load/i$b;

    invoke-direct {p2, p4, p1, p0, v3}, Lcom/vungle/ads/internal/load/i$b;-><init>(Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/model/AdPayload;Ljava/io/File;Ljava/io/File;)V

    invoke-interface {p3, v1, p2}, Lcom/vungle/ads/internal/downloader/Downloader;->download(Lcom/vungle/ads/internal/downloader/DownloadRequest;Lcom/vungle/ads/internal/downloader/a;)V

    goto :goto_3

    :cond_5
    :goto_1
    new-instance p0, Lcom/vungle/ads/MraidJsError;

    sget-object p2, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->MRAID_DOWNLOAD_JS_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    const-string p3, "Mraid endpoint is empty"

    invoke-direct {p0, p2, p3}, Lcom/vungle/ads/MraidJsError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    move-result-object v2

    :cond_6
    invoke-virtual {p0, v2}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    sget-object p0, Lcom/vungle/ads/internal/load/i;->INSTANCE:Lcom/vungle/ads/internal/load/i;

    const/16 p1, 0xb

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/load/i;->notifyListeners(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    sget-object p1, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string p2, "Failed to download mraid js"

    invoke-virtual {p1, v0, p2, p0}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private final notifyListeners(I)V
    .locals 2

    sget-object v0, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/load/i$a;

    invoke-interface {v1, p1}, Lcom/vungle/ads/internal/load/i$a;->onDownloadResult(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/vungle/ads/internal/load/i;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object p1, Lcom/vungle/ads/internal/load/i;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final downloadJs(Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 7

    const-string v0, "pathProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/load/h;

    move-object v1, v0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/vungle/ads/internal/load/h;-><init>(Lcom/vungle/ads/internal/load/i$a;Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/util/p;Lcom/vungle/ads/internal/downloader/Downloader;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V

    invoke-virtual {p3, v0}, Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
