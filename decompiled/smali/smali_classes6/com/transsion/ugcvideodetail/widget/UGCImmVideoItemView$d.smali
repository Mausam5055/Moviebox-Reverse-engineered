.class public final Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;
.super Ljava/lang/Object;

# interfaces
.implements Ltv/h$a;


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

.field final synthetic b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getViewBinding$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lqv/r;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->a:Lqv/r;

    return-void
.end method


# virtual methods
.method public a()Lqv/r;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->a:Lqv/r;

    return-object v0
.end method

.method public b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getDetailViewModel$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->hideLoading()V

    :cond_0
    return-void
.end method

.method public e()Ltv/n;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getSubtitleDelegate(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ltv/n;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/transsion/ugcvideodetail/hepler/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getDotLayer$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/hepler/a;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getData$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getTAG$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrPlayer()Lcom/transsion/player/orplayer/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getOrPlayer$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    return-object v0
.end method

.method public showLoading()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView$d;->b:Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;->access$getFragment$p(Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;)Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->startLoading()V

    :cond_0
    return-void
.end method
