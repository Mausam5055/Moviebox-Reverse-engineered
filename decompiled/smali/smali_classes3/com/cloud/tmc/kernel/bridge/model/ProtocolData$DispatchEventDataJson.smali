.class public Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DispatchEventDataJson"
.end annotation


# instance fields
.field private dataJson:Ljava/lang/String;

.field private eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->dataJson:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    const-string v1, "eventName"

    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "dataJson"

    invoke-virtual {p0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDataJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->dataJson:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public setDataJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->dataJson:Ljava/lang/String;

    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->eventName:Ljava/lang/String;

    return-void
.end method
