.class Lcom/aliyun/utils/CpuProcessTracker$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageBefore26()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cpuValueIndex:I

.field final synthetic this$0:Lcom/aliyun/utils/CpuProcessTracker;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/CpuProcessTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aliyun/utils/CpuProcessTracker;->access$100([Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    const/4 v1, 0x0

    const-string v2, "%"

    if-gez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->cpuValueIndex:I

    if-ltz v0, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iget-object v0, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/aliyun/utils/CpuProcessTracker;->access$202(Lcom/aliyun/utils/CpuProcessTracker;I)I

    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCpuUsageBefore26 mMyPidPercent update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/utils/CpuProcessTracker$2;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-static {v1}, Lcom/aliyun/utils/CpuProcessTracker;->access$200(Lcom/aliyun/utils/CpuProcessTracker;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getCpuUsageBefore26 unknow "

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method
