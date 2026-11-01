.class public Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder<",
        "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingRequest;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private sourceJSON:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;->sourceJSON:Lcom/google/gson/JsonObject;

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingRequest;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    iget-object p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;->sourceJSON:Lcom/google/gson/JsonObject;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;

    const-string p2, "input JSON is null"

    invoke-direct {p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingRequest;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/RequestBinder;->bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingRequest;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
