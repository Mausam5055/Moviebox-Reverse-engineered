.class public Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;
.super Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field errorCode:I

.field errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;-><init>(Lcom/google/gson/JsonObject;)V

    iput p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorCode:I

    iput-object p2, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Lcom/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget v1, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v1, "message"

    iget-object v2, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorMessage"

    iget-object v2, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse$Error;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
