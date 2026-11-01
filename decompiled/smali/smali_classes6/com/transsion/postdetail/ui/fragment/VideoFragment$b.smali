.class public final Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;
.super Landroidx/activity/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/VideoFragment;->initBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/u;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-static {v0}, Lcom/transsion/postdetail/ui/fragment/VideoFragment;->access$getNeedBackToRoom$p(Lcom/transsion/postdetail/ui/fragment/VideoFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Laq/h;->a:Laq/h;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Laq/h;->i(Laq/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ui/fragment/VideoFragment$b;->a:Lcom/transsion/postdetail/ui/fragment/VideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
