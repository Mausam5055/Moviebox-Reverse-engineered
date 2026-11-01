.class public Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder<",
        "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;)Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
            ">;",
            "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;",
            ")",
            "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;->isSticky()Z

    move-result p1

    new-instance p2, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;

    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;->responseHelper:Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;

    invoke-direct {p2, v0, p1}, Lcom/cloud/tmc/kernel/extension/DefaultBridgeCallback;-><init>(Lcom/cloud/tmc/kernel/helper/BridgeResponseHelper;Z)V

    return-object p2
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/CallbackBinder;->bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingCallback;)Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    move-result-object p1

    return-object p1
.end method
