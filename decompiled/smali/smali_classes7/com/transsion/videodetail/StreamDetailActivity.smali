.class public final Lcom/transsion/videodetail/StreamDetailActivity;
.super Lcom/transsion/videodetail/BaseDetailActivity;

# interfaces
.implements Lcom/transsion/videofloat/manager/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/videodetail/StreamDetailActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/videodetail/BaseDetailActivity<",
        "Lcn/a;",
        ">;",
        "Lcom/transsion/videofloat/manager/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0005J\u000f\u0010\u000c\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0014\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/transsion/videodetail/StreamDetailActivity;",
        "Lcom/transsion/videodetail/BaseDetailActivity;",
        "Lcn/a;",
        "Lcom/transsion/videofloat/manager/c;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "s0",
        "retryLoadData",
        "J0",
        "()Lcn/a;",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "onResume",
        "onPause",
        "j",
        "",
        "isChangeStatusBar",
        "()Z",
        "isShowMemberPushViewTip",
        "",
        "u",
        "J",
        "tsEnter",
        "v",
        "a",
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


# static fields
.field public static final v:Lcom/transsion/videodetail/StreamDetailActivity$a;


# instance fields
.field public u:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/videodetail/StreamDetailActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/videodetail/StreamDetailActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/videodetail/StreamDetailActivity;->v:Lcom/transsion/videodetail/StreamDetailActivity$a;

    return-void
.end method

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

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "subjectdetail"

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/videodetail/StreamDetailActivity;->J0()Lcn/a;

    move-result-object v0

    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowMemberPushViewTip()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->G0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/videodetail/StreamDetailFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/videodetail/StreamDetailFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->Y1()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/transsion/videodetail/BaseDetailActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p0}, Lcom/transsion/baselib/report/l;->x(ILandroid/app/Activity;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->G0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/videodetail/StreamDetailFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/videodetail/StreamDetailFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/videodetail/StreamDetailFragment;->Y1()V

    :cond_1
    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lox/e;->i(Landroidx/fragment/app/FragmentActivity;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onResume()V

    return-void
.end method

.method public retryLoadData()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->z0()V

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->x0()V

    invoke-virtual {p0}, Lcom/transsion/videodetail/StreamDetailActivity;->s0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->B0()V

    :goto_0
    return-void
.end method

.method public s0()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/videodetail/BaseDetailActivity;->G0()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "VideoDetailFragment"

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

    sget-object v2, Lcom/transsion/videodetail/StreamDetailFragment;->T:Lcom/transsion/videodetail/StreamDetailFragment$a;

    invoke-virtual {v2}, Lcom/transsion/videodetail/StreamDetailFragment$a;->a()Lcom/transsion/videodetail/StreamDetailFragment;

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

    const-string v4, "ts_enter"

    iget-wide v5, p0, Lcom/transsion/videodetail/StreamDetailActivity;->u:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v3, Lcom/transsion/moviedetail/R$id;->container:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {p0, v2}, Lcom/transsion/videodetail/BaseDetailActivity;->H0(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    :cond_0
    return-void
.end method
