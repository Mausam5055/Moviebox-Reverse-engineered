.class public final Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;
.super Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \"2\u00020\u0001:\u0001#B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u001b\u0010!\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;",
        "Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;",
        "",
        "ops",
        "<init>",
        "(Ljava/lang/String;)V",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "item",
        "",
        "n0",
        "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "b",
        "Ljava/lang/String;",
        "getOps",
        "()Ljava/lang/String;",
        "Lms/c;",
        "c",
        "Lms/c;",
        "binding",
        "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
        "d",
        "Lkotlin/Lazy;",
        "k0",
        "()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
        "viewModel",
        "e",
        "a",
        "shortTvLib_release"
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
.field public static final e:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lms/c;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->e:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_dialog_episode_list:I

    invoke-direct {p0, v0}, Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->b:Ljava/lang/String;

    const-class p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$1;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$2;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, p1, v0, v1}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic i0(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/ui/adapter/r;Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->m0(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/ui/adapter/r;Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic j0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->l0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Landroid/view/View;)V

    return-void
.end method

.method private final k0()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    return-object v0
.end method

.method private static final l0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static final m0(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/ui/adapter/r;Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p7}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/ranges/IntRange;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object p5, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p5, Lkotlin/ranges/IntRange;

    invoke-virtual {p5}, Lkotlin/ranges/IntProgression;->f()I

    move-result p5

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->f()I

    move-result p6

    if-ne p5, p6, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/r;->E1(Lkotlin/ranges/IntRange;)V

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->f()I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p3

    iget-object p5, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p5, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p5}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/w;->l()V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->p:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;

    invoke-virtual {p2, p0}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;->a(Lkotlin/ranges/IntRange;)Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    move-result-object p2

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p3

    iget-object p5, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p5, Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p5}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p3

    sget p5, Lcom/transsion/shorttv/R$id;->content_container:I

    invoke-virtual {p0}, Lkotlin/ranges/IntProgression;->f()I

    move-result p6

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p5, p2, p6}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/w;->l()V

    :goto_0
    const-string p3, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShotTvDialogListFragment"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    iput-object p2, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final n0(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->k0()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getEp()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->c0(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "onCreateDialog(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lcom/transsion/shorttv/R$style;->ShortTvBottomDialogTheme:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    :cond_0
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lms/c;->a(Landroid/view/View;)Lms/c;

    move-result-object p1

    iget-object p2, p1, Lms/c;->c:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/dialog/c;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/dialog/c;-><init>(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->k0()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0x32

    if-le p2, v1, :cond_3

    iget-object p2, p1, Lms/c;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lyr/b;->e(Landroid/view/View;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->k0()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->s()Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->k0()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/transsion/shorttv_pugc/utils/ShortTvExtKt;->s(IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntRange;

    invoke-virtual {v2, v1}, Lkotlin/ranges/IntRange;->o(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v2, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->p:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lkotlin/ranges/IntRange;

    invoke-virtual {v2, v3}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;->a(Lkotlin/ranges/IntRange;)Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    move-result-object v2

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v2, Lcom/transsion/shorttv_pugc/ui/adapter/r;

    iget-object v3, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lkotlin/ranges/IntRange;

    invoke-direct {v2, v3}, Lcom/transsion/shorttv_pugc/ui/adapter/r;-><init>(Lkotlin/ranges/IntRange;)V

    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    new-instance v3, Lcom/transsion/shorttv_pugc/ui/dialog/d;

    move-object v5, v3

    move-object v8, v2

    move-object v9, p0

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/transsion/shorttv_pugc/ui/dialog/d;-><init>(Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/ui/adapter/r;Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p2

    sget v2, Lcom/transsion/shorttv/R$id;->content_container:I

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v0, v1}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/w;->l()V

    goto :goto_2

    :cond_3
    iget-object p2, p1, Lms/c;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "tabsRv"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lyr/b;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p2

    sget v2, Lcom/transsion/shorttv/R$id;->content_container:I

    sget-object v3, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->p:Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;

    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-direct {v4, v0, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment$a;->a(Lkotlin/ranges/IntRange;)Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/w;->l()V

    :goto_2
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvEpisodeListDialog;->c:Lms/c;

    return-void
.end method
