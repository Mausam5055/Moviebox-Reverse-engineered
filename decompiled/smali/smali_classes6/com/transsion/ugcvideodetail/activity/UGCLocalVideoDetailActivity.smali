.class public final Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;

# interfaces
.implements Lcom/transsion/videofloat/manager/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Lqv/a;",
        ">;",
        "Lcom/transsion/videofloat/manager/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00082\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0014J\u000f\u0010\u001d\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001aJ\u000f\u0010\u001f\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001aJ\u000f\u0010 \u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008 \u0010\u001aJ\u000f\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008$\u0010\u0005J\u000f\u0010%\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0005J\u000f\u0010&\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0005J\u000f\u0010\'\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\'\u0010\u0005R\u0018\u0010*\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0018\u0010+\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010)R\u0018\u0010/\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010)R\u0018\u00101\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010)R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00108\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Lqv/a;",
        "Lcom/transsion/videofloat/manager/c;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "category",
        "G0",
        "(Ljava/lang/String;)V",
        "F0",
        "()Lqv/a;",
        "t0",
        "retryLoadData",
        "getPageName",
        "()Ljava/lang/String;",
        "onPause",
        "onDestroy",
        "j",
        "",
        "isMusicFloatingAttach",
        "()Z",
        "isChangeStatusBar",
        "i0",
        "r0",
        "q0",
        "isTranslucent",
        "isStatusDark",
        "",
        "statusColor",
        "()I",
        "o0",
        "p0",
        "n0",
        "s0",
        "i",
        "Ljava/lang/String;",
        "videoId",
        "resourceId",
        "k",
        "type",
        "l",
        "previousPageVideoId",
        "m",
        "previousPageTrackId",
        "Landroidx/fragment/app/Fragment;",
        "n",
        "Landroidx/fragment/app/Fragment;",
        "mFragment",
        "o",
        "Z",
        "hasHandledActivityLimit",
        "UGCVideoDetail_psRelease"
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


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field private n:Landroidx/fragment/app/Fragment;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public F0()Lqv/a;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lqv/a;->c(Landroid/view/LayoutInflater;)Lqv/a;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->MUSIC:Lcom/transsion/ugcvideodetail/api/UGCVideoType;

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/UGCVideoType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    sget-object v1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v1, p1, p0}, Lcom/transsion/baselib/report/l;->x(ILandroid/app/Activity;)V

    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->o:Z

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "/ugc_video/local_detail"

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lg4/a;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->F0()Lqv/a;

    move-result-object v0

    return-object v0
.end method

.method public i0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMusicFloatingAttach()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->L0()V

    :cond_1
    return-void
.end method

.method public n0()V
    .locals 0

    return-void
.end method

.method public o0()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseNewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->j()V

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0, p0}, Lox/e;->i(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/fragment/UGCVideoDetailBaseFragment;->L0()V

    :cond_1
    return-void
.end method

.method public p0()V
    .locals 0

    return-void
.end method

.method public q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public retryLoadData()V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->z0()V

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->x0()V

    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->s0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->B0()V

    :goto_0
    return-void
.end method

.method public s0()V
    .locals 0

    return-void
.end method

.method public statusColor()I
    .locals 1

    sget v0, Lcom/tn/lib/widget/R$color;->black:I

    return v0
.end method

.method public t0()V
    .locals 10

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "VideoDetailFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    const-string v2, "beginTransaction()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;->u:Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$a;

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment$a;->a()Lcom/transsion/ugcvideodetail/fragment/UGCLocalVideoDetailFragment;

    move-result-object v2

    const-string v3, "id"

    iget-object v4, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const-string v4, "resource_id"

    iget-object v5, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->j:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "ugcCategory"

    iget-object v6, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->k:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const-string v6, "parent_video_id"

    iget-object v7, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->l:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v7, "parent_track_id"

    iget-object v8, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->m:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Lkotlin/Pair;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v4, v8, v3

    const/4 v3, 0x2

    aput-object v5, v8, v3

    const/4 v3, 0x3

    aput-object v6, v8, v3

    const/4 v3, 0x4

    aput-object v7, v8, v3

    invoke-static {v8}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget v3, Lcom/transsion/ugcvideodetail/R$id;->container:I

    invoke-virtual {v0, v3, v2, v1}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    iput-object v2, p0, Lcom/transsion/ugcvideodetail/activity/UGCLocalVideoDetailActivity;->n:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    :cond_0
    return-void
.end method
