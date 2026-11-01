.class public Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;
.super Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamedValue"
.end annotation


# instance fields
.field response:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;-><init>(Lcom/google/gson/JsonObject;)V

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;->response:Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$NamedValue;->response:Lcom/google/gson/JsonObject;

    return-object v0
.end method
