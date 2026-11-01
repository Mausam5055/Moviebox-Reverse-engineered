.class public interface abstract Lcom/cloud/tmc/integration/structure/WarmupNode;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/node/Node;
.implements Lcom/cloud/tmc/kernel/proxy/Proxiable;


# annotations
.annotation runtime Lcom/cloud/tmc/kernel/annotation/DefaultImpl;
    value = "com.cloud.tmc.integration.structure.impl.WarmupNodeImp"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008g\u0018\u00002\u00020\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/structure/WarmupNode;",
        "Lcom/cloud/tmc/kernel/node/Node;",
        "Lcom/cloud/tmc/kernel/proxy/Proxiable;",
        "getNode",
        "id",
        "",
        "removeNode",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getNode(Ljava/lang/String;)Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract removeNode(Ljava/lang/String;)V
.end method
