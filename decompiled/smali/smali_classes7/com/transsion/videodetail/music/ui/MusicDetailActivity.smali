.class public final Lcom/transsion/videodetail/music/ui/MusicDetailActivity;
.super Lcom/transsion/videodetail/BaseDetailActivity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/videodetail/BaseDetailActivity<",
        "Lcn/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/videodetail/music/ui/MusicDetailActivity;",
        "Lcom/transsion/videodetail/BaseDetailActivity;",
        "Lcn/a;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "q0",
        "()Z",
        "J0",
        "()Lcn/a;",
        "t0",
        "VideoDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videodetail/BaseDetailActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public J0()Lcn/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcn/a;->c(Landroid/view/LayoutInflater;)Lcn/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/videodetail/music/ui/MusicDetailActivity;->J0()Lcn/a;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/videodetail/BaseDetailActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/transsion/baselib/report/l;->x(ILandroid/app/Activity;)V

    sget-object p1, Lkx/a;->a:Lkx/a;

    const-string v0, "MusicDetailActivity --> onCreate() --> \u97f3\u4e50\u8be6\u60c5\u9875\u5355\u72ec\u5904\u7406"

    invoke-virtual {p1, v0}, Lkx/a;->c(Ljava/lang/String;)V

    sget-object p1, Lox/c;->a:Lox/c;

    invoke-virtual {p1}, Lox/c;->a()V

    return-void
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0()V
    .locals 8

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->t0()V

    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->G0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MusicDetailFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/videodetail/BaseDetailActivity;->H0(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->G0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    const-string v2, "beginTransaction()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/videodetail/music/ui/MusicDetailFragment;->M:Lcom/transsion/videodetail/music/ui/MusicDetailFragment$a;

    invoke-virtual {v2}, Lcom/transsion/videodetail/music/ui/MusicDetailFragment$a;->a()Lcom/transsion/videodetail/music/ui/MusicDetailFragment;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "id"

    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ops"

    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "auto_download"

    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->k:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "auto_play"

    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->l:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "auto_play_resource_id"

    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "module_name"

    iget-object v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->n:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "yy_preload_id"

    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->o:I

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "season"

    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->p:I

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "episode"

    iget v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->q:I

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "is_music_liked_fragment"

    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->r:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "is_music_float_view_click"

    iget-boolean v5, p0, Lcom/transsion/videodetail/BaseDetailActivity;->s:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v4, Lkx/a;->a:Lkx/a;

    invoke-virtual {v2}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getClassTag()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/transsion/videodetail/BaseDetailActivity;->r:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " --> loadDefaultData() --> isMusicLikedFragment = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkx/a;->c(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v3, Lcom/transsion/moviedetail/R$id;->container:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {p0, v2}, Lcom/transsion/videodetail/BaseDetailActivity;->H0(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    :cond_0
    return-void
.end method
