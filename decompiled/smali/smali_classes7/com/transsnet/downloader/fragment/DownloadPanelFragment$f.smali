.class public final Lcom/transsnet/downloader/fragment/DownloadPanelFragment$f;
.super Landroidx/recyclerview/widget/DiffUtil$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadPanelFragment;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln6/a;Ln6/a;)Z
    .locals 4

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ln6/a;

    check-cast p2, Ln6/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$f;->a(Ln6/a;Ln6/a;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ln6/a;

    check-cast p2, Ln6/a;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadPanelFragment$f;->b(Ln6/a;Ln6/a;)Z

    move-result p1

    return p1
.end method

.method public b(Ln6/a;Ln6/a;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
