.class Lcom/cloud/tmc/integration/structure/node/AppNode$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/utils/NetworkUtil$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->onPageStarted(Lcom/cloud/tmc/integration/structure/Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$6;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V
    .locals 0

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$6;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {p1, p2}, Lcom/cloud/tmc/integration/structure/node/AppNode;->i(Lcom/cloud/tmc/integration/structure/node/AppNode;Lcom/cloud/tmc/kernel/utils/NetworkUtil$Network;)V

    return-void
.end method
