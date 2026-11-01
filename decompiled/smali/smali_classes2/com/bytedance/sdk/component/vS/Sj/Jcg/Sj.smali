.class public Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;
.super Ljava/lang/Object;


# static fields
.field private static volatile Sj:Landroid/os/HandlerThread; = null

.field private static TKC:I = 0xbb8

.field private static volatile sP:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->TKC()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sj()Landroid/os/Handler;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->sP:Landroid/os/Handler;

    if-nez v0, :cond_5

    const-class v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->sP:Landroid/os/Handler;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->sP:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_1
    monitor-exit v0

    throw v1

    :cond_2
    :goto_2
    const-class v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_5

    :cond_3
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->TKC()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->sP:Landroid/os/Handler;

    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_4
    sget-object v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->sP:Landroid/os/Handler;

    return-object v0

    :goto_5
    monitor-exit v0

    throw v1
.end method

.method private static TKC()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->uvD()Lcom/bytedance/sdk/component/vS/Sj/HiB;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "csj_ad_log"

    if-eqz v0, :cond_0

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/component/vS/Sj/HiB;->Sj(Ljava/lang/String;I)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->Sj:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sP()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->TKC:I

    if-gtz v0, :cond_0

    const/16 v0, 0xbb8

    sput v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->TKC:I

    :cond_0
    sget v0, Lcom/bytedance/sdk/component/vS/Sj/Jcg/Sj;->TKC:I

    return v0
.end method
