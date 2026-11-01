.class public final Lcom/transsion/publish/bean/PublishResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/bean/PublishResult$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\"\u0010\u0011\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\t\u001a\u0004\u0008\u0017\u0010\u000b\"\u0004\u0008\u0018\u0010\r\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/publish/bean/PublishResult;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "state",
        "I",
        "getState",
        "()I",
        "setState",
        "(I)V",
        "progress",
        "getProgress",
        "setProgress",
        "postId",
        "Ljava/lang/String;",
        "getPostId",
        "setPostId",
        "(Ljava/lang/String;)V",
        "source",
        "getSource",
        "setSource",
        "Companion",
        "a",
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


# static fields
.field public static final CANCEL:I = 0x4

.field public static final Companion:Lcom/transsion/publish/bean/PublishResult$a;

.field public static final FAIL:I = 0x2

.field public static final START:I = 0x0

.field public static final SUCCEED:I = 0x1

.field public static final UPLOADING:I = 0x3


# instance fields
.field private postId:Ljava/lang/String;

.field private progress:I

.field private source:I

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/publish/bean/PublishResult$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/publish/bean/PublishResult$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/publish/bean/PublishResult;->Companion:Lcom/transsion/publish/bean/PublishResult$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/publish/bean/PublishResult;->postId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPostId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/publish/bean/PublishResult;->postId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgress()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PublishResult;->progress:I

    return v0
.end method

.method public final getSource()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PublishResult;->source:I

    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/transsion/publish/bean/PublishResult;->state:I

    return v0
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/publish/bean/PublishResult;->postId:Ljava/lang/String;

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PublishResult;->progress:I

    return-void
.end method

.method public final setSource(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PublishResult;->source:I

    return-void
.end method

.method public final setState(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/publish/bean/PublishResult;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/publish/bean/PublishResult;->state:I

    iget v1, p0, Lcom/transsion/publish/bean/PublishResult;->progress:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PublishResult(state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", progress="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
