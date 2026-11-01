.class public final Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;
.super Lcom/tn/lib/dialog/BaseDialog;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;",
        "Lcom/tn/lib/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onResume",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "Ljx/a;",
        "a",
        "Ljx/a;",
        "dramaDialogEpisodeListBinding",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "b",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "gridLayoutManager",
        "Lcom/transsion/videodetail/adapter/b;",
        "c",
        "Lcom/transsion/videodetail/adapter/b;",
        "adapter",
        "Lcom/transsion/videodetail/VideoDetailViewModel;",
        "d",
        "Lkotlin/Lazy;",
        "d0",
        "()Lcom/transsion/videodetail/VideoDetailViewModel;",
        "videoDetailViewModel",
        "",
        "e",
        "J",
        "lastClickTime",
        "VideoDetail_psRelease"
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
.field private a:Ljx/a;

.field private b:Landroidx/recyclerview/widget/GridLayoutManager;

.field private c:Lcom/transsion/videodetail/adapter/b;

.field private final d:Lkotlin/Lazy;

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 3

    sget v0, Lcom/transsion/videodetail/R$layout;->dialog_episode:I

    invoke-direct {p0, v0}, Lcom/tn/lib/dialog/BaseDialog;-><init>(I)V

    const-class v0, Lcom/transsion/videodetail/VideoDetailViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->g0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->h0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->e0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->f0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method private final d0()Lcom/transsion/videodetail/VideoDetailViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/videodetail/VideoDetailViewModel;

    return-object v0
.end method

.method private static final e0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method private static final f0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/adapter/b;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->e:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->e:J

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3e8

    cmp-long p2, p2, v0

    if-lez p2, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->e:J

    invoke-direct {p0}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->d0()Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object p2

    invoke-virtual {p1, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->f0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/videodetail/bean/VideoDetailMediaSource;

    invoke-virtual {p2, p1}, Lcom/transsion/videodetail/VideoDetailViewModel;->C(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method private static final g0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Ljava/util/List;)Lkotlin/Unit;
    .locals 3

    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->a:Ljx/a;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ljx/a;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_0
    if-nez p1, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->a:Ljx/a;

    if-eqz v0, :cond_3

    iget-object v0, v0, Ljx/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/high16 v2, 0x43d70000    # 430.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->c:Lcom/transsion/videodetail/adapter/b;

    if-eqz p0, :cond_4

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q(Ljava/util/Collection;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h0(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->c:Lcom/transsion/videodetail/adapter/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/adapter/b;->H1(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    sget v0, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance p1, Lcom/google/android/material/bottomsheet/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/baseui/R$style;->BottomDialogTheme:I

    invoke-direct {p1, v0, v1}, Lcom/google/android/material/bottomsheet/c;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/c;->k()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U0(I)V

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/c;->k()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T0(Z)V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/tn/lib/dialog/BaseDialog;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Ljx/a;->a(Landroid/view/View;)Ljx/a;

    move-result-object p1

    iget-object p2, p1, Ljx/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/transsion/videodetail/x0;

    invoke-direct {v0, p0}, Lcom/transsion/videodetail/x0;-><init>(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Ljx/a;->c:Landroid/widget/ProgressBar;

    const-string v0, "pbLoading"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    iget-object p2, p1, Ljx/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/videodetail/adapter/c;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/transsion/videodetail/adapter/c;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object p2, p1, Ljx/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->b:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p1, Ljx/a;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/videodetail/adapter/b;

    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v1

    const/4 v2, 0x0

    sget v3, Lcom/transsion/videodetail/R$layout;->item_video_detail_sel_dialog_episode:I

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/videodetail/adapter/b;-><init>(IZI)V

    iput-object v0, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->c:Lcom/transsion/videodetail/adapter/b;

    new-instance v1, Lcom/transsion/videodetail/y0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/videodetail/y0;-><init>(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;Lcom/transsion/videodetail/adapter/b;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object p1, p0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->a:Ljx/a;

    invoke-direct {p0}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->d0()Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/videodetail/VideoDetailViewModel;->s()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/videodetail/z0;

    invoke-direct {p2, p0}, Lcom/transsion/videodetail/z0;-><init>(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;)V

    new-instance v0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$a;

    invoke-direct {v0, p2}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    invoke-direct {p0}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;->d0()Lcom/transsion/videodetail/VideoDetailViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/videodetail/VideoDetailViewModel;->x()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance p2, Lcom/transsion/videodetail/a1;

    invoke-direct {p2, p0}, Lcom/transsion/videodetail/a1;-><init>(Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog;)V

    new-instance v0, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$a;

    invoke-direct {v0, p2}, Lcom/transsion/videodetail/VideoDetailEpisodeSelectDialog$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    return-void
.end method
