.class public interface abstract Lcom/cloud/tmc/kernel/extension/ExtensionManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enterNode(Lcom/cloud/tmc/kernel/node/Node;)V
.end method

.method public abstract exitNode(Lcom/cloud/tmc/kernel/node/Node;)V
.end method

.method public abstract findActionMeta(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/action/ActionMeta;
.end method

.method public abstract getBridgeExtensionByAction(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation
.end method

.method public abstract getBridgeExtensionByAction(Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/BridgeExtension;
.end method

.method public abstract getExtensionByName(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/extension/Extension;
.end method

.method public abstract getExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtensionByPoint(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExtensionRegistry()Lcom/cloud/tmc/kernel/extension/ExtensionRegistry;
.end method

.method public abstract registerExtensionByPoint(Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/Class;Lcom/cloud/tmc/kernel/extension/Extension;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/extension/Extension;",
            ">(",
            "Lcom/cloud/tmc/kernel/node/Node;",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method
