.class public abstract Lcom/cloud/tmc/offline/download/model/TaskResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;,
        Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;,
        Lcom/cloud/tmc/offline/download/model/TaskResult$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0018\u0019\u001aB=\u0008\u0004\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0017\u001a\u00020\tH\u0016R\u0015\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0016\u0082\u0001\u0003\u001b\u001c\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "T",
        "",
        "data",
        "delay",
        "",
        "errorCode",
        "",
        "errorMsg",
        "",
        "isTrace",
        "",
        "(Ljava/lang/Object;JILjava/lang/String;Z)V",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getDelay",
        "()J",
        "getErrorCode",
        "()I",
        "getErrorMsg",
        "()Ljava/lang/String;",
        "()Z",
        "toString",
        "Failure",
        "Retry",
        "Success",
        "Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult$Success;",
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


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final delay:J

.field private final errorCode:I

.field private final errorMsg:Ljava/lang/String;

.field private final isTrace:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;JILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->data:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->delay:J

    iput p4, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorCode:I

    iput-object p5, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorMsg:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->isTrace:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x64

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_2

    const/16 v4, 0xc8

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, p7, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, p5

    :goto_3
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    const/4 v6, 0x0

    move-object p1, p0

    move-object p2, v0

    move-wide p3, v2

    move p5, v4

    move-object p6, v1

    move p7, v5

    move-object p8, v6

    invoke-direct/range {p1 .. p8}, Lcom/cloud/tmc/offline/download/model/TaskResult;-><init>(Ljava/lang/Object;JILjava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JILjava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/offline/download/model/TaskResult;-><init>(Ljava/lang/Object;JILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->delay:J

    return-wide v0
.end method

.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorCode:I

    return v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final isTrace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->isTrace:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    instance-of v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    const-string v1, "]"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->data:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success[data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorCode:I

    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorMsg:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure[errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorMsg="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->delay:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry[delay="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method
