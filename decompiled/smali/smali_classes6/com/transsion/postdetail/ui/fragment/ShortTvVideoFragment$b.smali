.class public final Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$b;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;->initBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/ShortTvVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
