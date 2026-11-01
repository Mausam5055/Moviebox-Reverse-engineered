.class Lcom/cloud/tmc/fps/ReportManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/fps/ReportManager;->dealPreFrameTraceInfo(JLjava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cloud/tmc/fps/ReportManager;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/fps/ReportManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-static {v1}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    const/4 v4, 0x2

    invoke-static {v3, v4, v2}, Lcom/cloud/tmc/fps/ReportManager;->e(Lcom/cloud/tmc/fps/ReportManager;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/EncodeUtils;->base64Encode2String([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/fps/data/StackTraceData;

    invoke-virtual {v5}, Lcom/cloud/tmc/fps/data/StackTraceData;->getStackInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/fps/data/StackTraceData;

    invoke-virtual {v3}, Lcom/cloud/tmc/fps/data/StackTraceData;->getCount()I

    move-result v3

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_2
    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-le v4, v6, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/fps/data/StackTraceData;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/fps/data/StackTraceData;

    invoke-virtual {v3}, Lcom/cloud/tmc/fps/data/StackTraceData;->getCount()I

    move-result v3

    add-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/cloud/tmc/fps/data/StackTraceData;->setCount(I)V

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/cloud/tmc/fps/data/StackTraceData;

    invoke-direct {v3, v5, v2}, Lcom/cloud/tmc/fps/data/StackTraceData;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fps_drop_stackInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;->POINT_FPS:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PointAnalyseType;

    const-string v3, ""

    invoke-interface {v0, v3, v2, v3, v1}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager$2;->this$0:Lcom/cloud/tmc/fps/ReportManager;

    invoke-static {v0}, Lcom/cloud/tmc/fps/ReportManager;->c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method
