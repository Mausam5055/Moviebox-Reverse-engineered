.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/transsion/postdetail/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;->b:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;->b:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$isFromDownloaded$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;->b:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getMPagerChangeControl$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/postdetail/control/VideoPagerChangeControl;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->h()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;->b:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {v1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getMAdapter$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Lcom/transsion/postdetail/ui/adapter/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_2

    if-nez p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;->a:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iput-wide p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$e;->a:J

    sget p1, Lcom/transsion/postdetail/R$string;->shorts_no_more_downloaded:I

    invoke-static {p1}, Lcom/transsion/baseui/util/m;->e(I)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "postdetail_video"

    const-string v0, "offline"

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
