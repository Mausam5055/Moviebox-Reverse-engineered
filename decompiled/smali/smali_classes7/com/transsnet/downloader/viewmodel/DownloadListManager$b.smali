.class public final Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadListManager;->P(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsnet/downloader/viewmodel/DownloadListManager;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/DownloadListManager;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;->d:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;->d:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Q()Landroidx/lifecycle/b0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url download, get config failure, liveData is null = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "downloadAna"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;->d:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Q()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/bean/DownloadUrlBean;

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;->e(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V

    return-void
.end method

.method public e(Lcom/transsnet/downloader/bean/DownloadUrlBean;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;->d:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Q()Landroidx/lifecycle/b0;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url download, get config success, liveData is null = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "downloadAna"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadListManager$b;->d:Lcom/transsnet/downloader/viewmodel/DownloadListManager;

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadListManager;->Q()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
