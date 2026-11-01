.class public final Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;
.super Ljava/lang/Object;

# interfaces
.implements Lfo/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->z2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->K0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->U0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->V0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-static {v0, v1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->M0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->U0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/transsion/videofloat/bean/FloatActionType;)Z
    .locals 1

    const-string v0, "actionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 2

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->X0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljx/f;->o:Lcom/transsion/videodetail/music/widget/MusicDetailListOperateView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/transsion/videodetail/music/bean/MusicStateEnum;->CLOSE:Lcom/transsion/videodetail/music/bean/MusicStateEnum;

    invoke-virtual {v0, v1}, Lcom/transsion/videodetail/music/widget/MusicDetailListOperateView;->setState(Lcom/transsion/videodetail/music/bean/MusicStateEnum;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->O0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Ltn/e;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-eq p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ltn/e;->x(Z)V

    :cond_2
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->R0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lgo/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->Y0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;Lgo/a;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/f;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ljx/f;->k:Landroidx/appcompat/widget/AppCompatImageView;

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

    iget-object v0, p0, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$g;->a:Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->K0(Lcom/transsion/videodetail/music/ui/MusicDetailFragment;)V

    return-void
.end method
