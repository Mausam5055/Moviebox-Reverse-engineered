.class public interface abstract Lcom/cloud/tmc/kernel/node/ValueStore;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBooleanValue(Ljava/lang/String;)Z
.end method

.method public abstract getIntValue(Ljava/lang/String;)I
.end method

.method public abstract getJsonArrayValue(Ljava/lang/String;)Lcom/google/gson/JsonArray;
.end method

.method public abstract getJsonValue(Ljava/lang/String;)Lcom/google/gson/JsonObject;
.end method

.method public abstract getLongValue(Ljava/lang/String;)J
.end method

.method public abstract getStringValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putBooleanValue(Ljava/lang/String;Z)V
.end method

.method public abstract putIntValue(Ljava/lang/String;I)V
.end method

.method public abstract putJsonArrayValue(Ljava/lang/String;Lcom/google/gson/JsonArray;)V
.end method

.method public abstract putJsonValue(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
.end method

.method public abstract putLongValue(Ljava/lang/String;J)V
.end method

.method public abstract putStringValue(Ljava/lang/String;Ljava/lang/String;)V
.end method
