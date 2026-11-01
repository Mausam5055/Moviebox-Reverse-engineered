.class public final Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Lqv/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u001e\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0016\u001a\u0004\u0008\u001c\u0010\u001dR\u0018\u0010\"\u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R0\u0010+\u001a\u0010\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u0005\u0018\u00010#8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R*\u00103\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010,8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u00064"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Lqv/h;",
        "<init>",
        "()V",
        "",
        "d0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "c0",
        "(Landroid/view/LayoutInflater;)Lqv/h;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initData",
        "initListener",
        "lazyLoadData",
        "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "getViewModel",
        "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "viewModel",
        "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "b",
        "b0",
        "()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "subtitleViewModel",
        "Lcom/transsion/ugcvideodetail/adapter/e;",
        "c",
        "Lcom/transsion/ugcvideodetail/adapter/e;",
        "subtitleAdapter",
        "Lkotlin/Function1;",
        "Leu/a;",
        "d",
        "Lkotlin/jvm/functions/Function1;",
        "getOnSubtitleSelected",
        "()Lkotlin/jvm/functions/Function1;",
        "g0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onSubtitleSelected",
        "Lkotlin/Function0;",
        "e",
        "Lkotlin/jvm/functions/Function0;",
        "getOnBackClick",
        "()Lkotlin/jvm/functions/Function0;",
        "f0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onBackClick",
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
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private c:Lcom/transsion/ugcvideodetail/adapter/e;

.field private d:Lkotlin/jvm/functions/Function1;

.field private e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    const-class v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->a:Lkotlin/Lazy;

    const-class v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$3;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$4;

    invoke-direct {v2, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a0(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->e0(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final b0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    return-object v0
.end method

.method private final d0()V
    .locals 6

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v1

    check-cast v1, Lqv/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lqv/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->b0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->c()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leu/a;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leu/a;

    invoke-virtual {v4}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getId()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, -0x1

    :goto_2
    new-instance v1, Lcom/transsion/ugcvideodetail/adapter/e;

    invoke-direct {v1, v0}, Lcom/transsion/ugcvideodetail/adapter/e;-><init>(Ljava/util/List;)V

    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Lcom/transsion/ugcvideodetail/adapter/e;->D1(I)V

    :cond_5
    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/e0;

    invoke-direct {v2, v0, p0}, Lcom/transsion/ugcvideodetail/fragment/e0;-><init>(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;)V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->c:Lcom/transsion/ugcvideodetail/adapter/e;

    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lqv/h;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lqv/h;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->c:Lcom/transsion/ugcvideodetail/adapter/e;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_6
    return-void
.end method

.method private static final e0(Ljava/util/List;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 3

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p2, Lcom/transsion/ugcvideodetail/adapter/e;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/transsion/ugcvideodetail/adapter/e;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p4}, Lcom/transsion/ugcvideodetail/adapter/e;->D1(I)V

    :cond_1
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leu/a;

    sget-object p2, Lhj/i;->a:Lhj/i;

    const-string p3, "dialog_name"

    const-string p4, "half_screen"

    invoke-static {p3, p4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const-string p4, "module_name"

    const-string v0, "subtitle"

    invoke-static {p4, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p4

    invoke-virtual {p0}, Leu/a;->b()Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;->getLanName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p4, v1, p3

    const/4 p3, 0x2

    aput-object v0, v1, p3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p3

    const-string p4, "/ugc_video/immersive_detail"

    invoke-virtual {p2, p4, p3}, Lhj/i;->p(Ljava/lang/String;Ljava/util/Map;)V

    iget-object p2, p1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->d:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_2

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->e:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public c0(Landroid/view/LayoutInflater;)Lqv/h;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lqv/h;->c(Landroid/view/LayoutInflater;)Lqv/h;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final g0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lg4/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->c0(Landroid/view/LayoutInflater;)Lqv/h;

    move-result-object p1

    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public initListener()V
    .locals 0

    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingSubtitleFragment;->d0()V

    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    return-void
.end method
