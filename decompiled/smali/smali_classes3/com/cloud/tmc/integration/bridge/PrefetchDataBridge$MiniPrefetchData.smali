.class public final Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiniPrefetchData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "expiredTime",
        "",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "callbackId",
        "",
        "(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V",
        "getCallback",
        "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "setCallback",
        "(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "getCallbackId",
        "()Ljava/lang/String;",
        "setCallbackId",
        "(Ljava/lang/String;)V",
        "getExpiredTime",
        "()J",
        "setExpiredTime",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "com.cloud.tmc.integration"
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
.field private callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field private callbackId:Ljava/lang/String;

.field private expiredTime:J


# direct methods
.method public constructor <init>(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-wide p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->copy(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    return-wide v0
.end method

.method public final component2()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;-><init>(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    iget-wide v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    iget-wide v5, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v3, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    return-object v0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setCallback(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    return-void
.end method

.method public final setCallbackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public final setExpiredTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiniPrefetchData(expiredTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", callback="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", callbackId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
