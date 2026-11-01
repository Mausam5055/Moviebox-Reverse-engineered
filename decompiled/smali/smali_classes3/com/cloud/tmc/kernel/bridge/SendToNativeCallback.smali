.class public interface abstract Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;
.super Ljava/lang/Object;


# static fields
.field public static final KEY_CODE:Ljava/lang/String; = "error"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "errorMessage"


# virtual methods
.method public abstract onCallback(Lcom/google/gson/JsonObject;ZZ)V
.end method

.method public abstract onCallback(Ljava/util/HashMap;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation
.end method
