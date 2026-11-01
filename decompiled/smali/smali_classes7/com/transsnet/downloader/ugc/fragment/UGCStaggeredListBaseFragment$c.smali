.class public final Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->initExposureHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 8

    :try_start_0
    iget-object p4, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;

    invoke-virtual {p4}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_6

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    instance-of v0, p4, Lcom/transsnet/downloader/ugc/adapter/c$e;

    if-eqz v0, :cond_2

    check-cast p4, Lcom/transsnet/downloader/ugc/adapter/c$e;

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, p1

    goto :goto_2

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_3

    return-void

    :cond_3
    invoke-virtual {p4}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->t0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;

    invoke-static {v1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->t0(Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/transsnet/downloader/ugc/util/e;->a:Lcom/transsnet/downloader/ugc/util/e;

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;

    invoke-virtual {v0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/transsnet/downloader/ugc/adapter/c$e;->a()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    move v5, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/transsnet/downloader/ugc/util/e;->a(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    :goto_1
    return-void

    :goto_2
    sget-object v0, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment$c;->a:Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v2, "exposure error"

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Llg/a$a;->k(Llg/a$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    :goto_3
    return-void
.end method
