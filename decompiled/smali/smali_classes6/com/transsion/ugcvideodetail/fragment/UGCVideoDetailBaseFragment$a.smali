.class public final Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment$a;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->initViewData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment$a;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment$a;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->r0()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment$a;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->y0()Lfo/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment$a;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->y0()Lfo/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lfo/a;->onBackPressed()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment$a;->a:Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
