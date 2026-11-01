.class public final Lcom/transsion/videodetail/StreamDetailFragment$h;
.super Ljava/lang/Object;

# interfaces
.implements Lfo/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/videodetail/StreamDetailFragment;->l2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/videodetail/StreamDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/videodetail/StreamDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->K0(Lcom/transsion/videodetail/StreamDetailFragment;)V

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->R0(Lcom/transsion/videodetail/StreamDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->S0(Lcom/transsion/videodetail/StreamDetailFragment;)Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/videodetail/VideoDetailViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-static {v0, v1}, Lcom/transsion/videodetail/StreamDetailFragment;->M0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->R0(Lcom/transsion/videodetail/StreamDetailFragment;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/transsion/videofloat/bean/FloatActionType;)Z
    .locals 1

    const-string v0, "actionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->X0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/videofloat/bean/FloatActionType;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 2

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->W0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->T0(Lcom/transsion/videodetail/StreamDetailFragment;Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->O0(Lcom/transsion/videodetail/StreamDetailFragment;)Ltn/e;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/transsion/player/longvideo/ui/LongVodUiType;->MIDDLE:Lcom/transsion/player/longvideo/ui/LongVodUiType;

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Ltn/e;->x(Z)V

    :cond_1
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->P0(Lcom/transsion/videodetail/StreamDetailFragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lgo/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/videodetail/StreamDetailFragment;->U0(Lcom/transsion/videodetail/StreamDetailFragment;Lgo/a;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Ljx/i;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ljx/i;->l:Landroidx/appcompat/widget/AppCompatImageView;

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
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->S0(Lcom/transsion/videodetail/StreamDetailFragment;)Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/videodetail/VideoDetailViewModel;->y()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public onCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/StreamDetailFragment$h;->a:Lcom/transsion/videodetail/StreamDetailFragment;

    invoke-static {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->K0(Lcom/transsion/videodetail/StreamDetailFragment;)V

    return-void
.end method
