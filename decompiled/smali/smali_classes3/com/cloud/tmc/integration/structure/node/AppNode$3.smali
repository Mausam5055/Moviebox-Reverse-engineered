.class Lcom/cloud/tmc/integration/structure/node/AppNode$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

.field final synthetic val$loadAppStart:J


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/structure/node/AppNode;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    iput-wide p2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->val$loadAppStart:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {v0}, Lcom/cloud/tmc/integration/structure/node/AppNode;->c(Lcom/cloud/tmc/integration/structure/node/AppNode;)Lcom/cloud/tmc/integration/structure/AppLoadResult;

    move-result-object v1

    iget-wide v2, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$3;->val$loadAppStart:J

    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/integration/structure/node/AppNode;->h(Lcom/cloud/tmc/integration/structure/node/AppNode;Lcom/cloud/tmc/integration/structure/AppLoadResult;J)V

    return-void
.end method
