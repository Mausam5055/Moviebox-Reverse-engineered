.class public final Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;
.super Ljava/lang/Object;

# interfaces
.implements Lfo/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->Q1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

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

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->P0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/videofloat/bean/FloatActionType;)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V
    .locals 2

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->O0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->L0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lcom/transsion/player/longvideo/ui/LongVodUiType;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->I0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)Ltn/e;

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

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {v0}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->J0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f(Lgo/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-static {v0, p1}, Lcom/transsion/moviedetail/fragment/MovieDetailFragment;->M0(Lcom/transsion/moviedetail/fragment/MovieDetailFragment;Lgo/a;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/MovieDetailFragment$g;->a:Lcom/transsion/moviedetail/fragment/MovieDetailFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/h;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/h;->l:Landroidx/appcompat/widget/AppCompatImageView;

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
    .locals 0

    return-void
.end method
