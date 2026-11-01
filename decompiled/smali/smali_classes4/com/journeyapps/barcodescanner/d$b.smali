.class Lcom/journeyapps/barcodescanner/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/d;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/d;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->h(Lcom/journeyapps/barcodescanner/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/journeyapps/barcodescanner/d;->i()Ljava/lang/String;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->j(Lcom/journeyapps/barcodescanner/d;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/d$b;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {p1}, Lcom/journeyapps/barcodescanner/d;->g(Lcom/journeyapps/barcodescanner/d;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/google/zxing/client/android/R$string;->zxing_msg_camera_framework_bug:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/journeyapps/barcodescanner/d;->m(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
