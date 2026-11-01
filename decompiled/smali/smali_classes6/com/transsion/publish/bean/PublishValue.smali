.class public final Lcom/transsion/publish/bean/PublishValue;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0005R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0005R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0005\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/publish/bean/PublishValue;",
        "Ljava/io/Serializable;",
        "fileType",
        "",
        "<init>",
        "(I)V",
        "uploadUrl",
        "",
        "getUploadUrl",
        "()Ljava/lang/String;",
        "setUploadUrl",
        "(Ljava/lang/String;)V",
        "state",
        "getState",
        "()I",
        "setState",
        "progress",
        "getProgress",
        "setProgress",
        "getFileType",
        "setFileType",
        "Publish_psRelease"
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
.field private fileType:I

.field private progress:I

.field private state:I

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/publish/bean/PublishValue;->uploadUrl:Ljava/lang/String;

    iput p1, p0, Lcom/transsion/publish/bean/PublishValue;->fileType:I

    return-void
.end method


# virtual methods
.method public final getFileType()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PublishValue;->fileType:I

    return v0
.end method

.method public final getProgress()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PublishValue;->progress:I

    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PublishValue;->state:I

    return v0
.end method

.method public final getUploadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/PublishValue;->uploadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setFileType(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PublishValue;->fileType:I

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PublishValue;->progress:I

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PublishValue;->state:I

    return-void
.end method

.method public final setUploadUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/bean/PublishValue;->uploadUrl:Ljava/lang/String;

    return-void
.end method
