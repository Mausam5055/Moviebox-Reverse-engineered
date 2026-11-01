.class public final Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;
.super Landroidx/recyclerview/widget/RecyclerView$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt;->h(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$m;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$m;

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

.field final synthetic e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

.field final synthetic f:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/recyclerview/widget/RecyclerView$m;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    iput-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    iput-object p5, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iput-object p6, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->f:Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->g(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->f(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string v0, "selected"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->B(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    invoke-virtual {p0, p1, p3}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->L(Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)V

    sget-object p0, Lrl/c;->a:Lrl/c;

    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->e0()I

    move-result v0

    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, v0, p2, p1, p3}, Lrl/c;->k(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final g(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)Lkotlin/Unit;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->C(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object p0, Lrl/c;->a:Lrl/c;

    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->e0()I

    move-result v0

    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, v0, p2, p1}, Lrl/c;->j(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_7

    if-gtz p3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->b:Landroidx/recyclerview/widget/RecyclerView$m;

    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D([I)[I

    move-result-object p1

    const-string p2, "findFirstVisibleItemPositions(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->U([I)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {p2}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    invoke-virtual {p3, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->J(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/home/bean/HomePreferencesConfig;

    if-nez p2, :cond_5

    return-void

    :cond_5
    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->f:Lkotlin/jvm/internal/Ref$IntRef;

    iget p3, p3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-le p1, p3, :cond_7

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p3, 0x1

    iput-boolean p3, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p1, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->p:Lcom/transsion/home/fragment/dialog/HomePreferencesDialog$a;

    invoke-virtual {p1}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog$a;->a()Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->z0(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    sget-object p3, Lrl/c;->a:Lrl/c;

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v0}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->e0()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    invoke-virtual {v1}, Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;->d0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    :cond_6
    invoke-virtual {p3, v0, v1, p2}, Lrl/c;->l(ILjava/lang/String;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    new-instance v1, Lcom/transsion/home/fragment/tab/g;

    invoke-direct {v1, p3, p2, v0}, Lcom/transsion/home/fragment/tab/g;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V

    invoke-virtual {p1, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->B0(Lkotlin/jvm/functions/Function1;)V

    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    new-instance v1, Lcom/transsion/home/fragment/tab/h;

    invoke-direct {v1, p3, p2, v0}, Lcom/transsion/home/fragment/tab/h;-><init>(Lcom/transsion/home/viewmodel/HomePreferencesViewModel;Lcom/transsion/home/bean/HomePreferencesConfig;Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;)V

    invoke-virtual {p1, v1}, Lcom/transsion/home/fragment/dialog/HomePreferencesDialog;->A0(Lkotlin/jvm/functions/Function0;)V

    iget-object p3, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->e:Lcom/transsion/home/viewmodel/HomePreferencesViewModel;

    invoke-virtual {p3, p2}, Lcom/transsion/home/viewmodel/HomePreferencesViewModel;->D(Lcom/transsion/home/bean/HomePreferencesConfig;)V

    iget-object p2, p0, Lcom/transsion/home/fragment/tab/HomePreferencesUiHelperKt$a;->d:Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;

    const-string p3, "HomePreferencesDialog"

    invoke-virtual {p1, p2, p3}, Lcom/transsion/baseui/dialog/BaseDialog;->l0(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
