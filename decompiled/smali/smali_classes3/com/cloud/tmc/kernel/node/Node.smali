.class public interface abstract Lcom/cloud/tmc/kernel/node/Node;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/security/Accessor;
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract addFixedView(Landroid/view/View;)V
.end method

.method public abstract bubbleFindNode(Ljava/lang/Class;)Lcom/cloud/tmc/kernel/node/Node;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/cloud/tmc/kernel/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract getChild(J)Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract getChildAt(I)Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getIndexOfChild(Lcom/cloud/tmc/kernel/node/Node;)I
.end method

.method public abstract getNodeId()J
.end method

.method public abstract getParentNode()Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract isChildless()Z
.end method

.method public abstract onFinalized()V
.end method

.method public abstract onInitialized()V
.end method

.method public abstract peekChild()Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract popChild()Lcom/cloud/tmc/kernel/node/Node;
.end method

.method public abstract pushChild(Lcom/cloud/tmc/kernel/node/Node;)V
.end method

.method public abstract removeChild(Lcom/cloud/tmc/kernel/node/Node;)Z
.end method

.method public abstract setParentNode(Lcom/cloud/tmc/kernel/node/Node;)V
.end method
