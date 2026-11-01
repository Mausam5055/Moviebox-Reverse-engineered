.class public abstract Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lpy/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u001f\u0010\u001c\u001a\u00020\u00052\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0011\u0010\"\u001a\u0004\u0018\u00010!H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$H&\u00a2\u0006\u0004\u0008&\u0010\'J\'\u0010,\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&\u00a2\u0006\u0004\u0008,\u0010-J\'\u0010.\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&\u00a2\u0006\u0004\u0008.\u0010-J\'\u0010/\u001a\u00020\u00052\u0006\u0010%\u001a\u00020$2\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*H&\u00a2\u0006\u0004\u0008/\u0010-J\u000f\u00100\u001a\u00020\u000fH&\u00a2\u0006\u0004\u00080\u0010\u0011J\u0011\u00102\u001a\u0004\u0018\u000101H\u0016\u00a2\u0006\u0004\u00082\u00103R\u001a\u00107\u001a\u00020\u000f8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u0010\u0011R$\u0010=\u001a\u0004\u0018\u00010$8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010\'R\u001b\u0010A\u001a\u0002018DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u00103\u00a8\u0006B"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lpy/v;",
        "<init>",
        "()V",
        "",
        "u0",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "p0",
        "(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "t0",
        "(Landroid/view/LayoutInflater;)Lpy/v;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "",
        "isAudioShowNoNetworkLayout",
        "()Z",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "list",
        "D0",
        "(Ljava/util/List;)V",
        "hidden",
        "onHiddenChanged",
        "(Z)V",
        "Lhj/b;",
        "newLogViewConfig",
        "()Lhj/b;",
        "Lcom/transsnet/downloader/adapter/k;",
        "adapter",
        "o0",
        "(Lcom/transsnet/downloader/adapter/k;)V",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "B0",
        "(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V",
        "A0",
        "C0",
        "getPageName",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "q0",
        "()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "a",
        "Ljava/lang/String;",
        "getTAG",
        "TAG",
        "b",
        "Lcom/transsnet/downloader/adapter/k;",
        "r0",
        "()Lcom/transsnet/downloader/adapter/k;",
        "setMAdapter",
        "mAdapter",
        "c",
        "Lkotlin/Lazy;",
        "s0",
        "mViewModel",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/transsnet/downloader/adapter/k;

.field private final c:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadList_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->a:Ljava/lang/String;

    const-class v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->c:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic j0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->x0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->v0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->z0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic m0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->y0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->w0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final p0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final u0()V
    .locals 11

    new-instance v6, Lcom/transsnet/downloader/fragment/c0;

    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/c0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    sget-object v7, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v8, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v9, "getName(...)"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v10

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    new-instance v6, Lcom/transsnet/downloader/fragment/d0;

    invoke-direct {v6, p0}, Lcom/transsnet/downloader/fragment/d0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final v0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;)Lkotlin/Unit;
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    const-string v2, "LocalVideo-d"

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries()Z

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "observeEvent resourceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",readProgress: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isSeries: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->isSeries()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p0, Lcom/transsnet/downloader/fragment/DownloadedListFragment;

    if-eqz v0, :cond_2

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v2, v0, p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->N(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;ZILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    if-ltz v1, :cond_9

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    move-result v2

    :cond_3
    if-ge v1, v2, :cond_9

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v2, Llg/a;->a:Llg/a$a;

    const-string v3, "LocalVideo-d"

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "observeEvent index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getReadProgress()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    :cond_5
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    :cond_6
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/LocalVideoEvent;->getRefreshItemAll()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz p0, :cond_9

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final w0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;)Lkotlin/Unit;
    .locals 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move v3, v2

    :goto_2
    if-ltz v3, :cond_4

    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/transsnet/flow/event/sync/event/DownloadRefreshEvent;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ltz v2, :cond_7

    iget-object p0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_7
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final x0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/transsnet/downloader/adapter/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->B0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V

    return-void
.end method

.method private static final y0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/transsnet/downloader/adapter/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->A0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V

    return-void
.end method

.method private static final z0(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 4

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/transsnet/downloader/adapter/k;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->C0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract A0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
.end method

.method public abstract B0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
.end method

.method public abstract C0(Lcom/transsnet/downloader/adapter/k;Landroid/view/View;I)V
.end method

.method public D0(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getLogViewConfig()Lhj/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhj/b;->k(Z)V

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_1
    return-void
.end method

.method public abstract getPageName()Ljava/lang/String;
.end method

.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->t0(Landroid/view/LayoutInflater;)Lpy/v;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->u0()V

    return-void
.end method

.method public initViewData()V
    .locals 3

    new-instance v0, Lcom/transsnet/downloader/adapter/k;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->q0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/adapter/k;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)V

    new-instance v1, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$a;

    invoke-direct {v1}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment$a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->R0(Landroidx/recyclerview/widget/DiffUtil$e;)V

    new-instance v1, Lcom/transsnet/downloader/fragment/z;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/z;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->o0(Lcom/transsnet/downloader/adapter/k;)V

    new-instance v1, Lcom/transsnet/downloader/fragment/a0;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/a0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->s1(Lp6/b;)V

    new-instance v1, Lcom/transsnet/downloader/fragment/b0;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/b0;-><init>(Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->y1(Lp6/e;)V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lpy/v;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpy/v;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tn/lib/view/layoutmanager/NpaLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->p0(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lpy/w;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lpy/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_1
    return-void
.end method

.method public initViewModel()V
    .locals 0

    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newLogViewConfig()Lhj/b;
    .locals 5

    new-instance v0, Lhj/b;

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lhj/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public abstract o0(Lcom/transsnet/downloader/adapter/k;)V
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

.method public q0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final r0()Lcom/transsnet/downloader/adapter/k;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->b:Lcom/transsnet/downloader/adapter/k;

    return-object v0
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method

.method protected final s0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->c:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    return-object v0
.end method

.method public t0(Landroid/view/LayoutInflater;)Lpy/v;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lpy/v;->c(Landroid/view/LayoutInflater;)Lpy/v;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
