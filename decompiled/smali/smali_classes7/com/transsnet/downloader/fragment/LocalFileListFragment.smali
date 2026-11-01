.class public final Lcom/transsnet/downloader/fragment/LocalFileListFragment;
.super Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0007\u0018\u0000 ,2\u00020\u0001:\u0001-B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0019\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0003J\'\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u0017\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\"\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R.\u0010+\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0017 (*\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\'0\'0&8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/transsnet/downloader/fragment/LocalFileListFragment;",
        "Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;",
        "<init>",
        "()V",
        "",
        "loadData",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "entity",
        "p1",
        "(Lcom/transsion/baselib/db/download/DownloadBean;)V",
        "initViewModel",
        "bean",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "X0",
        "(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V",
        "onStart",
        "",
        "isShowTitleLayout",
        "getEmptyView",
        "(Z)Landroid/view/View;",
        "",
        "getPageName",
        "()Ljava/lang/String;",
        "Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "r1",
        "()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;",
        "mLocalFileViewModel",
        "l",
        "Z",
        "isRequestPermission",
        "m",
        "Landroid/view/View;",
        "mNoPermissionEmptyView",
        "Landroidx/activity/result/b;",
        "",
        "kotlin.jvm.PlatformType",
        "n",
        "Landroidx/activity/result/b;",
        "requestMultiplePermission",
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
.field public static final o:Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;


# instance fields
.field private final k:Lkotlin/Lazy;

.field private l:Z

.field private m:Landroid/view/View;

.field private final n:Landroidx/activity/result/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->o:Lcom/transsnet/downloader/fragment/LocalFileListFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;-><init>()V

    const-class v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/LocalFileListFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/LocalFileListFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->k:Lkotlin/Lazy;

    new-instance v0, Lf/h;

    invoke-direct {v0}, Lf/h;-><init>()V

    new-instance v1, Lcom/transsnet/downloader/fragment/x6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/x6;-><init>(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    const-string v1, "registerForActivityResult(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->n:Landroidx/activity/result/b;

    return-void
.end method

.method public static synthetic i1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->q1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/LocalFileListFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->u1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/LocalFileListFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->w1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic l1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->v1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final loadData()V
    .locals 4

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->r1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->k(Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic m1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->t1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->s1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->loadData()V

    return-void
.end method

.method private final p1(Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v3, Lcom/transsnet/downloader/fragment/LocalFileListFragment$deleteItem$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p0, v2}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$deleteItem$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final q1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/viewmodel/a0;->p(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->l:Z

    invoke-virtual {v1}, Lcom/transsnet/downloader/viewmodel/a0;->x()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->n:Landroidx/activity/result/b;

    sget-object v0, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    invoke-virtual {v0}, Lcom/transsion/baselib/helper/e;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final r1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    return-object v0
.end method

.method private static final s1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->D0(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final t1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)Lkotlin/Unit;
    .locals 4

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadListBaseFragment;->r0()Lcom/transsnet/downloader/adapter/k;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final u1(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/LocalFileListFragment;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
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

    new-instance p3, Lcom/transsnet/downloader/fragment/c7;

    invoke-direct {p3, p2, p1}, Lcom/transsnet/downloader/fragment/c7;-><init>(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-virtual {p0, p3}, Lcom/transsnet/downloader/dialog/DownloadConfirmDialog;->s0(Lkotlin/jvm/functions/Function1;)V

    const-string p1, "confirm_Dialog"

    invoke-virtual {p0, p2, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final v1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->p1(Lcom/transsion/baselib/db/download/DownloadBean;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final w1(Lcom/transsnet/downloader/fragment/LocalFileListFragment;Ljava/util/Map;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/transsion/baselib/helper/e;->a:Lcom/transsion/baselib/helper/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/baselib/helper/e;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->loadData()V

    :cond_0
    return-void
.end method


# virtual methods
.method public X0(Lcom/transsion/baselib/db/download/DownloadBean;Landroid/view/View;I)V
    .locals 2

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

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog$a;->a(Ljava/util/List;)Lcom/transsnet/downloader/dialog/DownloadMoreDialog;

    move-result-object p2

    new-instance p3, Lcom/transsnet/downloader/fragment/b7;

    invoke-direct {p3, p2, p1, p0}, Lcom/transsnet/downloader/fragment/b7;-><init>(Lcom/transsnet/downloader/dialog/DownloadMoreDialog;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/fragment/LocalFileListFragment;)V

    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/dialog/DownloadMoreDialog;->t0(Lkotlin/jvm/functions/Function3;)V

    const-string p1, "DownloadMoreDialog"

    invoke-virtual {p2, p0, p1}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return-void
.end method

.method public getEmptyView(Z)Landroid/view/View;
    .locals 7

    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->R0()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getEmptyView(Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->f1(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->R0()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->m:Landroid/view/View;

    if-nez p1, :cond_2

    new-instance p1, Lcom/tn/lib/view/StateView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/tn/lib/view/StateView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/tn/lib/widget/R$mipmap;->ic_no_permission:I

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->updateNoContentResId(I)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsnet/downloader/R$string;->download_file_permission_tips:I

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

    sget v1, Lcom/transsnet/downloader/R$string;->download_no_permission_btn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->setReTryTxt(Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/downloader/fragment/a7;

    invoke-direct {v0, p0}, Lcom/transsnet/downloader/fragment/a7;-><init>(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)V

    invoke-virtual {p1, v0}, Lcom/tn/lib/view/StateView;->retry(Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->m:Landroid/view/View;

    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->m:Landroid/view/View;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "file_manager_tab_local_files"

    return-object v0
.end method

.method public initViewModel()V
    .locals 3

    invoke-super {p0}, Lcom/transsnet/downloader/fragment/DownloadedBaseFragment;->initViewModel()V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->r1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;->i()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/y6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/y6;-><init>(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/LocalFileListFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->r1()Lcom/transsnet/downloader/viewmodel/LocalFileViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/MediaBaseViewModel;->e()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/z6;

    invoke-direct {v1, p0}, Lcom/transsnet/downloader/fragment/z6;-><init>(Lcom/transsnet/downloader/fragment/LocalFileListFragment;)V

    new-instance v2, Lcom/transsnet/downloader/fragment/LocalFileListFragment$b;

    invoke-direct {v2, v1}, Lcom/transsnet/downloader/fragment/LocalFileListFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    iget-boolean v0, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->l:Z

    invoke-direct {p0}, Lcom/transsnet/downloader/fragment/LocalFileListFragment;->loadData()V

    :cond_0
    return-void
.end method
