.class Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->run()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

.field final synthetic val$optimizedPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    iput-object p2, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->val$optimizedPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, ".vdex"

    const-string v1, ".odex"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v3}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$200(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v4}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$300(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->val$optimizedPath:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v3}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$500(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->val$optimizedPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$200(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Long;

    invoke-static {v1, v0, v2}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->access$600(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    const-string v4, "Tinker.ParallelDex"

    const-string v5, "Fail to call triggerPMDexOptAsyncOnDemand."

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v3}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$500(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->val$optimizedPath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$200(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Long;

    invoke-static {v1, v0, v2}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->access$600(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)Z

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v4}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$500(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->val$optimizedPath:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker$1;->this$0:Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;

    invoke-static {v1}, Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;->access$200(Lcom/tencent/tinker/loader/TinkerDexOptimizer$OptimizeWorker;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Long;

    invoke-static {v1, v0, v2}, Lcom/tencent/tinker/loader/TinkerDexOptimizer;->access$600(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Long;)Z

    :cond_1
    throw v3
.end method
