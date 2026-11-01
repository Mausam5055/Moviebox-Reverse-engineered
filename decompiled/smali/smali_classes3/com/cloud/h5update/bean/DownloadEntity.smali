.class public final Lcom/cloud/h5update/bean/DownloadEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082D\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000f\"\u0004\u0008\u0019\u0010\u0011R\u001a\u0010\u001a\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u000f\"\u0004\u0008 \u0010\u0011R\u001a\u0010!\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\n\"\u0004\u0008#\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u000f\"\u0004\u0008%\u0010\u0011\u00a8\u0006&"
    }
    d2 = {
        "Lcom/cloud/h5update/bean/DownloadEntity;",
        "Ljava/io/Serializable;",
        "title",
        "",
        "url",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "()V",
        "completedSize",
        "",
        "getCompletedSize",
        "()J",
        "setCompletedSize",
        "(J)V",
        "fileName",
        "getFileName",
        "()Ljava/lang/String;",
        "setFileName",
        "(Ljava/lang/String;)V",
        "filePath",
        "getFilePath",
        "setFilePath",
        "id",
        "",
        "taskId",
        "getTaskId",
        "setTaskId",
        "taskStatus",
        "getTaskStatus",
        "()I",
        "setTaskStatus",
        "(I)V",
        "getTitle",
        "setTitle",
        "totalSize",
        "getTotalSize",
        "setTotalSize",
        "getUrl",
        "setUrl",
        "apph5update_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private completedSize:J

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private final id:I

.field private taskId:Ljava/lang/String;

.field private taskStatus:I

.field private title:Ljava/lang/String;

.field private totalSize:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/h5update/bean/DownloadEntity;-><init>()V

    iput-object p2, p0, Lcom/cloud/h5update/bean/DownloadEntity;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCompletedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->completedSize:J

    return-wide v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaskId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTaskStatus()I
    .locals 1

    iget v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->taskStatus:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->totalSize:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/h5update/bean/DownloadEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final setCompletedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->completedSize:J

    return-void
.end method

.method public final setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->fileName:Ljava/lang/String;

    return-void
.end method

.method public final setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->filePath:Ljava/lang/String;

    return-void
.end method

.method public final setTaskId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->taskId:Ljava/lang/String;

    return-void
.end method

.method public final setTaskStatus(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->taskStatus:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTotalSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->totalSize:J

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/h5update/bean/DownloadEntity;->url:Ljava/lang/String;

    return-void
.end method
