.class Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->onInterrupt(Lcom/cloud/tmc/kernel/extension/Extension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

.field final synthetic val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

.field final synthetic val$extension:Lcom/cloud/tmc/kernel/extension/Extension;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;Lcom/cloud/tmc/kernel/extension/Extension;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;->this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    iput-object p3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;->val$extension:Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    check-cast v0, Lcom/cloud/tmc/integration/invoke/action/Action$Interrupt;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$4;->val$extension:Lcom/cloud/tmc/kernel/extension/Extension;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/invoke/action/Action$Interrupt;->onInterrupt(Lcom/cloud/tmc/kernel/extension/Extension;)V

    return-void
.end method
