.class public final Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;
.super Landroidx/recyclerview/widget/DiffUtil$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->v0()Landroidx/recyclerview/widget/DiffUtil$e;
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
.method public a(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z
    .locals 5

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;->a(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c;

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$a;->b(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/transsnet/downloader/ugc/adapter/c;Lcom/transsnet/downloader/ugc/adapter/c;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$c;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$c;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$c;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$b;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsnet/downloader/ugc/adapter/c$e;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/transsnet/downloader/ugc/adapter/c$e;

    invoke-virtual {p2}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
