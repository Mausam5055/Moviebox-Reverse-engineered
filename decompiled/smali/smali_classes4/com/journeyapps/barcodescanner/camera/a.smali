.class public final Lcom/journeyapps/barcodescanner/camera/a;
.super Ljava/lang/Object;


# static fields
.field private static final i:Ljava/lang/String; = "a"

.field private static final j:Ljava/util/Collection;


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Z

.field private final d:Landroid/hardware/Camera;

.field private e:Landroid/os/Handler;

.field private f:I

.field private final g:Landroid/os/Handler$Callback;

.field private final h:Landroid/hardware/Camera$AutoFocusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/journeyapps/barcodescanner/camera/a;->j:Ljava/util/Collection;

    const-string v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->f:I

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/a$a;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/camera/a$a;-><init>(Lcom/journeyapps/barcodescanner/camera/a;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/a;->g:Landroid/os/Handler$Callback;

    new-instance v2, Lcom/journeyapps/barcodescanner/camera/a$b;

    invoke-direct {v2, p0}, Lcom/journeyapps/barcodescanner/camera/a$b;-><init>(Lcom/journeyapps/barcodescanner/camera/a;)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/camera/a;->h:Landroid/hardware/Camera$AutoFocusCallback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/journeyapps/barcodescanner/camera/a;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/journeyapps/barcodescanner/camera/a;->j:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->c:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current focus mode \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'; use auto focus? "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/a;->i()V

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/camera/a;)I
    .locals 0

    iget p0, p0, Lcom/journeyapps/barcodescanner/camera/a;->f:I

    return p0
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/camera/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/a;->h()V

    return-void
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/camera/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/a;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/camera/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/a;->b:Z

    return p1
.end method

.method static synthetic e(Lcom/journeyapps/barcodescanner/camera/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/a;->f()V

    return-void
.end method

.method private declared-synchronized f()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->e:Landroid/os/Handler;

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/a;->f:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->e:Landroid/os/Handler;

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/a;->f:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->e:Landroid/os/Handler;

    iget v1, p0, Lcom/journeyapps/barcodescanner/camera/a;->f:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private h()V
    .locals 3

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->b:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->d:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/a;->h:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->b:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/journeyapps/barcodescanner/camera/a;->i:Ljava/lang/String;

    const-string v2, "Unexpected exception while focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/a;->f()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->a:Z

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/a;->h()V

    return-void
.end method

.method public j()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->a:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->b:Z

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/a;->g()V

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/journeyapps/barcodescanner/camera/a;->i:Ljava/lang/String;

    const-string v2, "Unexpected exception while cancelling focusing"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
