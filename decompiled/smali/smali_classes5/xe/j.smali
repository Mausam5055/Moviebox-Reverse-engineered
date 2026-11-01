.class public Lxe/j;
.super Ljava/lang/Object;


# static fields
.field private static final k:Ljava/lang/String; = "j"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Lxe/g;

.field private e:Landroid/os/Handler;

.field private f:Landroid/graphics/Rect;

.field private g:Z

.field private final h:Ljava/lang/Object;

.field private final i:Landroid/os/Handler$Callback;

.field private final j:Lcom/journeyapps/barcodescanner/camera/p;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lxe/g;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lxe/j;->g:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxe/j;->h:Ljava/lang/Object;

    new-instance v0, Lxe/j$a;

    invoke-direct {v0, p0}, Lxe/j$a;-><init>(Lxe/j;)V

    iput-object v0, p0, Lxe/j;->i:Landroid/os/Handler$Callback;

    new-instance v0, Lxe/j$b;

    invoke-direct {v0, p0}, Lxe/j$b;-><init>(Lxe/j;)V

    iput-object v0, p0, Lxe/j;->j:Lcom/journeyapps/barcodescanner/camera/p;

    invoke-static {}, Lxe/s;->a()V

    iput-object p1, p0, Lxe/j;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lxe/j;->d:Lxe/g;

    iput-object p3, p0, Lxe/j;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lxe/j;Lxe/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lxe/j;->g(Lxe/r;)V

    return-void
.end method

.method static synthetic b(Lxe/j;)V
    .locals 0

    invoke-direct {p0}, Lxe/j;->h()V

    return-void
.end method

.method static synthetic c(Lxe/j;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lxe/j;->h:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lxe/j;)Z
    .locals 0

    iget-boolean p0, p0, Lxe/j;->g:Z

    return p0
.end method

.method static synthetic e(Lxe/j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lxe/j;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private g(Lxe/r;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lxe/j;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Lxe/r;->d(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lxe/j;->f(Lxe/r;)Lcom/google/zxing/e;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lxe/j;->d:Lxe/g;

    invoke-virtual {v3, v2}, Lxe/g;->c(Lcom/google/zxing/e;)Lcom/google/zxing/j;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found barcode in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lxe/j;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    new-instance v0, Lxe/c;

    invoke-direct {v0, v2, p1}, Lxe/c;-><init>(Lcom/google/zxing/j;Lxe/r;)V

    iget-object v1, p0, Lxe/j;->e:Landroid/os/Handler;

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lxe/j;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lxe/j;->e:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lxe/j;->d:Lxe/g;

    invoke-virtual {v0}, Lxe/g;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lxe/c;->f(Ljava/util/List;Lxe/r;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lxe/j;->e:Landroid/os/Handler;

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    invoke-direct {p0}, Lxe/j;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lxe/j;->a:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lxe/j;->j:Lcom/journeyapps/barcodescanner/camera/p;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->y(Lcom/journeyapps/barcodescanner/camera/p;)V

    return-void
.end method


# virtual methods
.method protected f(Lxe/r;)Lcom/google/zxing/e;
    .locals 1

    iget-object v0, p0, Lxe/j;->f:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lxe/r;->a()Lcom/google/zxing/h;

    move-result-object p1

    return-object p1
.end method

.method public i(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lxe/j;->f:Landroid/graphics/Rect;

    return-void
.end method

.method public j(Lxe/g;)V
    .locals 0

    iput-object p1, p0, Lxe/j;->d:Lxe/g;

    return-void
.end method

.method public k()V
    .locals 3

    invoke-static {}, Lxe/s;->a()V

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lxe/j;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lxe/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lxe/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lxe/j;->i:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lxe/j;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxe/j;->g:Z

    invoke-direct {p0}, Lxe/j;->h()V

    return-void
.end method

.method public l()V
    .locals 3

    invoke-static {}, Lxe/s;->a()V

    iget-object v0, p0, Lxe/j;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lxe/j;->g:Z

    iget-object v1, p0, Lxe/j;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lxe/j;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
