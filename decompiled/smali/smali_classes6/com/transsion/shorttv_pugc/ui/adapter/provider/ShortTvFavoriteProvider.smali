.class public final Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$a;


# instance fields
.field private final e:Landroidx/fragment/app/Fragment;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private h:Ljava/lang/String;

.field private final i:Z

.field private final j:I

.field private k:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;

.field private l:Lbt/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->m:Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->e:Landroidx/fragment/app/Fragment;

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    const-class v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$special$$inlined$viewModels$default$2;

    invoke-direct {v2, v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    new-instance v3, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-static {p1, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/shorttv_pugc/ui/adapter/provider/d;

    invoke-direct {p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/d;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->g:Lkotlin/Lazy;

    const-string p1, "0"

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->i:Z

    const/high16 p1, 0x41000000    # 8.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p1

    iput p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->j:I

    return-void
.end method

.method public static synthetic A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->J(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final synthetic C(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)I
    .locals 0

    iget p0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->j:I

    return p0
.end method

.method public static final synthetic D(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->k:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;

    return-object p0
.end method

.method public static final synthetic E(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->L()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic F(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)Lut/b;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->M()Lut/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic G(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->i:Z

    return p0
.end method

.method private static final I(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;)Lkotlin/Unit;
    .locals 1

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;->getPager()Lcom/transsion/shorttv_pugc/bean/Pager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/bean/Pager;->getNextPage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "0"

    :cond_2
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->Q(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final J(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/shorttv_pugc/bean/Subject;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->M()Lut/b;

    move-result-object p2

    check-cast p1, Lcom/transsion/shorttv_pugc/bean/Subject;

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->L()Ljava/lang/String;

    move-result-object v0

    const-string v1, "minitv_explore"

    invoke-virtual {p2, v1, p1, p3, v0}, Lut/b;->b(Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->O(Lcom/transsion/shorttv_pugc/bean/Subject;)V

    :cond_0
    return-void
.end method

.method private static final K(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;)V
    .locals 4

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "Click view all"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lls/a;->a:Lls/a;

    invoke-virtual {p1}, Lls/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1, p0, v3, v2, v3}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    return-void
.end method

.method private final L()Ljava/lang/String;
    .locals 1

    const-string v0, "collection"

    return-object v0
.end method

.method private final M()Lut/b;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lut/b;

    return-object v0
.end method

.method private final N()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    return-object v0
.end method

.method private final O(Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 11

    sget-object v0, Lqt/a;->a:Lqt/a;

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/bean/Subject;->getOps()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0xc0

    const/4 v10, 0x0

    const-string v2, "minitv_explore"

    const-string v4, "download_subject"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v10}, Lqt/a;->b(Lqt/a;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method private static final P()Lut/b;
    .locals 1

    new-instance v0, Lut/b;

    invoke-direct {v0}, Lut/b;-><init>()V

    return-object v0
.end method

.method private final Q(Ljava/util/List;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateList, size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvFavorite"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->k:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->n1(Ljava/util/Collection;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic y(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->I(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;Lcom/transsion/shorttv_pugc/bean/ShortTVRespData;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z()Lut/b;
    .locals 1

    invoke-static {}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->P()Lut/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
    .locals 9

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lcom/transsion/shorttv/R$id;->tv_title:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/transsion/shorttv/R$string;->short_tv_my_list:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->N()Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->x()Landroidx/lifecycle/b0;

    move-result-object p2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->e:Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/transsion/shorttv_pugc/ui/adapter/provider/a;

    invoke-direct {v1, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/a;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)V

    new-instance v2, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$d;

    invoke-direct {v2, v1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    new-instance p2, Lbt/b;

    new-instance v5, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$b;

    invoke-direct {v5, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$b;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const v4, 0x3f19999a    # 0.6f

    const/4 v6, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Lbt/b;-><init>(FLbt/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->l:Lbt/b;

    new-instance p2, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1, v0}, Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;-><init>(Lbt/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/b;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/b;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)V

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lp6/d;)V

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->k:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;

    sget p2, Lcom/transsion/shorttv/R$id;->recycler_view:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/NpaLinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/shorttv_pugc/base/widget/NpaLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$c;

    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider$c;-><init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->k:Lcom/transsion/shorttv_pugc/ui/adapter/ShortTVHeaderViewAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->l:Lbt/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    sget p2, Lcom/transsion/shorttv/R$id;->tv_view_all:I

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/c;

    invoke-direct {v0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/c;-><init>(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/shorttv_pugc/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/ShortTvFavoriteProvider;->H(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;->FAVORITE:Lcom/transsion/shorttv_pugc/bean/ShortTvItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/shorttv/R$layout;->pugc_short_tv_layout_favorite:I

    return v0
.end method
