.class Lnu/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnu/h;->q(Landroid/content/Context;Lou/d;Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lou/d;


# direct methods
.method constructor <init>(Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;Landroid/content/Context;Lou/d;)V
    .locals 0

    iput-object p1, p0, Lnu/h$a;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    iput-object p2, p0, Lnu/h$a;->b:Landroid/content/Context;

    iput-object p3, p0, Lnu/h$a;->c:Lou/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lou/d;Lou/c;)V
    .locals 0

    invoke-static {p0, p1}, Lnu/h$a;->d(Lou/d;Lou/c;)V

    return-void
.end method

.method private static synthetic d(Lou/d;Lou/c;)V
    .locals 1

    invoke-virtual {p0}, Lou/d;->f()Ljava/lang/String;

    move-result-object p0

    const-string v0, "guard_reject"

    invoke-interface {p1, p0, v0}, Lou/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 1

    iget-object v0, p0, Lnu/h$a;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->a(JJ)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 4

    invoke-static {}, Lnu/h;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "download_fail"

    :goto_0
    iget-object v1, p0, Lnu/h$a;->b:Landroid/content/Context;

    sget-object v2, Lcom/transsion/tinker/lib/custom/api/PatchState;->NONE:Lcom/transsion/tinker/lib/custom/api/PatchState;

    iget-object v3, p0, Lnu/h$a;->c:Lou/d;

    invoke-virtual {v3}, Lou/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lvu/a;->d()V

    iget-object v1, p0, Lnu/h$a;->b:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnu/h$a;->c:Lou/d;

    invoke-virtual {v3}, Lou/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WARN"

    const-string v3, "Tinker.HotfixHelper"

    invoke-static {v1, v2, v3, v0}, Luu/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnu/h$a;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lnu/h;->g()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnu/h$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lnu/h$a;->c:Lou/d;

    invoke-static {v1, v2, v0}, Lsu/a;->a(Landroid/content/Context;Lou/d;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lnu/h$a;->b:Landroid/content/Context;

    sget-object v0, Lcom/transsion/tinker/lib/custom/api/PatchState;->BLACKLISTED:Lcom/transsion/tinker/lib/custom/api/PatchState;

    iget-object v1, p0, Lnu/h$a;->c:Lou/d;

    invoke-virtual {v1}, Lou/d;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "guard_reject"

    invoke-static {p1, v0, v1, v2}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lnu/h$a;->c:Lou/d;

    new-instance v0, Lnu/g;

    invoke-direct {v0, p1}, Lnu/g;-><init>(Lou/d;)V

    invoke-static {v0}, Lnu/h;->h(Lnu/h$f;)V

    iget-object p1, p0, Lnu/h$a;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "patch guard reject"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->b(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lnu/h$a;->b:Landroid/content/Context;

    sget-object v1, Lcom/transsion/tinker/lib/custom/api/PatchState;->READY:Lcom/transsion/tinker/lib/custom/api/PatchState;

    iget-object v2, p0, Lnu/h$a;->c:Lou/d;

    invoke-virtual {v2}, Lou/d;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyu/a;->o(Landroid/content/Context;Lcom/transsion/tinker/lib/custom/api/PatchState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnu/h$a;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download ok, triggering install: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnu/h$a;->c:Lou/d;

    invoke-virtual {v2}, Lou/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INFO"

    const-string v3, "Tinker.HotfixHelper"

    invoke-static {v0, v2, v3, v1}, Luu/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnu/h$a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->i(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lnu/h$a;->a:Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/transsion/tinker/lib/custom/download/DownloadManager$a;->onSuccess(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
