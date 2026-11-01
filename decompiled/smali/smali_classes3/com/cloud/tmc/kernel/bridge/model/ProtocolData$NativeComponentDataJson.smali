.class public Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeComponentDataJson"
.end annotation


# instance fields
.field private args:Ljava/lang/String;

.field private callbackId:Ljava/lang/String;

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->methodName:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->args:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;

    const-string v1, "methodName"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "args"

    invoke-virtual {p0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "callbackId"

    invoke-virtual {p0, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getArgs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->args:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->args:Ljava/lang/String;

    return-void
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public setMethodName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;->methodName:Ljava/lang/String;

    return-void
.end method
