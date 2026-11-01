.class Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker;->p()Landroidx/work/s$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker;


# direct methods
.method constructor <init>(Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->d:Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker;

    iput-object p2, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->b:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/transsion/tinker/lib/custom/download/PatchDownloadWorker$a;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
