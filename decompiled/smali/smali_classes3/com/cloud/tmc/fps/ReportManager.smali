.class public Lcom/cloud/tmc/fps/ReportManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/fps/record/IRecord$FrameListener;


# instance fields
.field private firstRecord:Ljava/lang/Boolean;

.field private isRecording:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation
.end field

.field private stackTraceTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->isRecording:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    new-instance v0, Lcom/cloud/tmc/fps/ReportManager$1;

    invoke-direct {v0, p0}, Lcom/cloud/tmc/fps/ReportManager$1;-><init>(Lcom/cloud/tmc/fps/ReportManager;)V

    iput-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->stackTraceTask:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic a(Lcom/cloud/tmc/fps/ReportManager;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/cloud/tmc/fps/ReportManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/cloud/tmc/fps/ReportManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/cloud/tmc/fps/ReportManager;->mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/cloud/tmc/fps/ReportManager;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    return-void
.end method

.method private dealPreFrameTraceInfo(JLjava/lang/Long;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget-object p3, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    invoke-virtual {p3}, Lcom/cloud/tmc/fps/FpsConfig;->getJankThreshold()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->mTracesInOneFrame:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/cloud/tmc/fps/ReportManager$2;

    invoke-direct {p2, p0}, Lcom/cloud/tmc/fps/ReportManager$2;-><init>(Lcom/cloud/tmc/fps/ReportManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static bridge synthetic e(Lcom/cloud/tmc/fps/ReportManager;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/tmc/fps/ReportManager;->traceToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private traceToString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    array-length v0, p2

    if-nez v0, :cond_0

    const-string p1, "[]"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    sub-int/2addr v2, p1

    if-ge v1, v2, :cond_2

    array-length v2, p2

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onFrame(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->isRecording:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cloud/tmc/fps/ReportManager;->stackTraceTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/fps/ReportManager;->dealPreFrameTraceInfo(JLjava/lang/Long;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->firstRecord:Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/cloud/tmc/fps/ReportManager;->stackTraceTask:Ljava/lang/Runnable;

    sget-object p3, Lcom/cloud/tmc/fps/FpsConfig;->INSTANCE:Lcom/cloud/tmc/fps/FpsConfig;

    invoke-virtual {p3}, Lcom/cloud/tmc/fps/FpsConfig;->getTraceInterval()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onRecord(Z)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/fps/ReportManager;->isRecording:Ljava/lang/Boolean;

    return-void
.end method
