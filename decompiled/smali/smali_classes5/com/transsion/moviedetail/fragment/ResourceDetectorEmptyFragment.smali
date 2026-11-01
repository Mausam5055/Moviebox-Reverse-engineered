.class public final Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;
.super Lcom/transsion/baseui/fragment/PageStatusFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/PageStatusFragment<",
        "Lcn/k;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 %2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;",
        "Lcom/transsion/baseui/fragment/PageStatusFragment;",
        "Lcn/k;",
        "<init>",
        "()V",
        "",
        "v0",
        "receiveArguments",
        "",
        "isMonitorNetworkState",
        "()Z",
        "isAudioShowNoNetworkLayout",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "p0",
        "(Landroid/view/LayoutInflater;)Lcn/k;",
        "",
        "getPageStateLayoutTitle",
        "()Ljava/lang/String;",
        "initViewData",
        "initViewModel",
        "initListener",
        "retryLoadData",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "a",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "mMovieDetailBean",
        "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "b",
        "Lkotlin/Lazy;",
        "o0",
        "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;",
        "movieDetailViewModel",
        "",
        "c",
        "Ljava/lang/Integer;",
        "count",
        "d",
        "MovieDetail_psRelease"
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
.field public static final d:Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$a;


# instance fields
.field private a:Lcom/transsion/moviedetailapi/bean/Subject;

.field private final b:Lkotlin/Lazy;

.field private c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->d:Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;-><init>()V

    const-class v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->t0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->r0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->q0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->s0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Lcom/transsion/publish/model/PostEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->u0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Lcom/transsion/publish/model/PostEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final o0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    return-object v0
.end method

.method private static final q0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetectors()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    sget-object v0, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;->e:Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment$a;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment$a;->a(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/ResourceDetectors;)Lcom/transsion/moviedetail/fragment/ResourceDetectorDialogFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "getChildFragmentManager(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ResourceDetectorEmptyFragment --> "

    invoke-virtual {p1, p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final r0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "/profile/user_center_labels_feedback"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "feedback_from_page"

    const-string v1, "SUBJECT_DETAIL"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "subject_id"

    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final s0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 1

    sget-object p1, Ltp/e;->a:Ltp/e;

    sget-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->DETAIL_NO_RES:Lcom/transsion/pushapi/NoticePermissionFrom;

    invoke-virtual {p1, p0, v0}, Ltp/e;->e(Landroidx/fragment/app/Fragment;Lcom/transsion/pushapi/NoticePermissionFrom;)Z

    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->v0()V

    return-void
.end method

.method private static final t0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "/profile/user_center_labels_feedback"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string v0, "feedback_from_page"

    const-string v1, "SUBJECT_DETAIL"

    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "subject_id"

    invoke-virtual {p1, v2, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v1, v0, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private static final u0(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;Lcom/transsion/publish/model/PostEntity;)Lkotlin/Unit;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/publish/model/PostEntity;->getSuccess()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Post request succeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1, v0}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->c:Ljava/lang/Integer;

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/publish/model/PostEntity;->getCount()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->c:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lcn/k;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcn/k;->e:Lcom/transsion/baseui/widget/ResourcesRequestView;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->c:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    invoke-virtual {p1, p0, v2}, Lcom/transsion/baseui/widget/ResourcesRequestView;->setCount(IZ)V

    goto :goto_1

    :cond_3
    sget-object p0, Llg/a;->a:Llg/a$a;

    const-string p1, "Submission fail"

    invoke-static {p0, p1, v2, v1, v0}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final v0()V
    .locals 5

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    sget v2, Lcom/transsion/moviedetail/R$id;->id_request_request:I

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->o0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const/4 v4, 0x2

    invoke-static {v0, v2, v1, v4, v3}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->W(Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->c:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/k;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/k;->e:Lcom/transsion/baseui/widget/ResourcesRequestView;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->c:Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2, v1, v4, v3}, Lcom/transsion/baseui/widget/ResourcesRequestView;->setCount$default(Lcom/transsion/baseui/widget/ResourcesRequestView;IZILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    neg-int v2, v2

    const/16 v3, 0x10

    invoke-virtual {v0, v3, v1, v2}, Lcom/tn/lib/widget/toast/core/h;->f(III)V

    sget v1, Lcom/transsion/baseui/R$string;->base_network_fail:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getPageStateLayoutTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->p0(Landroid/view/LayoutInflater;)Lcn/k;

    move-result-object p1

    return-object p1
.end method

.method public initListener()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/k;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/k;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/moviedetail/fragment/j0;

    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/j0;-><init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/k;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/k;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/transsion/moviedetail/fragment/k0;

    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/k0;-><init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/k;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcn/k;->e:Lcom/transsion/baseui/widget/ResourcesRequestView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baseui/widget/ResourcesRequestView;->getIvCenterView()Lcom/transsion/baseui/widget/DrawableCenterTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/transsion/moviedetail/fragment/l0;

    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/l0;-><init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lcn/k;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcn/k;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/moviedetail/fragment/m0;

    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/m0;-><init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public initViewData()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    const-string v3, "getString(...)"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getResourceDetectors()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lcom/transsion/moviedetail/R$string;->movie_detail_source:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/ResourceDetectors;->getSource()Ljava/lang/String;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v2

    check-cast v2, Lcn/k;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcn/k;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lcn/k;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcn/k;->e:Lcom/transsion/baseui/widget/ResourcesRequestView;

    if-eqz v1, :cond_1

    sget v2, Lcom/transsion/moviedetail/R$string;->movie_detail_coming_soon:I

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/baseui/widget/ResourcesRequestView;->set(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->o0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->V(Ljava/lang/String;Z)V

    return-void
.end method

.method public initViewModel()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->o0()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;->H()Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/transsion/moviedetail/fragment/i0;

    invoke-direct {v1, p0}, Lcom/transsion/moviedetail/fragment/i0;-><init>(Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;)V

    new-instance v2, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$b;

    invoke-direct {v2, v1}, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public isAudioShowNoNetworkLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMonitorNetworkState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p0(Landroid/view/LayoutInflater;)Lcn/k;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/k;->c(Landroid/view/LayoutInflater;)Lcn/k;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public receiveArguments()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "data_key_resource_detectors"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/transsion/moviedetailapi/bean/Subject;

    :cond_1
    iput-object v1, p0, Lcom/transsion/moviedetail/fragment/ResourceDetectorEmptyFragment;->a:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public retryLoadData()V
    .locals 0

    return-void
.end method
