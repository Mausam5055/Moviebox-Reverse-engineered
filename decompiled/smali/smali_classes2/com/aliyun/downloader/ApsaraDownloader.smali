.class Lcom/aliyun/downloader/ApsaraDownloader;
.super Lcom/aliyun/downloader/AliMediaDownloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;,
        Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;,
        Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;,
        Lcom/aliyun/downloader/ApsaraDownloader$InnerCompletionListener;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

.field private mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

.field private mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

.field private mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

.field private mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/aliyun/downloader/AliMediaDownloader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    iput-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mAppContext:Landroid/content/Context;

    new-instance v1, Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-direct {v1, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance p1, Lcom/aliyun/downloader/ApsaraDownloader$InnerCompletionListener;

    invoke-direct {p1, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerCompletionListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {v1, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnCompletionListener(Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;)V

    iget-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance v1, Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;

    invoke-direct {v1, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerErrorListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {p1, v1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnErrorListener(Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;)V

    iget-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance v1, Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;

    invoke-direct {v1, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerPreparedListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {p1, v1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnPreparedListener(Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;)V

    iget-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    new-instance v1, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;

    invoke-direct {v1, p0, v0}, Lcom/aliyun/downloader/ApsaraDownloader$InnerOnProgressListener;-><init>(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/downloader/ApsaraDownloader$1;)V

    invoke-virtual {p1, v1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setOnProgressListener(Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/aliyun/downloader/ApsaraDownloader;)V
    .locals 0

    invoke-direct {p0}, Lcom/aliyun/downloader/ApsaraDownloader;->onCompletion()V

    return-void
.end method

.method static synthetic access$500(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    return-void
.end method

.method static synthetic access$600(Lcom/aliyun/downloader/ApsaraDownloader;Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/aliyun/downloader/ApsaraDownloader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onDownloadingProgress(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/aliyun/downloader/ApsaraDownloader;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aliyun/downloader/ApsaraDownloader;->onProcessingProgress(I)V

    return-void
.end method

.method private onCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;->onCompletion()V

    :cond_0
    return-void
.end method

.method private onDownloadingProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onDownloadingProgress(I)V

    :cond_0
    return-void
.end method

.method private onError(Lcom/aliyun/player/bean/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;->onError(Lcom/aliyun/player/bean/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method private onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;->onPrepared(Lcom/aliyun/player/nativeclass/MediaInfo;)V

    :cond_0
    return-void
.end method

.method private onProcessingProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;->onProcessingProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteFile()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->deleteFile()V

    return-void
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepare(Lcom/aliyun/player/source/VidAuth;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->prepare(Lcom/aliyun/player/source/VidAuth;)V

    return-void
.end method

.method public prepare(Lcom/aliyun/player/source/VidSts;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->prepare(Lcom/aliyun/player/source/VidSts;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->release()V

    return-void
.end method

.method public selectItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->selectItem(I)V

    return-void
.end method

.method public setDownloaderConfig(Lcom/aliyun/downloader/DownloaderConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setDownloaderConfig(Lcom/aliyun/downloader/DownloaderConfig;)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterCompletionListener:Lcom/aliyun/downloader/AliMediaDownloader$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnErrorListener:Lcom/aliyun/downloader/AliMediaDownloader$OnErrorListener;

    return-void
.end method

.method public setOnPreparedListener(Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnPreparedListener:Lcom/aliyun/downloader/AliMediaDownloader$OnPreparedListener;

    return-void
.end method

.method public setOnProgressListener(Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mOuterOnProgressListener:Lcom/aliyun/downloader/AliMediaDownloader$OnProgressListener;

    return-void
.end method

.method public setSaveDir(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->setSaveDir(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->stop()V

    return-void
.end method

.method public updateSource(Lcom/aliyun/player/source/VidAuth;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->updateSource(Lcom/aliyun/player/source/VidAuth;)V

    return-void
.end method

.method public updateSource(Lcom/aliyun/player/source/VidSts;)V
    .locals 1

    iget-object v0, p0, Lcom/aliyun/downloader/ApsaraDownloader;->mCoreDownloader:Lcom/aliyun/downloader/nativeclass/JniDownloader;

    invoke-virtual {v0, p1}, Lcom/aliyun/downloader/nativeclass/JniDownloader;->updateSource(Lcom/aliyun/player/source/VidSts;)V

    return-void
.end method
