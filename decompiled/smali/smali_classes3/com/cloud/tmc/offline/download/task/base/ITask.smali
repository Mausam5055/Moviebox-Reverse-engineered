.class public interface abstract Lcom/cloud/tmc/offline/download/task/base/ITask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/task/base/ITask$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001J\"\u0010$\u001a\u00020\u000e2\u0018\u0010%\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010&H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0008R\u0012\u0010\t\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0005R0\u0010\u000b\u001a\u001a\u0012\u0004\u0012\u00020\u0000\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0018\u0010\u0013\u001a\u00020\u0014X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0018\u0010\u0019\u001a\u00020\u0014X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u0016\"\u0004\u0008\u001b\u0010\u0018R\u0012\u0010\u001c\u001a\u00020\u001dX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0018\u0010 \u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u000c\u0012\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010\u0005\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "isIdleRunTask",
        "",
        "()Z",
        "name",
        "getName",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "priority",
        "",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "sequence",
        "getSequence",
        "setSequence",
        "startTaskTime",
        "",
        "getStartTaskTime",
        "()J",
        "trigger",
        "getTrigger$annotations",
        "()V",
        "getTrigger",
        "run",
        "block",
        "Lkotlin/Function1;",
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
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOnResult()Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPriority()I
.end method

.method public abstract getSequence()I
.end method

.method public abstract getStartTaskTime()J
.end method

.method public abstract getTrigger()Ljava/lang/String;
.end method

.method public abstract isIdleRunTask()Z
.end method

.method public abstract run(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setOnResult(Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPriority(I)V
.end method

.method public abstract setSequence(I)V
.end method
