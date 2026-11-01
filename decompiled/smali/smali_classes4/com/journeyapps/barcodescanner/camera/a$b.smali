.class Lcom/journeyapps/barcodescanner/camera/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/camera/a;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/camera/a;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/camera/a$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/a$b;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/journeyapps/barcodescanner/camera/a;->d(Lcom/journeyapps/barcodescanner/camera/a;Z)Z

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/a;->e(Lcom/journeyapps/barcodescanner/camera/a;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/a$b;->a:Lcom/journeyapps/barcodescanner/camera/a;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/camera/a;->c(Lcom/journeyapps/barcodescanner/camera/a;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/journeyapps/barcodescanner/camera/b;

    invoke-direct {p2, p0}, Lcom/journeyapps/barcodescanner/camera/b;-><init>(Lcom/journeyapps/barcodescanner/camera/a$b;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
