.class Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$1;
.super Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;-><init>(Lcom/google/gson/JsonObject;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 1

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    return-object v0
.end method
