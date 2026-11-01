.class public final Lcom/transsnet/downloader/callback/DownloadTaskStat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsnet/downloader/callback/DownloadTaskStat;",
        "Ljava/io/Serializable;",
        "waitCount",
        "",
        "loadingCount",
        "errorCount",
        "doneCount",
        "<init>",
        "(IIII)V",
        "getWaitCount",
        "()I",
        "setWaitCount",
        "(I)V",
        "getLoadingCount",
        "setLoadingCount",
        "getErrorCount",
        "setErrorCount",
        "getDoneCount",
        "setDoneCount",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Downloader_psRelease"
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
.field private doneCount:I

.field private errorCount:I

.field private loadingCount:I

.field private waitCount:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    iput p2, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    iput p3, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    iput p4, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsnet/downloader/callback/DownloadTaskStat;IIIIILjava/lang/Object;)Lcom/transsnet/downloader/callback/DownloadTaskStat;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/callback/DownloadTaskStat;->copy(IIII)Lcom/transsnet/downloader/callback/DownloadTaskStat;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    return v0
.end method

.method public final copy(IIII)Lcom/transsnet/downloader/callback/DownloadTaskStat;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/callback/DownloadTaskStat;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsnet/downloader/callback/DownloadTaskStat;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsnet/downloader/callback/DownloadTaskStat;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsnet/downloader/callback/DownloadTaskStat;

    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    iget v3, p1, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    iget v3, p1, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    iget v3, p1, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    iget p1, p1, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDoneCount()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    return v0
.end method

.method public final getErrorCount()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    return v0
.end method

.method public final getLoadingCount()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    return v0
.end method

.method public final getWaitCount()I
    .locals 1

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDoneCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    return-void
.end method

.method public final setErrorCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    return-void
.end method

.method public final setLoadingCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    return-void
.end method

.method public final setWaitCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->waitCount:I

    iget v1, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->loadingCount:I

    iget v2, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->errorCount:I

    iget v3, p0, Lcom/transsnet/downloader/callback/DownloadTaskStat;->doneCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DownloadTaskStat(waitCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", loadingCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", doneCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
