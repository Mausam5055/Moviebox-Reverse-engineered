.class Lcom/cloud/tmc/integration/structure/node/AppNode$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/engine/EngineInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/structure/node/AppNode;->onStart()V
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

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$4;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initResult(ZLjava/lang/String;)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EngineInitCallback initResult success: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TmcApp:App"

    invoke-static {v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$4;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->g(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/node/AppNode$4;->this$0:Lcom/cloud/tmc/integration/structure/node/AppNode;

    invoke-static {p1}, Lcom/cloud/tmc/integration/structure/node/AppNode;->f(Lcom/cloud/tmc/integration/structure/node/AppNode;)V

    :goto_0
    return-void
.end method
