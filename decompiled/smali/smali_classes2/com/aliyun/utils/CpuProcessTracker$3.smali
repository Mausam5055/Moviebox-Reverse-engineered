.class Lcom/aliyun/utils/CpuProcessTracker$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageAfter25()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/utils/CpuProcessTracker;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/CpuProcessTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/aliyun/utils/CpuProcessTracker$3;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->getCPUCoresNum()I

    move-result v0

    iget-object v1, p0, Lcom/aliyun/utils/CpuProcessTracker$3;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {v1, p1}, Lcom/aliyun/utils/CpuProcessTracker;->access$202(Lcom/aliyun/utils/CpuProcessTracker;I)I

    invoke-static {}, Lcom/aliyun/utils/CpuProcessTracker;->access$300()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCpuUsageAfter25 mMyPidPercent update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aliyun/utils/CpuProcessTracker$3;->this$0:Lcom/aliyun/utils/CpuProcessTracker;

    invoke-static {v1}, Lcom/aliyun/utils/CpuProcessTracker;->access$200(Lcom/aliyun/utils/CpuProcessTracker;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cicada/player/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
