.class public Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;,
        Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$NativeComponentDataJson;,
        Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;,
        Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;,
        Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ApiDataJson;,
        Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$OnMessageDataJson;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private abilityName:Ljava/lang/String;

.field private callbackId:Ljava/lang/String;

.field private dataJson:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private renderId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private target:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->renderId:Ljava/lang/String;

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->abilityName:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->target:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->source:Ljava/lang/String;

    iput-wide p4, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->time:J

    iput-object p6, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->callbackId:Ljava/lang/String;

    iput-object p7, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->dataJson:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAbilityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->abilityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataJson()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->dataJson:Ljava/lang/Object;

    return-object v0
.end method

.method public getRenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->renderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->time:J

    return-wide v0
.end method

.method public setAbilityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->abilityName:Ljava/lang/String;

    return-void
.end method

.method public setCallbackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public setDataJson(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->dataJson:Ljava/lang/Object;

    return-void
.end method

.method public setRenderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->renderId:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->source:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->target:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;->time:J

    return-void
.end method
