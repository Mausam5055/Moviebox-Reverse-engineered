.class public Lcom/aliyun/downloader/AliDownloaderFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/aliyun/downloader/AliMediaDownloader;
    .locals 1

    new-instance v0, Lcom/aliyun/downloader/ApsaraDownloader;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/aliyun/downloader/ApsaraDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/aliyun/downloader/AliMediaDownloader;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
