.class public Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;
.super Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0011\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R.\u0010\u0018\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0014 \u0015*\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u00130\u00130\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;",
        "Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;",
        "<init>",
        "()V",
        "",
        "l1",
        "initViewData",
        "onStart",
        "",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Landroid/view/View;",
        "getLoadingView",
        "()Landroid/view/View;",
        "i",
        "Z",
        "isRequestPermission",
        "Landroidx/activity/result/b;",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "j",
        "Landroidx/activity/result/b;",
        "requestMultiplePermission",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private i:Z

.field private final j:Landroidx/activity/result/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;-><init>()V

    new-instance v0, Lf/h;

    invoke-direct {v0}, Lf/h;-><init>()V

    new-instance v1, Lcom/transsnet/downloader/fragment/u6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/u6;-><init>(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->j:Landroidx/activity/result/b;

    return-void
.end method

.method public static synthetic i1(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->k1(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic j1(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->m1(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final k1(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;Ljava/util/Map;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/helper/e;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->showLoadingView()V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->G0()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->N()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->l1()V

    :goto_0
    return-void
.end method

.method private final l1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$layout;->fragment_no_permission_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$id;->btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/transsnet/downloader/fragment/v6;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/v6;-><init>(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->Y0(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final m1(Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/viewmodel/a0;->p(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->i:Z

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/a0;->x()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->j:Landroidx/activity/result/b;

    sget-object p1, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    invoke-virtual {p1}, Lcom/transsion/baselib/helper/e;->a()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getLoadingView()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$layout;->adapter_empty_local_file_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initViewData()V
    .locals 1

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->initViewData()V

    sget-object v0, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->l1()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->logResume()V

    :cond_1
    :goto_0
    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/transsion/baseui/activity/k;->h(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;->i:Z

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->G0()Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->N()V

    :cond_0
    return-void
.end method
