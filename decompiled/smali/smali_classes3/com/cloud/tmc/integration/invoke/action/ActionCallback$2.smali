.class Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/invoke/action/ActionCallback;->onProgress(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

.field final synthetic val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

.field final synthetic val$extension:Lcom/cloud/tmc/kernel/extension/Extension;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/invoke/action/ActionCallback;Lcom/cloud/tmc/integration/invoke/action/Action;Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;->this$0:Lcom/cloud/tmc/integration/invoke/action/ActionCallback;

    iput-object p2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    iput-object p3, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;->val$extension:Lcom/cloud/tmc/kernel/extension/Extension;

    iput-object p4, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;->val$action:Lcom/cloud/tmc/integration/invoke/action/Action;

    check-cast v0, Lcom/cloud/tmc/integration/invoke/action/Action$Progress;

    iget-object v1, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;->val$extension:Lcom/cloud/tmc/kernel/extension/Extension;

    iget-object v2, p0, Lcom/cloud/tmc/integration/invoke/action/ActionCallback$2;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/cloud/tmc/integration/invoke/action/Action$Progress;->onProgress(Lcom/cloud/tmc/kernel/extension/Extension;Ljava/lang/Object;)V

    return-void
.end method
