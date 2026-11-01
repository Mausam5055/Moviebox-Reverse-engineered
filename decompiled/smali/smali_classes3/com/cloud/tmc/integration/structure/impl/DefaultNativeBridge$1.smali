.class Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;->executeNative(Lcom/cloud/tmc/kernel/bridge/NativeCallContext;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;

.field final synthetic val$callback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;->this$0:Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge;

    iput-object p2, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/gson/JsonObject;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;->onCallback(Lcom/google/gson/JsonObject;ZZ)V

    :cond_0
    return-void
.end method

.method public onCallback(Ljava/util/HashMap;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/DefaultNativeBridge$1;->val$callback:Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/kernel/bridge/SendToNativeCallback;->onCallback(Ljava/util/HashMap;ZZ)V

    :cond_0
    return-void
.end method
