.class public final Lcom/transsion/baselib/db/download/DownloadRange;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014J\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020\u0014J\u0008\u00100\u001a\u00020\u000eH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u0011\u0010$\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u0016R\u001e\u0010&\u001a\u00020 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001e\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0007\"\u0004\u0008,\u0010\tR\u001e\u0010-\u001a\u00020 8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\'\"\u0004\u0008/\u0010)\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/baselib/db/download/DownloadRange;",
        "",
        "<init>",
        "()V",
        "threadId",
        "",
        "getThreadId",
        "()I",
        "setThreadId",
        "(I)V",
        "rangeId",
        "getRangeId",
        "setRangeId",
        "resourceId",
        "",
        "getResourceId",
        "()Ljava/lang/String;",
        "setResourceId",
        "(Ljava/lang/String;)V",
        "start",
        "",
        "getStart",
        "()J",
        "setStart",
        "(J)V",
        "end",
        "getEnd",
        "setEnd",
        "progress",
        "getProgress",
        "setProgress",
        "contains",
        "",
        "position",
        "isRangeDownloadSuccess",
        "totalProgress",
        "rangeSize",
        "getRangeSize",
        "isDownloading",
        "()Z",
        "setDownloading",
        "(Z)V",
        "threadIndex",
        "getThreadIndex",
        "setThreadIndex",
        "reDownload",
        "getReDownload",
        "setReDownload",
        "toString",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private end:J

.field private volatile isDownloading:Z

.field private volatile progress:J

.field private rangeId:I

.field private reDownload:Z

.field private resourceId:Ljava/lang/String;

.field private start:J

.field private threadId:I

.field private threadIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    cmp-long v2, p1, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public final getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    return-wide v0
.end method

.method public final getProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    return-wide v0
.end method

.method public final getRangeId()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->rangeId:I

    return v0
.end method

.method public final getRangeSize()J
    .locals 4

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getReDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->reDownload:Z

    return v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    return-wide v0
.end method

.method public final getThreadId()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadId:I

    return v0
.end method

.method public final getThreadIndex()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadIndex:I

    return v0
.end method

.method public final isDownloading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading:Z

    return v0
.end method

.method public final isRangeDownloadSuccess()Z
    .locals 6

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    iget-wide v4, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setDownloading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->isDownloading:Z

    return-void
.end method

.method public final setEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    return-void
.end method

.method public final setProgress(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    return-void
.end method

.method public final setRangeId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->rangeId:I

    return-void
.end method

.method public final setReDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->reDownload:Z

    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public final setStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    return-void
.end method

.method public final setThreadId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadId:I

    return-void
.end method

.method public final setThreadIndex(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadIndex:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->threadId:I

    iget v1, p0, Lcom/transsion/baselib/db/download/DownloadRange;->rangeId:I

    iget-object v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->resourceId:Ljava/lang/String;

    iget-wide v3, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    iget-wide v5, p0, Lcom/transsion/baselib/db/download/DownloadRange;->end:J

    iget-wide v7, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DownloadRange {threadId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rangeId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resourceId="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", start="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", end="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final totalProgress()J
    .locals 4

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadRange;->start:J

    iget-wide v2, p0, Lcom/transsion/baselib/db/download/DownloadRange;->progress:J

    add-long/2addr v0, v2

    return-wide v0
.end method
