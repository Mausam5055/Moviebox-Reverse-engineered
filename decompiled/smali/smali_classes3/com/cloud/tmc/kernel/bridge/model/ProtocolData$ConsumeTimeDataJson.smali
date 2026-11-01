.class public Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsumeTimeDataJson"
.end annotation


# instance fields
.field private dataJson:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->dataJson:Ljava/util/HashMap;

    return-void
.end method

.method public static parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "dataJson"

    invoke-virtual {p0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v2, Ljava/util/HashMap;

    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;-><init>(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [J

    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method


# virtual methods
.method public getDataJson()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->dataJson:Ljava/util/HashMap;

    return-object v0
.end method

.method public setDataJson(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->dataJson:Ljava/util/HashMap;

    return-void
.end method
