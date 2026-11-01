.class public final Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->registerListener(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1",
        "Ljava/util/TimerTask;",
        "run",
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


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->warmupFail(I)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$registerListener$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$setListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;)V

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method
