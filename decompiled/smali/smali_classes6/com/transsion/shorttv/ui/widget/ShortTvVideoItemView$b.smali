.class public final Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

.field final synthetic b:Lqs/i;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Lqs/i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->b:Lqs/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/Unit;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$setLoading(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Z)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l0()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->l0()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getMShortTvViewModel$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->H0()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayer$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/orplayer/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getOrPlayerView$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    invoke-static {v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$getData$p(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;)Ljs/e;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->updateShortTvInfo(Lcom/transsion/player/orplayer/g;Lcom/transsion/player/ui/ORPlayerView;Ljs/e;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a:Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->b:Lqs/i;

    invoke-interface {v0}, Lqs/i;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;->access$callPayMethod(Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$b;->a(Lkotlin/Unit;)V

    return-void
.end method
