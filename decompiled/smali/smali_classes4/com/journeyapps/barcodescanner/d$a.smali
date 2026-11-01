.class Lcom/journeyapps/barcodescanner/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lxe/a;


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

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/journeyapps/barcodescanner/d$a;Lxe/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/d$a;->d(Lxe/c;)V

    return-void
.end method

.method private synthetic d(Lxe/c;)V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/d;->B(Lxe/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public b(Lxe/c;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->d(Lcom/journeyapps/barcodescanner/d;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->pause()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->e(Lcom/journeyapps/barcodescanner/d;)Lgd/e;

    move-result-object v0

    invoke-virtual {v0}, Lgd/e;->f()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/d$a;->a:Lcom/journeyapps/barcodescanner/d;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/d;->f(Lcom/journeyapps/barcodescanner/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/journeyapps/barcodescanner/c;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/c;-><init>(Lcom/journeyapps/barcodescanner/d$a;Lxe/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
