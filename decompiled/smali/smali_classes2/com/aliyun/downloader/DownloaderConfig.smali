.class public Lcom/aliyun/downloader/DownloaderConfig;
.super Ljava/lang/Object;


# instance fields
.field public mConnectTimeoutS:I

.field public mHttpProxy:Ljava/lang/String;

.field public mNetworkTimeoutMs:J

.field public mReferrer:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mNetworkTimeoutMs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mConnectTimeoutS:I

    const-string v0, ""

    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mHttpProxy:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mReferrer:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/downloader/DownloaderConfig;->mUserAgent:Ljava/lang/String;

    return-void
.end method
