.class public final Lcom/journeyapps/barcodescanner/camera/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/h$a;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "h"


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Landroid/hardware/Camera$CameraInfo;

.field private c:Lcom/journeyapps/barcodescanner/camera/a;

.field private d:Lgd/b;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private h:Lcom/journeyapps/barcodescanner/camera/m;

.field private i:Lxe/q;

.field private j:Lxe/q;

.field private k:I

.field private l:Landroid/content/Context;

.field private final m:Lcom/journeyapps/barcodescanner/camera/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->k:I

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->l:Landroid/content/Context;

    new-instance p1, Lcom/journeyapps/barcodescanner/camera/h$a;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/camera/h$a;-><init>(Lcom/journeyapps/barcodescanner/camera/h;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->m:Lcom/journeyapps/barcodescanner/camera/h$a;

    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/camera/h;)Landroid/hardware/Camera$CameraInfo;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/h;->b:Landroid/hardware/Camera$CameraInfo;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method private c()I
    .locals 4

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->h:Lcom/journeyapps/barcodescanner/camera/m;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/m;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->b:Landroid/hardware/Camera$CameraInfo;

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_4

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v2

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_4
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v2

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera Display Orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return v0
.end method

.method private h()Landroid/hardware/Camera$Parameters;
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static j(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lxe/q;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget v3, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v3}, Lxe/q;-><init>(II)V

    new-instance v0, Lxe/q;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, p0}, Lxe/q;-><init>(II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    new-instance v2, Lxe/q;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lxe/q;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private o(I)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private q(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/h;->h()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/journeyapps/barcodescanner/camera/h;->n:Ljava/lang/String;

    const-string v0, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/h;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial camera parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/journeyapps/barcodescanner/camera/c;->g(Landroid/hardware/Camera$Parameters;Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V

    if-nez p1, :cond_4

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/c;->k(Landroid/hardware/Camera$Parameters;Z)V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/c;->i(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/c;->c(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/c;->l(Landroid/hardware/Camera$Parameters;)V

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/c;->h(Landroid/hardware/Camera$Parameters;)V

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/c;->j(Landroid/hardware/Camera$Parameters;)V

    :cond_4
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/h;->j(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->i:Lxe/q;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->h:Lcom/journeyapps/barcodescanner/camera/m;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/h;->k()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/journeyapps/barcodescanner/camera/m;->a(Ljava/util/List;Z)Lxe/q;

    move-result-object p1

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->i:Lxe/q;

    iget v1, p1, Lxe/q;->a:I

    iget p1, p1, Lxe/q;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :goto_0
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "glass-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/c;->e(Landroid/hardware/Camera$Parameters;)V

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Final camera parameters: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private s()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/h;->c()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->k:I

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/h;->o(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/h;->n:Ljava/lang/String;

    const-string v1, "Failed to set rotation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/h;->q(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/h;->q(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/h;->n:Ljava/lang/String;

    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->i:Lxe/q;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->j:Lxe/q;

    goto :goto_2

    :cond_0
    new-instance v1, Lxe/q;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lxe/q;-><init>(II)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->j:Lxe/q;

    :goto_2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->m:Lcom/journeyapps/barcodescanner/camera/h$a;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->j:Lxe/q;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/h$a;->b(Lxe/q;)V

    return-void
.end method


# virtual methods
.method public d(Lcom/journeyapps/barcodescanner/camera/i;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/journeyapps/barcodescanner/camera/i;->a(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/h;->n:Ljava/lang/String;

    const-string v1, "Failed to change camera parameters"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/h;->s()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Camera not open"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->k:I

    return v0
.end method

.method public i()Lxe/q;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->j:Lxe/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->j:Lxe/q;

    invoke-virtual {v0}, Lxe/q;->d()Lxe/q;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->j:Lxe/q;

    return-object v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rotation not calculated yet. Call configure() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Z
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->b()I

    move-result v0

    invoke-static {v0}, Lhd/a;->b(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->b()I

    move-result v0

    invoke-static {v0}, Lhd/a;->a(I)I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->b:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->m:Lcom/journeyapps/barcodescanner/camera/h$a;

    invoke-virtual {v1, p1}, Lcom/journeyapps/barcodescanner/camera/h$a;->a(Lcom/journeyapps/barcodescanner/camera/p;)V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->m:Lcom/journeyapps/barcodescanner/camera/h$a;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public p(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    return-void
.end method

.method public r(Lcom/journeyapps/barcodescanner/camera/m;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->h:Lcom/journeyapps/barcodescanner/camera/m;

    return-void
.end method

.method public t(Lcom/journeyapps/barcodescanner/camera/j;)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/camera/j;->a(Landroid/hardware/Camera;)V

    return-void
.end method

.method public u(Z)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/h;->l()Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->c:Lcom/journeyapps/barcodescanner/camera/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/a;->j()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/c;->k(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/c;->d(Landroid/hardware/Camera$Parameters;Z)V

    :cond_1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/h;->c:Lcom/journeyapps/barcodescanner/camera/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/a;->i()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/h;->n:Ljava/lang/String;

    const-string v1, "Failed to set torch"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public v()V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->e:Z

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/a;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/camera/a;-><init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->c:Lcom/journeyapps/barcodescanner/camera/a;

    new-instance v0, Lgd/b;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/h;->g:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, p0, v2}, Lgd/b;-><init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/h;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->d:Lgd/b;

    invoke-virtual {v0}, Lgd/b;->d()V

    :cond_0
    return-void
.end method

.method public w()V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->c:Lcom/journeyapps/barcodescanner/camera/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/a;->j()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->c:Lcom/journeyapps/barcodescanner/camera/a;

    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->d:Lgd/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lgd/b;->e()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/h;->d:Lgd/b;

    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/camera/h;->e:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->m:Lcom/journeyapps/barcodescanner/camera/h$a;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/h$a;->a(Lcom/journeyapps/barcodescanner/camera/p;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/h;->e:Z

    :cond_2
    return-void
.end method
