.class public final Lcom/cloud/tmc/worker/WorkerCallContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/worker/WorkerCallContext$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/cloud/tmc/worker/WorkerCallContext;",
        "",
        "action",
        "",
        "params",
        "sendToWorkerCallback",
        "Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V",
        "getAction",
        "()Ljava/lang/String;",
        "getParams",
        "getSendToWorkerCallback",
        "()Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
        "com.cloud.tmc.worker"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ABILITY:Ljava/lang/String; = "abilityName"

.field public static final ABILITY_API:Ljava/lang/String; = "Api"

.field public static final ABILITY_DISPATCHEVENT:Ljava/lang/String; = "DispatchEvent"

.field public static final ABILITY_LIFECYCLE:Ljava/lang/String; = "LifeCycle"

.field public static final ACTION:Ljava/lang/String; = "methodName"

.field public static final CALLBACK_ID:Ljava/lang/String; = "callbackId"

.field public static final Companion:Lcom/cloud/tmc/worker/WorkerCallContext$Companion;

.field public static final PARAMS:Ljava/lang/String; = "params"


# instance fields
.field private final action:Ljava/lang/String;

.field private final params:Ljava/lang/String;

.field private final sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/worker/WorkerCallContext$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/worker/WorkerCallContext$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/worker/WorkerCallContext;->Companion:Lcom/cloud/tmc/worker/WorkerCallContext$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/worker/WorkerCallContext;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;ILjava/lang/Object;)Lcom/cloud/tmc/worker/WorkerCallContext;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/worker/WorkerCallContext;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)Lcom/cloud/tmc/worker/WorkerCallContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)Lcom/cloud/tmc/worker/WorkerCallContext;
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/worker/WorkerCallContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/worker/WorkerCallContext;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/worker/WorkerCallContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/worker/WorkerCallContext;

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    iget-object p1, p1, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    return-object v0
.end method

.method public final getSendToWorkerCallback()Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkerCallContext(action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->params:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sendToWorkerCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/worker/WorkerCallContext;->sendToWorkerCallback:Lcom/cloud/tmc/kernel/worker/SendToWorkerCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
