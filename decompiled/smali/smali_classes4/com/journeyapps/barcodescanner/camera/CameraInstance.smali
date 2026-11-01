.class public Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.super Ljava/lang/Object;


# static fields
.field private static final n:Ljava/lang/String; = "CameraInstance"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/camera/k;

.field private b:Lcom/journeyapps/barcodescanner/camera/j;

.field private c:Lcom/journeyapps/barcodescanner/camera/h;

.field private d:Landroid/os/Handler;

.field private e:Lcom/journeyapps/barcodescanner/camera/m;

.field private f:Z

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->m:Ljava/lang/Runnable;

    invoke-static {}, Lxe/s;->a()V

    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/k;->d()Lcom/journeyapps/barcodescanner/camera/k;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    new-instance v0, Lcom/journeyapps/barcodescanner/camera/h;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->p(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h:Landroid/os/Handler;

    return-void
.end method

.method private F()V
    .locals 2

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CameraInstance is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->v(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->t(Lcom/journeyapps/barcodescanner/camera/p;)V

    return-void
.end method

.method public static synthetic c(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->u(Lcom/journeyapps/barcodescanner/camera/p;)V

    return-void
.end method

.method public static synthetic d(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->s(Lcom/journeyapps/barcodescanner/camera/i;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/h;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    return-object p0
.end method

.method static synthetic g(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->w(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic h(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic i(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lxe/q;
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->q()Lxe/q;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/j;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/j;

    return-object p0
.end method

.method static synthetic k(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    return p1
.end method

.method static synthetic l(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/k;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    return-object p0
.end method

.method private q()Lxe/q;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/h;->i()Lxe/q;

    move-result-object v0

    return-object v0
.end method

.method private synthetic s(Lcom/journeyapps/barcodescanner/camera/i;)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->d(Lcom/journeyapps/barcodescanner/camera/i;)V

    return-void
.end method

.method private synthetic t(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->n(Lcom/journeyapps/barcodescanner/camera/p;)V

    return-void
.end method

.method private synthetic u(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 2

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/g;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/g;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic v(Z)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->u(Z)V

    return-void
.end method

.method private w(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_camera_error:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lcom/journeyapps/barcodescanner/camera/m;)V
    .locals 1

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Lcom/journeyapps/barcodescanner/camera/m;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->r(Lcom/journeyapps/barcodescanner/camera/m;)V

    return-void
.end method

.method public B(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->d:Landroid/os/Handler;

    return-void
.end method

.method public C(Lcom/journeyapps/barcodescanner/camera/j;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->b:Lcom/journeyapps/barcodescanner/camera/j;

    return-void
.end method

.method public D(Z)V
    .locals 2

    invoke-static {}, Lxe/s;->a()V

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/e;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/e;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 2

    invoke-static {}, Lxe/s;->a()V

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->F()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public m(Lcom/journeyapps/barcodescanner/camera/i;)V
    .locals 2

    invoke-static {}, Lxe/s;->a()V

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/f;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/f;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/i;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    invoke-static {}, Lxe/s;->a()V

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    return-void
.end method

.method public o()V
    .locals 2

    invoke-static {}, Lxe/s;->a()V

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->F()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p()Lcom/journeyapps/barcodescanner/camera/m;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->e:Lcom/journeyapps/barcodescanner/camera/m;

    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    return v0
.end method

.method public x()V
    .locals 2

    invoke-static {}, Lxe/s;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->g:Z

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a:Lcom/journeyapps/barcodescanner/camera/k;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/k;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y(Lcom/journeyapps/barcodescanner/camera/p;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->h:Landroid/os/Handler;

    new-instance v1, Lcom/journeyapps/barcodescanner/camera/d;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/d;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public z(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->i:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->c:Lcom/journeyapps/barcodescanner/camera/h;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/h;->p(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    :cond_0
    return-void
.end method
