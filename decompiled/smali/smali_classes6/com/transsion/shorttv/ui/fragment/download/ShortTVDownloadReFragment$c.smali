.class public final Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->S0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

.field final synthetic b:Lqs/i;

.field final synthetic c:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Lqs/i;Lcom/transsion/shorttv/bean/Subject;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->b:Lqs/i;

    iput-object p3, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->c:Lcom/transsion/shorttv/bean/Subject;

    iput p4, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/Unit;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->O0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->p()Landroidx/lifecycle/b0;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/transsion/shorttv/bean/Subject;

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Subject;->isPaid()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->R0(I)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->S0()V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-static {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->P0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;)V

    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    invoke-virtual {p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;->r()Landroidx/lifecycle/b0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->M0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;J)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a:Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->b:Lqs/i;

    invoke-interface {v0}, Lqs/i;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->c:Lcom/transsion/shorttv/bean/Subject;

    iget v2, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->d:I

    invoke-static {p1, v0, v1, v2}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;->G0(Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment;Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/transsion/shorttv/ui/fragment/download/ShortTVDownloadReFragment$c;->a(Lkotlin/Unit;)V

    return-void
.end method
