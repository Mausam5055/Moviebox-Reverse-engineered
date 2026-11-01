.class Lcom/cloud/tmc/integration/structure/node/PageNode$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/render/ExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/PageNode;->exit(ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

.field final synthetic val$autoExitApp:Z

.field final synthetic val$taskContext:Lcom/cloud/tmc/integration/structure/Page$TaskContext;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/PageNode;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    iput-boolean p2, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$autoExitApp:Z

    iput-object p3, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$taskContext:Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess(Z)V
    .locals 2

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->this$0:Lcom/cloud/tmc/integration/structure/node/PageNode;

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$autoExitApp:Z

    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/node/PageNode$2;->val$taskContext:Lcom/cloud/tmc/integration/structure/Page$TaskContext;

    invoke-static {p1, v0, v1}, Lcom/cloud/tmc/integration/structure/node/PageNode;->f(Lcom/cloud/tmc/integration/structure/node/PageNode;ZLcom/cloud/tmc/integration/structure/Page$TaskContext;)V

    return-void
.end method
