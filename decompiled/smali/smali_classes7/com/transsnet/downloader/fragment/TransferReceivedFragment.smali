.class public final Lcom/transsnet/downloader/fragment/TransferReceivedFragment;
.super Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\'\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006!"
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/TransferReceivedFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;",
        "<init>",
        "()V",
        "",
        "loadData",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "entity",
        "n1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "initViewModel",
        "bean",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "X0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V",
        "",
        "isShowTitleLayout",
        "getEmptyView",
        "(Z)Landroid/view/View;",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "p1",
        "()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;",
        "mTransferViewModel",
        "l",
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
.field public static final l:Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;


# instance fields
.field private final k:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->l:Lcom/transsnet/downloader/fragment/TransferReceivedFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;-><init>()V

    const-class v0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->k:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic i1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->o1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->q1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->s1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/TransferReceivedFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->r1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/TransferReceivedFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final loadData()V
    .locals 4

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->p1()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->i(Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic m1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->loadData()V

    return-void
.end method

.method private final n1(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$deleteItem$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$deleteItem$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final o1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;)Lkotlin/Unit;
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

.method private final p1()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    return-object v0
.end method

.method private static final q1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->D0(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final r1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/TransferReceivedFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 5

    const-string p3, "<unused var>"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "transfer_file_2_mb"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    const-string p1, "/download/transfer"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x2

    invoke-static {p1, p0, p4, p2, p4}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "delete"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->i:Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p3

    sget p5, Lcom/transsnet/downloader/R$string;->cancel:I

    invoke-virtual {p3, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p5

    sget v0, Lcom/transsnet/downloader/R$string;->delete:I

    invoke-virtual {p5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->download_delete_tips:I

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTitleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p5, v0, p4}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;

    move-result-object p0

    new-instance p3, Lcom/transsnet/downloader/fragment/r7;

    invoke-direct {p3, p2, p1}, Lcom/transsnet/downloader/fragment/r7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-virtual {p0, p3}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->s0(Lkotlin/jvm/functions/Function1;)V

    const-string p1, "confirm_Dialog"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final s1(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->n1(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 3

    const-string p3, "bean"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->h:Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;

    new-instance p3, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->download_transfer_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transfer_file_2_mb"

    invoke-direct {p3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$string;->delete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object v0, v1, p3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    move-result-object p2

    new-instance p3, Lcom/transsnet/downloader/fragment/q7;

    invoke-direct {p3, p2, p1, p0}, Lcom/transsnet/downloader/fragment/q7;-><init>(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/TransferReceivedFragment;)V

    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->t0(Lkotlin/jvm/functions/Function3;)V

    const-string p1, "DownloadMoreDialog"

    invoke-virtual {p2, p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public getEmptyView(Z)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->R0()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/tn/lib/view/StateView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->download_transfer_received_empty_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tn/lib/view/StateView;->showData(IIZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->download_empty_transfer_tips:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/downloader/fragment/p7;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/p7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->f1(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->R0()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "file_manager_tab_received"

    return-object v0
.end method

.method public initViewModel()V
    .locals 3

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->initViewModel()V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment;->p1()Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/TransferReceivedViewModel;->j()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/o7;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/o7;-><init>(Lcom/transsnet/downloader/fragment/TransferReceivedFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/TransferReceivedFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method
