.class public interface abstract Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close()V
.end method

.method public abstract close(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract getCallbackId()Ljava/lang/String;
.end method

.method public abstract sendBridgeResponse(Lcom/cloud/tmc/kernel/bridge/extension/BridgeResponse;)V
.end method

.method public abstract sendFailMapResponse()V
.end method

.method public abstract sendFailResponse()V
.end method

.method public abstract sendFailResponse(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract sendFailResponse(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendJSONResponse(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract sendJSONResponse(Lcom/google/gson/JsonObject;Z)V
.end method

.method public abstract sendMapResponse(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendSuccessMapResponse()V
.end method

.method public abstract sendSuccessResponse()V
.end method

.method public abstract sendSuccessResponse(Lcom/google/gson/JsonObject;)V
.end method

.method public abstract sendSuccessResponse(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
