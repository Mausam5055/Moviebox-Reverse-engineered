.class public final Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/performance/WarmUpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->realWarmupRender(Lcom/cloud/tmc/integration/model/PrepareCallbackParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1",
        "Lcom/cloud/tmc/integration/performance/WarmUpCallback;",
        "warmupResult",
        "",
        "result",
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

    iput-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public warmupResult(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getUnUsedRenderQueue$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerRenderPool => warmupRender fail unUsedRenderQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->preWarmupRenderFail()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getTAG$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getUnUsedRenderQueue$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InnerRenderPool => warmupRender success unUsedRenderQueue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getUnUsedRenderQueue$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getUnUsedRenderQueue$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/render/IRender;

    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IRender;->setWarupSuccess()V

    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;->loadRenderFrameworkSuccess()V

    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$setListener$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;)V

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool$realWarmupRender$1;->this$0:Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;

    invoke-static {p1}, Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;->access$getCreatingRender$p(Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method
