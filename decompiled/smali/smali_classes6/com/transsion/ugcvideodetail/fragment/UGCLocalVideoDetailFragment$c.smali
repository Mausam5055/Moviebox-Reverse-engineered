.class public final Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lfo/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->m1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->Z0(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/transsion/videofloat/bean/FloatActionType;)Z
    .locals 1

    const-string v0, "actionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->V0(Lcom/transsion/videofloat/bean/FloatActionType;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 1

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->O0(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    sget-object v0, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->s0()Lcom/transsion/ugcvideodetail/hepler/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/e;->s(Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->m0()V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/i;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lqv/i;->n:Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/widget/UGCVideoDetailPlayListView;->pauseAnimatedImageSpans(Z)V

    :cond_2
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Lgo/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-virtual {v0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->o0(Lgo/a;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lqv/i;->i:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lfo/a$b$a;->a(Lfo/a$b;Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$c;->a:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->Z0(Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;)V

    return-void
.end method
