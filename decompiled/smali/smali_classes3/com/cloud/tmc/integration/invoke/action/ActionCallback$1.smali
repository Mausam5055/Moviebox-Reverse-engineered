.class Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->onStart(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

.field final synthetic val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

.field final synthetic val$extensions:Ljava/util/List;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    iput-wide p3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$start:J

    iput-object p5, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$extensions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onComplete for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " schedule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$start:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TmcKernel:ActionCallback"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    check-cast v0, Lcom/cloud/tmc/integration/invoke/action/Action$Start;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$1;->val$extensions:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/invoke/action/Action$Start;->onStart(Ljava/util/List;)V

    return-void
.end method
