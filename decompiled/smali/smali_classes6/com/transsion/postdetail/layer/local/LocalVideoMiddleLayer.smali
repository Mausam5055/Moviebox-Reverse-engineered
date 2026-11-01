.class public final Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;
.super Lcom/transsion/postdetail/layer/local/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$a;
    }
.end annotation


# static fields
.field public static final k0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$a;


# instance fields
.field private final b0:Landroidx/fragment/app/Fragment;

.field private c0:Lso/b0;

.field private d0:Lcom/transsion/postdetail/layer/local/w0;

.field private e0:J

.field private f0:Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;

.field private g0:Ltn/e;

.field private h0:Z

.field private i0:Z

.field private j0:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->k0:Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method private final A3()Lcom/transsion/postdetail/layer/local/w0;
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->d0:Lcom/transsion/postdetail/layer/local/w0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->U:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/layer/local/w0;

    invoke-static {v0}, Lso/a0;->a(Landroid/view/View;)Lso/a0;

    move-result-object v0

    const-string v2, "bind(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/transsion/postdetail/layer/local/w0;-><init>(Lso/a0;)V

    iput-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->d0:Lcom/transsion/postdetail/layer/local/w0;

    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->d0:Lcom/transsion/postdetail/layer/local/w0;

    return-object v0
.end method

.method private final B3()Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;
    .locals 9

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->j0:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    new-instance v4, Lcom/transsion/postdetail/layer/local/b1;

    invoke-direct {v4, p0}, Lcom/transsion/postdetail/layer/local/b1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    new-instance v5, Lcom/transsion/postdetail/layer/local/c1;

    invoke-direct {v5, p0}, Lcom/transsion/postdetail/layer/local/c1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const-string v2, "LocalVideoBackInterstitialV2Scene"

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->j0:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    :cond_0
    return-object v0
.end method

.method private static final C3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Landroid/app/Activity;
    .locals 2

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static final D3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lkotlin/Unit;
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lso/b0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/layer/local/d1;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/d1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final E3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->J3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZILjava/lang/Object;)V

    return-void
.end method

