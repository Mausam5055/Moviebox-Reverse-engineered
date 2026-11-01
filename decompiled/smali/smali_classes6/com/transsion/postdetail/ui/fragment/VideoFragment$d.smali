.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;
.super Lcom/transsion/postdetail/control/VideoPagerChangeControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;ZLcom/transsion/postdetail/ui/adapter/e;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-direct/range {p0 .. p7}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;-><init>(Landroidx/fragment/app/Fragment;ZLcom/transsion/postdetail/ui/adapter/e;Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/base/pager/PagerLayoutManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(IZLandroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/control/VideoPagerChangeControl;->f(IZLandroid/view/View;)V

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$isFromDownloaded$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getDownloadedShortsList$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getStartDownloadedIndex$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getStartDownloadedIndex$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_1

    :cond_1
    move p2, p3

    :goto_1
    if-lez p2, :cond_2

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$setHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Z)V

    sget p1, Lcom/transsion/postdetail/R$string;->shorts_view_online_content:I

    invoke-static {p1}, Lcom/transsion/baseui/util/m;->a(I)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    const-string p2, "postdetail_video"

    const-string p3, "online"

    invoke-virtual {p1, p2, p3}, Lcom/transsion/baselib/helper/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$d;->p:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {p1, p3}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$setHasShownOnlineToast$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;Z)V

    :cond_3
    :goto_2
    return-void
.end method
