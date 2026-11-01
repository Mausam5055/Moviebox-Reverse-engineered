.class public final Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;
.super Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u001aB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\nJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;",
        "Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;",
        "<init>",
        "()V",
        "",
        "receiveArguments",
        "initViewData",
        "initViewModel",
        "",
        "getEmptyDescText",
        "()Ljava/lang/String;",
        "",
        "T0",
        "()Z",
        "getPageName",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "k",
        "Ljava/lang/String;",
        "tabName",
        "",
        "l",
        "I",
        "tabIndex",
        "m",
        "a",
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


# static fields
.field public static final m:Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$a;


# instance fields
.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->m:Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileBaseFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->k:Ljava/lang/String;

    return-void
.end method

.method public static synthetic n1(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->p1(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic o1(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->q1(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private static final p1(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->V0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private static final q1(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->l:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->Y0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;II)V

    return-void
.end method


# virtual methods
.method public T0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getEmptyDescText()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/transsnet/downloader/R$string;->download_no_local_file_tips_2:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->k:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file_manager_tab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initViewData()V
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/s;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lpy/s;->d:Lcom/tn/lib/view/TitleLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->h0()Lr6/f;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr6/f;->z(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/s;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lpy/s;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v1, Lcom/transsnet/downloader/adapter/a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->T0()Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/transsnet/downloader/adapter/a;-><init>(Z)V

    new-instance v2, Lcom/transsnet/downloader/fragment/d7;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/d7;-><init>(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    sget v2, Lcom/transsnet/downloader/R$id;->ivTopRightCornerPoint:I

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->l([I)V

    new-instance v2, Lcom/transsnet/downloader/fragment/e7;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/e7;-><init>(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lp6/b;)V

    invoke-virtual {p0, v1}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->b1(Lcom/transsnet/downloader/adapter/a;)V

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/AllHistoricalPlayRecordFragment;->F0()Lcom/transsnet/downloader/adapter/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$b;

    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$b;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    :cond_2
    return-void
.end method

.method public initViewModel()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1;-><init>(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public receiveArguments()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->receiveArguments()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_download_out_file_tab_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "extra_position"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;->l:I

    return-void
.end method
