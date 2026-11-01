.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Lqv/r;

.field private final b:I

.field final synthetic c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lqv/r;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->a:Lqv/r;

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getScreenWidth$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)I

    move-result p1

    iput p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->b:I

    return-void
.end method


# virtual methods
.method public a()Lqv/r;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->a:Lqv/r;

    return-object v0
.end method

.method public b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getDetailViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/tn/lib/pager/PagerLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getPagerLayoutManager$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/tn/lib/pager/PagerLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$showSettingDialog(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$setControlVisible(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V

    return-void
.end method

.method public f(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0, p1, p2}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$updateProgress(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;J)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$playVideo(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V

    return-void
.end method

.method public getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getData$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getTAG$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrPlayer()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$setClickPause$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;Z)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->b1(Z)V

    :cond_0
    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->b:I

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$c;->c:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$isLoading$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Z

    move-result v0

    return v0
.end method
