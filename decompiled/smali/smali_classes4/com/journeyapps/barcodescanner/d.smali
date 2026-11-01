.class public Lcom/journeyapps/barcodescanner/d;
.super Ljava/lang/Object;


# static fields
.field private static final o:Ljava/lang/String; = "d"

.field private static p:I = 0xfa


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lgd/h;

.field private i:Lgd/e;

.field private j:Landroid/os/Handler;

.field private k:Z

.field private l:Lxe/a;

.field private final m:Lcom/journeyapps/barcodescanner/CameraPreview$f;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/d;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/d;->e:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/d;->f:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->g:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->k:Z

    new-instance v1, Lcom/journeyapps/barcodescanner/d$a;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/d$a;-><init>(Lcom/journeyapps/barcodescanner/d;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/d;->l:Lxe/a;

    new-instance v1, Lcom/journeyapps/barcodescanner/d$b;

    invoke-direct {v1, p0}, Lcom/journeyapps/barcodescanner/d$b;-><init>(Lcom/journeyapps/barcodescanner/d;)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/d;->m:Lcom/journeyapps/barcodescanner/CameraPreview$f;

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->n:Z

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/journeyapps/barcodescanner/CameraPreview;->addStateListener(Lcom/journeyapps/barcodescanner/CameraPreview$f;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/d;->j:Landroid/os/Handler;

    new-instance p2, Lgd/h;

    new-instance v0, Lxe/d;

    invoke-direct {v0, p0}, Lxe/d;-><init>(Lcom/journeyapps/barcodescanner/d;)V

    invoke-direct {p2, p1, v0}, Lgd/h;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/d;->h:Lgd/h;

    new-instance p2, Lgd/e;

    invoke-direct {p2, p1}, Lgd/e;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/d;->i:Lgd/e;

    return-void
.end method

.method public static A(Lxe/c;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lxe/c;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lxe/c;->a()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lxe/c;->c()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    const-string v2, "SCAN_RESULT_BYTES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lxe/c;->d()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SCAN_RESULT_UPC_EAN_EXTENSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    const-string v2, "SCAN_RESULT_ORIENTATION"

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    sget-object v1, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string p0, "SCAN_RESULT_IMAGE_PATH"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    return-object v0
.end method

.method private D()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "MISSING_CAMERA_PERMISSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/journeyapps/barcodescanner/d;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/d;->q(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/journeyapps/barcodescanner/d;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/d;->r(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/journeyapps/barcodescanner/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->s()V

    return-void
.end method

.method static synthetic d(Lcom/journeyapps/barcodescanner/d;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object p0
.end method

.method static synthetic e(Lcom/journeyapps/barcodescanner/d;)Lgd/e;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/d;->i:Lgd/e;

    return-object p0
.end method

.method static synthetic f(Lcom/journeyapps/barcodescanner/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/d;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/journeyapps/barcodescanner/d;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic h(Lcom/journeyapps/barcodescanner/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/d;->k:Z

    return p0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/journeyapps/barcodescanner/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->n()V

    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private o(Lxe/c;)Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lxe/c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    :try_start_0
    const-string v0, "barcodeimage"

    const-string v1, ".jpg"

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/journeyapps/barcodescanner/d;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create temporary file and store bitmap! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private synthetic q(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->n()V

    return-void
.end method

.method private synthetic r(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->n()V

    return-void
.end method

.method private synthetic s()V
    .locals 0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->n()V

    return-void
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/journeyapps/barcodescanner/d;->p:I

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->n:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected B(Lxe/c;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/d;->o(Lxe/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/journeyapps/barcodescanner/d;->A(Lxe/c;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/d;->k()V

    return-void
.end method

.method protected C()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "TIMEOUT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/d;->k()V

    return-void
.end method

.method public E(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/d;->e:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/d;->f:Ljava/lang/String;

    return-void
.end method

.method protected k()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->getBarcodeView()Lcom/journeyapps/barcodescanner/BarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CameraPreview;->isCameraClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->n()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->k:Z

    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->h:Lgd/h;

    invoke-virtual {v0}, Lgd/h;->d()V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/d;->l:Lxe/a;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->decodeSingle(Lxe/a;)V

    return-void
.end method

.method protected m(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->g:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    sget v0, Lcom/google/zxing/client/android/R$string;->zxing_msg_camera_framework_bug:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    sget v2, Lcom/google/zxing/client/android/R$string;->zxing_app_name:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget p1, Lcom/google/zxing/client/android/R$string;->zxing_button_ok:I

    new-instance v1, Lxe/e;

    invoke-direct {v1, p0}, Lxe/e;-><init>(Lcom/journeyapps/barcodescanner/d;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lxe/f;

    invoke-direct {p1, p0}, Lxe/f;-><init>(Lcom/journeyapps/barcodescanner/d;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return-void
.end method

.method public p(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-eqz p2, :cond_0

    const-string v0, "SAVED_ORIENTATION_LOCK"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/journeyapps/barcodescanner/d;->c:I

    :cond_0
    if-eqz p1, :cond_6

    const-string p2, "SCAN_ORIENTATION_LOCKED"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/d;->t()V

    :cond_1
    const-string p2, "com.google.zxing.client.android.SCAN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p2, p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->initializeFromIntent(Landroid/content/Intent;)V

    :cond_2
    const-string p2, "BEEP_ENABLED"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/journeyapps/barcodescanner/d;->i:Lgd/e;

    invoke-virtual {p2, v1}, Lgd/e;->g(Z)V

    :cond_3
    const-string p2, "SHOW_MISSING_CAMERA_PERMISSION_DIALOG"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v2, "MISSING_CAMERA_PERMISSION_DIALOG_MESSAGE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/journeyapps/barcodescanner/d;->E(ZLjava/lang/String;)V

    :cond_4
    const-string p2, "TIMEOUT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/d;->j:Landroid/os/Handler;

    new-instance v3, Lcom/journeyapps/barcodescanner/b;

    invoke-direct {v3, p0}, Lcom/journeyapps/barcodescanner/b;-><init>(Lcom/journeyapps/barcodescanner/d;)V

    const-wide/16 v4, 0x0

    invoke-virtual {p1, p2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    const-string p2, "BARCODE_IMAGE_ENABLED"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->d:Z

    :cond_6
    return-void
.end method

.method protected t()V
    .locals 5

    iget v0, p0, Lcom/journeyapps/barcodescanner/d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_4

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v4

    :cond_4
    :goto_1
    iput v3, p0, Lcom/journeyapps/barcodescanner/d;->c:I

    :cond_5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/journeyapps/barcodescanner/d;->c:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public u()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/d;->g:Z

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->h:Lgd/h;

    invoke-virtual {v0}, Lgd/h;->d()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->h:Lgd/h;

    invoke-virtual {v0}, Lgd/h;->d()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pauseAndWait()V

    return-void
.end method

.method public w(I[Ljava/lang/String;[I)V
    .locals 0

    sget p2, Lcom/journeyapps/barcodescanner/d;->p:I

    if-ne p1, p2, :cond_2

    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/d;->b:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->resume()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->D()V

    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/d;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/d;->f:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/d;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/d;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/d;->z()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d;->h:Lgd/h;

    invoke-virtual {v0}, Lgd/h;->h()V

    return-void
.end method

.method public y(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SAVED_ORIENTATION_LOCK"

    iget v1, p0, Lcom/journeyapps/barcodescanner/d;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
