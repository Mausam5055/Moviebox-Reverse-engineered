.class public final Lcom/transsion/baselib/db/download/DownloadTaskInfo;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u001a\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B3\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001a\"\u0004\u0008\u001e\u0010\u001cR\u001a\u0010\u001f\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001a\"\u0004\u0008!\u0010\u001cR$\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020$0#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/baselib/db/download/DownloadTaskInfo;",
        "",
        "threadId",
        "",
        "downloadInfoId",
        "",
        "uri",
        "start",
        "",
        "end",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;JJ)V",
        "id",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getThreadId",
        "setThreadId",
        "getDownloadInfoId",
        "()Ljava/lang/String;",
        "setDownloadInfoId",
        "(Ljava/lang/String;)V",
        "getUri",
        "setUri",
        "getStart",
        "()J",
        "setStart",
        "(J)V",
        "getEnd",
        "setEnd",
        "progress",
        "getProgress",
        "setProgress",
        "downloadRanges",
        "",
        "Lcom/transsion/baselib/db/download/DownloadRange;",
        "getDownloadRanges",
        "()Ljava/util/List;",
        "setDownloadRanges",
        "(Ljava/util/List;)V",
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
.field private downloadInfoId:Ljava/lang/String;

.field private downloadRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadRange;",
            ">;"
        }
    .end annotation
.end field

.field private end:J

.field private id:I

.field private volatile progress:J

.field private start:J

.field private threadId:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    const-string v0, "downloadInfoId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->downloadRanges:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->id:I

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->threadId:I

    iput-object p2, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->downloadInfoId:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->uri:Ljava/lang/String;

    iput-wide p4, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->start:J

    iput-wide p6, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->end:J

    return-void
.end method


# virtual methods
.method public final getDownloadInfoId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->downloadInfoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownloadRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadRange;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->downloadRanges:Ljava/util/List;

    return-object v0
.end method

.method public final getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->end:J

    return-wide v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->id:I

    return v0
.end method

.method public final getProgress()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->progress:J

    return-wide v0
.end method

.method public final getStart()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->start:J

    return-wide v0
.end method

.method public final getThreadId()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->threadId:I

    return v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final setDownloadInfoId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->downloadInfoId:Ljava/lang/String;

    return-void
.end method

.method public final setDownloadRanges(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/baselib/db/download/DownloadRange;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->downloadRanges:Ljava/util/List;

    return-void
.end method

.method public final setEnd(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->end:J

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->id:I

    return-void
.end method

.method public final setProgress(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->progress:J

    return-void
.end method

.method public final setStart(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->start:J

    return-void
.end method

.method public final setThreadId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->threadId:I

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/baselib/db/download/DownloadTaskInfo;->uri:Ljava/lang/String;

    return-void
.end method
