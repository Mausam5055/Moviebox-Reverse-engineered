.class public Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cloud/tmc/kernel/bridge/extension/bind/Binder<",
        "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;",
        "Lcom/cloud/tmc/kernel/node/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private sourceNode:Lcom/cloud/tmc/kernel/node/Node;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/node/Node;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;->sourceNode:Lcom/cloud/tmc/kernel/node/Node;

    return-void
.end method

.method private findDataScopeNode(Ljava/lang/Class;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/node/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/node/Scope;",
            ">;",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ")",
            "Lcom/cloud/tmc/kernel/node/Node;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    instance-of v1, p2, Lcom/cloud/tmc/kernel/node/Scope;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/cloud/tmc/kernel/node/Scope;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/node/Scope;->getScopeType()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p2}, Lcom/cloud/tmc/kernel/node/Node;->getParentNode()Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;->findDataScopeNode(Ljava/lang/Class;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;)Lcom/cloud/tmc/kernel/node/Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ">;",
            "Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;",
            ")",
            "Lcom/cloud/tmc/kernel/node/Node;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;->value()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;->sourceNode:Lcom/cloud/tmc/kernel/node/Node;

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;->findDataScopeNode(Ljava/lang/Class;Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method public bridge synthetic bind(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloud/tmc/kernel/bridge/extension/bind/BindException;
        }
    .end annotation

    check-cast p2, Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/bridge/extension/bind/NodeBinder;->bind(Ljava/lang/Class;Lcom/cloud/tmc/kernel/bridge/extension/annotation/BindingNode;)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    return-object p1
.end method
