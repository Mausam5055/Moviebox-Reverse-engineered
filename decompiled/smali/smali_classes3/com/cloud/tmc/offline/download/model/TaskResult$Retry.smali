.class public final Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;
.super Lcom/cloud/tmc/offline/download/model/TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/offline/download/model/TaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Retry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/offline/download/model/TaskResult<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "delay",
        "",
        "(J)V",
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


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 9

    const/16 v7, 0x19

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v4, 0xc9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/cloud/tmc/offline/download/model/TaskResult;-><init>(Ljava/lang/Object;JILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x64

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;-><init>(J)V

    return-void
.end method
