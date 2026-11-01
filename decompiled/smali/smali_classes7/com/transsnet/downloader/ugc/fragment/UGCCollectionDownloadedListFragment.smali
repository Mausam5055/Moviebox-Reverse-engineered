.class public final Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;
.super Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\r\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00072\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0003J\u000f\u0010\u000c\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0003J\'\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010$\u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010!R\u0016\u0010\'\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;",
        "Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;",
        "<init>",
        "()V",
        "",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "list",
        "",
        "u1",
        "(Ljava/util/List;)V",
        "t1",
        "G0",
        "loadData",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "initViewModel",
        "Lcom/transsnet/downloader/ugc/adapter/c;",
        "item",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "U0",
        "(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V",
        "bean",
        "S0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V",
        "",
        "E0",
        "()Ljava/lang/String;",
        "l",
        "Ljava/lang/String;",
        "collectionId",
        "m",
        "subjectId",
        "n",
        "I",
        "parentPosition",
        "o",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final o:Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$a;


# instance fields
.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->o:Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->n:I

    return-void
.end method

.method private final G0()V
    .locals 11

    new-instance v6, Lcom/transsnet/downloader/ugc/fragment/c;

    invoke-direct {v6, p0}, Lcom/transsnet/downloader/ugc/fragment/c;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V

    sget-object v7, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v8, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lmy/a;

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

    new-instance v6, Lcom/transsnet/downloader/ugc/fragment/d;

    invoke-direct {v6, p0}, Lcom/transsnet/downloader/ugc/fragment/d;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V

    invoke-virtual {v7, v8}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v1, Lmy/g;

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

.method public static synthetic k1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Lmy/g;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->q1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Lmy/g;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->s1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final loadData()V
    .locals 2

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->m0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->n0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic m1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Lmy/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->p1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Lmy/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->r1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->loadData()V

    return-void
.end method

.method private static final p1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Lmy/a;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->loadData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final q1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Lmy/g;)Lkotlin/Unit;
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsnet/downloader/ugc/adapter/c;

    instance-of v4, v3, Lcom/transsnet/downloader/ugc/adapter/c$b;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/transsnet/downloader/ugc/adapter/c$b;

    invoke-virtual {v4}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lmy/g;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v3, Lcom/transsnet/downloader/ugc/adapter/c$b;

    invoke-virtual {v3}, Lcom/transsnet/downloader/ugc/adapter/c$b;->b()Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmy/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p1}, Lmy/g;->b()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->g1(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->u1(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s1(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)Lkotlin/Unit;
    .locals 3

    const-string v0, "/download/transfer"

    invoke-static {v0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final t1()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->I()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    move-object v5, v1

    goto :goto_0

    :cond_2
    move-object v5, v3

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v5}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/16 v4, 0xe

    if-eq v2, v4, :cond_5

    move-object v3, v1

    :cond_6
    check-cast v3, Lcom/transsion/baselib/db/download/DownloadBean;

    if-nez v3, :cond_7

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->l:Ljava/lang/String;

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    :cond_8
    move-object v8, v1

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v4

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x1f04

    const/16 v19, 0x0

    const/4 v7, 0x0

    const-string v10, "/download/ugc_collection_list"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v4 .. v19}, Lcom/transsnet/downloader/DownloadManagerApi;->g0(Lcom/transsnet/downloader/DownloadManagerApi;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private final u1(Ljava/util/List;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/transsnet/downloader/ugc/adapter/c$a;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/ugc/adapter/c$a;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/transsnet/downloader/ugc/adapter/c$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/ugc/adapter/c$b;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    sget-object p1, Lcom/transsnet/downloader/ugc/adapter/c$d;->a:Lcom/transsnet/downloader/ugc/adapter/c$d;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->D0()Lcom/transsnet/downloader/ugc/adapter/UGCDownloadStaggeredAdapter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public E0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsnet/downloader/api/DownloadPageType;->DOWNLOAD:Lcom/transsnet/downloader/api/DownloadPageType;

    invoke-virtual {v0}, Lcom/transsnet/downloader/api/DownloadPageType;->getPageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 2

    const-string v0, "bean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    new-instance v0, Lcom/transsnet/downloader/popup/PopupManager;

    invoke-direct {v0, p3, p1}, Lcom/transsnet/downloader/popup/PopupManager;-><init>(ILcom/transsion/baselib/db/download/DownloadBean;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p2, p1}, Lcom/transsnet/downloader/popup/PopupManager;->J(Landroid/view/View;I)V

    new-instance p1, Lcom/transsnet/downloader/ugc/fragment/b;

    invoke-direct {p1, p0}, Lcom/transsnet/downloader/ugc/fragment/b;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->C(Lkotlin/jvm/functions/Function0;)V

    new-instance p1, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$b;

    invoke-direct {p1, p0}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$b;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/popup/PopupManager;->B(Lcom/transsnet/downloader/adapter/u0$b;)V

    return-void
.end method

.method protected U0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/transsnet/downloader/ugc/adapter/c$a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->t1()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->U0(Lcom/transsnet/downloader/ugc/adapter/c;Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public initViewModel()V
    .locals 3

    invoke-super {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->initViewModel()V

    invoke-virtual {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->x0()Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->I()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/ugc/fragment/a;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/ugc/fragment/a;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;)V

    new-instance v2, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$c;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->G0()V

    invoke-direct {p0}, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->loadData()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ugc_sub"

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/ugc/fragment/UGCStaggeredListBaseFragment;->c1(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "collection_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->l:Ljava/lang/String;

    const-string v0, "subject_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->m:Ljava/lang/String;

    const-string v0, "extra_parent_position"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCCollectionDownloadedListFragment;->n:I

    :cond_0
    return-void
.end method
