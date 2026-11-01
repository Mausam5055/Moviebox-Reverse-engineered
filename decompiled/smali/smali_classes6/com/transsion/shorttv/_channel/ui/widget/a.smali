.class public final Lcom/transsion/shorttv/_channel/ui/widget/a;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/_channel/ui/widget/a$a;,
        Lcom/transsion/shorttv/_channel/ui/widget/a$b;,
        Lcom/transsion/shorttv/_channel/ui/widget/a$c;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

.field private f:Ljava/util/List;

.field private g:Ljava/util/Map;

.field private h:Lkotlin/jvm/functions/Function1;

.field private final i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x103000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->g(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->j(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->h(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/shorttv/_channel/ui/widget/a;->i(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V

    return-void
.end method

.method private final e()Landroid/view/View;
    .locals 4

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/shorttv/R$color;->short_tv_white_10:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final f()Z
    .locals 5

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final g(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    const-string v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object p1

    const-string v0, "getInsets(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget p1, p1, Lz0/c;->d:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private static final h(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->k()V

    return-void
.end method

.method private static final i(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->h:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private static final j(Lcom/transsion/shorttv/_channel/ui/widget/a;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->h:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final k()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;->Companion:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMinVal()F

    move-result v5

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMaxVal()F

    move-result v1

    invoke-virtual {v4, v5, v1}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;->a(FF)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    invoke-virtual {v1}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method public final l(Ljava/util/List;Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectItems"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->i:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->h:Lkotlin/jvm/functions/Function1;

    new-instance p1, Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->f:Ljava/util/List;

    iget-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->g:Ljava/util/Map;

    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;Ljava/util/List;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    const-string p1, "mRecyclerView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v2, Lsr/b;

    invoke-direct {v2}, Lsr/b;-><init>()V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_3

    const/high16 v4, -0x80000000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_4
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v9

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v10

    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v11

    invoke-virtual {v5, v7, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/transsion/shorttv/R$string;->short_tv_filter_more_title:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v14, Lcom/transsion/shorttv/R$drawable;->short_tv_music_iv_close:I

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setColorFilter(I)V

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v15, 0x41a80000    # 21.0f

    invoke-static {v15}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v9

    invoke-static {v15}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v15

    invoke-direct {v14, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lsr/c;

    invoke-direct {v9, v0}, Lsr/c;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v11, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->d:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v7, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->d:Landroid/widget/ImageView;

    if-nez v7, :cond_5

    const-string v7, "mCloseBtn"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_5
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->e()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v2, v3, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v7

    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v11

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v14

    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v15

    invoke-virtual {v5, v7, v11, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    iput-object v5, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/transsion/shorttv/R$color;->short_tv_black_90:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/shorttv/_channel/ui/widget/a;->e()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v7

    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v11

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v14

    invoke-static {v6}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v6

    invoke-virtual {v4, v7, v11, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v11}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v14

    invoke-direct {v7, v12, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v12, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v14, 0x42c80000    # 100.0f

    invoke-static {v14}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v12, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {v13}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v15

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v12, v15, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v12, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v6, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Lsr/d;

    invoke-direct {v9, v0}, Lsr/d;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v14, Lcom/transsion/shorttv/R$string;->short_tv_filter_reset:I

    invoke-virtual {v12, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41900000    # 18.0f

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v12

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    invoke-virtual {v9, v12, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v6, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->b:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v11}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v9

    invoke-direct {v6, v3, v9, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-static {v8}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v7, Lcom/transsion/shorttv/R$color;->short_tv_white:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lsr/e;

    invoke-direct {v3, v0}, Lsr/e;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/transsion/shorttv/R$string;->short_tv_filter_confirm:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/shorttv/R$color;->short_tv_black:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->c:Landroid/view/View;

    iget-object v2, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->b:Landroid/view/View;

    if-nez v2, :cond_6

    const-string v2, "mResetBtn"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_6
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->c:Landroid/view/View;

    if-nez v2, :cond_7

    const-string v2, "mConfirmBtn"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_7
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_8

    const-string v1, "mRecyclerView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_0

    :cond_8
    move-object v9, v1

    :goto_0
    iget-object v1, v0, Lcom/transsion/shorttv/_channel/ui/widget/a;->e:Lcom/transsion/shorttv/_channel/ui/widget/a$b;

    invoke-virtual {v9, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_9
    return-void
.end method
