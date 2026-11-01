.class public final Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lzm/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/moviedetailapi/DownloadItem;

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Lcom/transsion/moviedetail/adapter/p;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;ILcom/transsion/moviedetailapi/DownloadItem;Ljava/util/List;Lcom/transsion/moviedetail/adapter/p;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    iput p2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->b:I

    iput-object p3, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    iput-object p4, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->e:Lcom/transsion/moviedetail/adapter/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-static {p0, p1}, Lzm/a$a;->f(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public b(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-static {p0, p1}, Lzm/a$a;->d(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public c(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-static {p0, p1}, Lzm/a$a;->g(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public d(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-static {p0, p1}, Lzm/a$a;->e(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public e()V
    .locals 5

    invoke-static {p0}, Lzm/a$a;->c(Lzm/a;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    iget v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->b:I

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    iget-object v3, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->d:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getTotalEpisode()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;->C0(Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;ILcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/Integer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Lcom/transsion/memberapi/MemberCheckResult;)V
    .locals 0

    invoke-static {p0, p1}, Lzm/a$a;->a(Lzm/a;Lcom/transsion/memberapi/MemberCheckResult;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 7

    const-string v0, "errorMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lzm/a$a;->b(Lzm/a;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResourceDetectorFragment --> immediateShowList() --> \u5355\u96c6\u591a\u5206\u8fa8\u7387 --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "co_mem"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget v0, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, v0}, Luh/b$a;->d(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->a:Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->e:Lcom/transsion/moviedetail/adapter/p;

    invoke-virtual {v1}, Lcom/transsion/moviedetail/adapter/p;->D1()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->isSeries()Z

    move-result v1

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->c:Lcom/transsion/moviedetailapi/DownloadItem;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorFragment$b;->e:Lcom/transsion/moviedetail/adapter/p;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object p1

    const/4 v2, 0x0

    const-string v3, "subjectdetail"

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/transsnet/downloader/DownloadManagerApi;->y0(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
