.class public interface abstract Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008`\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H&J \u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J \u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/callback/OnUpdateCallback;",
        "",
        "onDownloadProcess",
        "",
        "url",
        "",
        "size",
        "",
        "totalSize",
        "onError",
        "errCode",
        "",
        "errMsg",
        "onNoNeedDownload",
        "onUnZipDownloadFinish",
        "zipUnCompressPath",
        "zipFile",
        "Ljava/io/File;",
        "onZipDownloadCancel",
        "onZipDownloadFinish",
        "onZipDownloadStart",
        "onZipDownloaded",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onDownloadProcess(Ljava/lang/String;JJ)V
.end method

.method public abstract onError(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onNoNeedDownload(Ljava/lang/String;)V
.end method

.method public abstract onUnZipDownloadFinish(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
.end method

.method public abstract onZipDownloadCancel(Ljava/lang/String;)V
.end method

.method public abstract onZipDownloadFinish(Ljava/lang/String;)V
.end method

.method public abstract onZipDownloadStart(Ljava/lang/String;)V
.end method

.method public abstract onZipDownloaded(Ljava/lang/String;)V
.end method