.method private final F3()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->y:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/postdetail/layer/local/x0;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/x0;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final G3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->M3(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->T0()Lcom/transsnet/downloader/manager/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsnet/downloader/manager/g;->G(Lcom/transsion/baselib/db/download/DownloadBean;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    sget p1, Lcom/transsion/baseui/R$string;->base_network_fail:I

    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->M3(Z)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->T0()Lcom/transsnet/downloader/manager/g;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsnet/downloader/manager/g;->k(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final H3()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "LocalVideoMiddleSeriesList"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;->n0(Z)V

    :cond_0
    return-void
.end method

.method private final I3(Z)V
    .locals 2

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$b;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/videofloat/bean/FloatActionType;->BACK:Lcom/transsion/videofloat/bean/FloatActionType;

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->e(Lcom/transsion/videofloat/bean/FloatActionType;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lso/b0;->v:Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;->destroy()V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic J3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->I3(Z)V

    return-void
.end method

.method private final K3()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->B3()Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->q(Ljava/lang/String;)V

    return-void
.end method

.method private final L3(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/layer/local/a0;->r2(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    return-void
.end method

.method private final M3(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lso/b0;->z:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    sget v1, Lcom/transsion/postdetail/R$string;->download_playing_downloading_tips:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lso/b0;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    sget v1, Lcom/transsion/postdetail/R$string;->download_playing_pause:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lso/b0;->z:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    sget v1, Lcom/transsion/postdetail/R$string;->download_playing_pause_tips:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lso/b0;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    sget v1, Lcom/transsion/postdetail/R$string;->download_playing_resume:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private final N3()V
    .locals 14

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lso/b0;->m:Lcom/transsion/publish/view/PublishStateView;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-nez v1, :cond_0

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_0
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v10, v3

    goto :goto_1

    :cond_1
    move-object v10, v1

    :goto_1
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v9, v3

    goto :goto_2

    :cond_2
    move-object v9, v0

    :goto_2
    const/16 v12, 0x1e

    const/4 v13, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    invoke-static/range {v2 .. v13}, Lcom/transsion/publish/view/PublishStateView;->publishSource$default(Lcom/transsion/publish/view/PublishStateView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private final O3(Ljava/lang/String;)V
    .locals 5

    sget-object p1, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const-string v0, "LocalVideoBackInterstitialV2Scene"

    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/a;->k(Ljava/lang/String;)I

    move-result p1

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "show_LocalVideoBackInterstitialV2Scene_timestamp"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const v1, 0xea60

    mul-int/2addr p1, v1

    int-to-long v1, p1

    cmp-long p1, v3, v1

    if-gez p1, :cond_1

    sget-object p1, Lii/b;->a:Lii/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lso/b0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/postdetail/layer/local/a1;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/layer/local/a1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->R3()V

    return-void
.end method

.method private static final P3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->J3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZILjava/lang/Object;)V

    return-void
.end method

.method private final Q3(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/b0;->d:Landroid/widget/FrameLayout;

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

.method private final R3()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->B3()Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getGenre()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->r(Ljava/lang/String;)V

    return-void
.end method

.method private final S3()V
    .locals 3

    sget-object v0, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;->i:Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment$a;

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment$a;->a()Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->e1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;->r0(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/postdetail/layer/local/e1;

    invoke-direct {v1, p0}, Lcom/transsion/postdetail/layer/local/e1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;->s0(Lkotlin/jvm/functions/Function2;)V

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    sget v2, Lcom/transsion/postdetail/R$id;->fl_series_list_container:I

    invoke-virtual {v0, v1, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;->t0(Landroidx/fragment/app/Fragment;I)V

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->f0:Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;

    return-void
.end method

.method private static final T3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/baselib/db/download/DownloadBean;I)Lkotlin/Unit;
    .locals 0

    const-string p2, "bean"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->L3(Lcom/transsion/baselib/db/download/DownloadBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final U3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->L3(Lcom/transsion/baselib/db/download/DownloadBean;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final V3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->S3()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic o3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->V3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->P3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    return-void
.end method

.method public static synthetic q3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->E3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    return-void
.end method

.method public static synthetic r3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->U3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/baselib/db/download/DownloadBean;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->T3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/baselib/db/download/DownloadBean;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->C3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->G3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic v3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->D3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic w3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->j0:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    return-object p0
.end method

.method public static final synthetic x3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)Lso/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    return-object p0
.end method

.method private final y3(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->A3()Lcom/transsion/postdetail/layer/local/w0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/local/w0;->d(Z)V

    :cond_0
    const/16 p2, 0x2710

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->e0:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lkotlin/ranges/RangesKt;->j(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->e0:J

    int-to-long p1, p2

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->e0:J

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_2
    return-void
.end method

.method static synthetic z3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->y3(ZZ)V

    return-void
.end method


# virtual methods
.method public A0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->L:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected B0(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->B0(Lcom/transsion/moviedetailapi/bean/Subject;)V

    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->h0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->h0:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$bindMovieDetail$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer$bindMovieDetail$1;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;Lcom/transsion/moviedetailapi/bean/Subject;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/transsion/moviedetailapi/bean/Subject;->setOps(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    invoke-static {p1}, Lxn/a;->a(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object p1

    :cond_4
    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<get-TAG>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerSubjectRes()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindMovieDetail, isInnerVideo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    new-instance v13, Ltn/e;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v2, :cond_6

    iget-object v4, v2, Lso/b0;->r:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-object v5, v4

    goto :goto_2

    :cond_6
    move-object v5, v1

    :goto_2
    if-eqz v2, :cond_7

    iget-object v1, v2, Lso/b0;->u:Landroidx/viewpager2/widget/ViewPager2;

    :cond_7
    move-object v6, v1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerSubjectRes()Z

    move-result v1

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_3
    xor-int/lit8 v9, v1, 0x1

    const/16 v11, 0x80

    const/4 v12, 0x0

    const-string v7, "local_video_detail"

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v2, v13

    move-object v4, p1

    invoke-direct/range {v2 .. v12}, Ltn/e;-><init>(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetailapi/bean/Subject;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v13, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->g0:Ltn/e;

    new-instance v2, Ltn/g;

    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    sget v4, Lcom/transsion/postdetail/R$id;->subjectDetailLayout:I

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerSubjectRes()Z

    move-result v1

    goto :goto_4

    :cond_9
    move v1, v0

    :goto_4
    xor-int/lit8 v9, v1, 0x1

    const-string v6, "local_video_detail"

    const-string v7, "download_subject"

    const/4 v8, 0x1

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Ltn/g;-><init>(Landroidx/fragment/app/Fragment;ILcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->Q3(Z)V

    return-void
.end method

.method public C0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D0()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->J:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public E(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 10

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->E(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const-string v1, "<get-TAG>(...)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownloadCallback, success  resourceId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cur resourceId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lso/b0;->e:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_8

    invoke-static {p1}, Ljg/c;->g(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->i0:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDownloadCallback, refresh  epse = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-boolean v3, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->i0:Z

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->h(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_5
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lso/b0;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lso/b0;->y:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_7
    invoke-direct {p0, v3}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->M3(Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method public E0()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public F0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->Q:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public G0()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->D:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public H0()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->B:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public I0()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->K:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public N2()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->g:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public O0()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->k:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public O2()Landroid/widget/ImageView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public P1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->l:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public P2()Landroid/widget/ProgressBar;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Q0()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->G:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Q2()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public R2()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public S2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public T2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->H:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public U2()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->i:Landroidx/appcompat/widget/LinearLayoutCompat;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public V1()V
    .locals 1

    const-string v0, "onBackClick"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->O3(Ljava/lang/String;)V

    return-void
.end method

.method public V2()Lcom/avery/subtitle/widget/SimpleSubtitleView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->I:Lcom/avery/subtitle/widget/SimpleSubtitleView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public W2()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public X2()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->E:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Y2()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->F:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public Z2()Landroidx/constraintlayout/widget/Group;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->M:Landroidx/constraintlayout/widget/Group;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 9

    const-string v0, "uiType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->j(Z)V

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->g0:Ltn/e;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v3, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-eq p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Ltn/e;->x(Z)V

    :cond_1
    sget-object v1, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne p1, v1, :cond_4

    sget-object v3, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v4

    const-string v5, "<get-TAG>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v5, "onLocalUiChanged 2 middle"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/BaseLayer;->H()Lcom/transsion/player/orplayer/g;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FIT:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {v3, v4}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_2
    iget-object v3, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v3

    const-string v4, "getInsetsController(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->z0()V

    :cond_4
    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "middle, onLocalUiChanged uiType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "long_video_play"

    invoke-virtual {v3, v5, v4, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v1, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/layer/local/a0;->T1(Z)V

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->a(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    return-void
.end method

.method public a3()Lcom/transsion/postdetail/layer/local/LocalUiType;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    return-object v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/postdetail/layer/local/a0;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->I3(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    return-void
.end method

.method public f(ZLjava/lang/String;)V
    .locals 0

    const-string p1, "requestKey"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public f2()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->N:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g2()Landroid/view/ViewGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v2

    const-string p1, "<get-TAG>(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "initSeries"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->S0()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->h(Lcom/transsion/baselib/db/download/DownloadBean;)V

    return-void
.end method

.method public h2()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h3()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i2()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isVisible()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/b0;->T:Landroid/view/View;

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

.method public j1()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j3()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->S:Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "pageFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->k(Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;Z)V

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isInnerRes()Z

    move-result v0

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/b0;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->T0()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsnet/downloader/manager/g;->A(Lcom/transsion/baselib/db/download/DownloadBean;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lso/b0;->y:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->M3(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lso/b0;->e:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_4
    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, ".mp3"

    invoke-static {v1, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-ne v1, p2, :cond_5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/layer/local/a0;->s2(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->N3()V

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lso/b0;->v:Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;->updateDownloadBean(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_6
    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->o1()Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    move-result-object p2

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v1, v0

    :goto_2
    invoke-virtual {p2, v1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_9

    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p2, :cond_9

    iget-object p3, p2, Lso/b0;->v:Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;

    if-eqz p3, :cond_9

    if-eqz p2, :cond_8

    iget-object v0, p2, Lso/b0;->t:Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;

    :cond_8
    iget-object p2, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->b0:Landroidx/fragment/app/Fragment;

    invoke-static {p2}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p2

    invoke-virtual {p3, p1, v0, p2}, Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;->init(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;Landroidx/lifecycle/LifecycleCoroutineScope;)V

    new-instance p1, Lcom/transsion/postdetail/layer/local/y0;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/y0;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    invoke-virtual {p3, p1}, Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;->setItemClickCallback(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Lcom/transsion/postdetail/layer/local/z0;

    invoke-direct {p1, p0}, Lcom/transsion/postdetail/layer/local/z0;-><init>(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;)V

    invoke-virtual {p3, p1}, Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;->setAllListClickCallback(Lkotlin/jvm/functions/Function0;)V

    :cond_9
    return-void
.end method

.method public k2()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->C:Landroidx/appcompat/widget/AppCompatTextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public k3()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->R:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m(Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->m(Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->LAND:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->Y1()V

    :cond_0
    return-void
.end method

.method public m3()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->V:Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n2()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public n3()Landroid/view/ViewStub;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->W:Landroid/view/ViewStub;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onBackPressed()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->m1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v2, "middle onBackPressed"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->f0:Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;->m0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->f0:Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;->o0(Lcom/transsion/postdetail/ui/fragment/LocalVideoMiddleSeriesListFragment;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onBackPressed"

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->O3(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/postdetail/layer/local/a0;->onProgress(JLao/e;)V

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->isVisible()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->e0:J

    sget-object p3, Lcom/transsion/postdetail/layer/local/i0;->v:Lcom/transsion/postdetail/layer/local/i0$a;

    invoke-virtual {p3}, Lcom/transsion/postdetail/layer/local/i0$a;->a()Lcom/transsion/postdetail/layer/local/i0;

    move-result-object p3

    invoke-virtual {p0}, Lcom/transsion/postdetail/layer/local/a0;->n1()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/transsion/postdetail/layer/local/i0;->t(JJ)V

    return-void
.end method

.method public p2()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->O:Landroidx/appcompat/widget/AppCompatImageView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->o:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public q2()Lcom/tn/lib/view/SecondariesSeekBar;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->P:Lcom/tn/lib/view/SecondariesSeekBar;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public r(Landroid/view/View;Lcom/transsion/postdetail/layer/local/LocalUiType;)V
    .locals 1

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/postdetail/layer/local/LocalUiType;->MIDDLE:Lcom/transsion/postdetail/layer/local/LocalUiType;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lso/b0;->a(Landroid/view/View;)Lso/b0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    invoke-super {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->r(Landroid/view/View;Lcom/transsion/postdetail/layer/local/LocalUiType;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lso/b0;->j:Landroid/view/View;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->Q3(Z)V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->F3()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->H3()V

    invoke-direct {p0}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->K3()V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lso/b0;->m:Lcom/transsion/publish/view/PublishStateView;

    if-eqz p1, :cond_2

    sget p2, Lcom/tn/lib/widget/R$mipmap;->libui_ic_base_whit_publish:I

    invoke-virtual {p1, p2}, Lcom/transsion/publish/view/PublishStateView;->setImageResource(I)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->b3(Z)V

    return-void
.end method

.method public r1()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->n:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public s1(Landroid/view/MotionEvent;Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lso/b0;->T:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ltz v1, :cond_1

    if-gt v1, p2, :cond_1

    invoke-static {p0, v0, v0, v3, v2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->z3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    mul-int/2addr p2, v3

    if-le v1, p2, :cond_2

    const/4 p1, 0x1

    invoke-static {p0, p1, v0, v3, v2}, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->z3(Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;ZZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, v0}, Lcom/transsion/postdetail/layer/local/a0;->s1(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, v0}, Lcom/transsion/postdetail/layer/local/a0;->s1(Landroid/view/MotionEvent;Z)V

    :goto_0
    return-void
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resourceId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/postdetail/layer/local/LocalVideoMiddleLayer;->c0:Lso/b0;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lso/b0;->v:Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/view/LocalVideoMiddleHeaderView;->getDownloadBean(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/layer/local/a0;->r2(Lcom/transsion/baselib/db/download/DownloadBean;Z)V

    :cond_0
    return-void
.end method

.method public v(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/postdetail/layer/local/a0;->v(Z)V

    return-void
.end method
