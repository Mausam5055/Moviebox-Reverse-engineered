.class public final Lcom/transsion/shorttv/_channel/ui/widget/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/shorttv/_channel/ui/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/Map;

.field private final c:I

.field private final d:I

.field final synthetic e:Lcom/transsion/shorttv/_channel/ui/widget/a;


# direct methods
.method public constructor <init>(Lcom/transsion/shorttv/_channel/ui/widget/a;Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    const/4 p1, 0x1

    iput p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->d:I

    return-void
.end method

.method public static synthetic g(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->j(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Landroidx/recyclerview/widget/RecyclerView$b0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->k(Landroidx/recyclerview/widget/RecyclerView$b0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V

    return-void
.end method

.method private final i(Ljava/lang/String;ZI)Landroid/view/View;
    .locals 5

    new-instance p3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, -0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/shorttv/R$color;->short_tv_white_40:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/shorttv/R$color;->short_tv_gray_light_40:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p3
.end method

.method private static final j(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;ILandroid/view/View;)V
    .locals 0

    iget-object p4, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final k(Landroidx/recyclerview/widget/RecyclerView$b0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/google/android/material/slider/RangeSlider;FZ)V
    .locals 1

    const-string p4, "slider"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/google/android/material/slider/RangeSlider;->getValues()Ljava/util/List;

    move-result-object p3

    const-string p4, "getValues(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x2

    if-lt p4, p5, :cond_0

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    const/4 p5, 0x1

    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    check-cast p0, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    invoke-virtual {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->h()Landroid/widget/TextView;

    move-result-object p5

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->f()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p5

    float-to-int p5, p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView;->Companion:Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p2, p4, p3}, Lcom/transsion/shorttv/_channel/ui/widget/ShortTvPopupFilterView$a;->a(FF)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->d:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->c:I

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "holder"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->a:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/shorttv/_channel/model/ShortTvItem;

    instance-of v3, p1, Lcom/transsion/shorttv/_channel/ui/widget/a$a;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast p1, Lcom/transsion/shorttv/_channel/ui/widget/a$a;

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->g()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->f()Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v1

    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterValsV2()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    check-cast v7, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;

    iget-object v9, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v7}, Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, v9, v3}, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->i(Ljava/lang/String;ZI)Landroid/view/View;

    move-result-object v9

    new-instance v10, Lsr/f;

    invoke-direct {v10, p0, v2, v7, p2}, Lsr/f;-><init>(Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;Lcom/transsion/shorttv/_channel/model/ShortTvFilterVal;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    const/high16 v10, 0x42000000    # 32.0f

    invoke-static {v10}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v10

    invoke-direct {v7, v3, v10}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    rem-int/2addr v6, v1

    const/high16 v10, 0x41400000    # 12.0f

    if-nez v6, :cond_1

    invoke-static {v10}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v6

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iput v4, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    invoke-static {v10}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v6

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v9, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;->f()Lcom/google/android/flexbox/FlexboxLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v6, v8

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->i()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getRangeVals()Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;

    move-result-object v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMinVal()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/slider/RangeSlider;->setValueFrom(F)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    move-result-object v5

    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMaxVal()F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/material/slider/RangeSlider;->setValueTo(F)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Lcom/google/android/material/slider/RangeSlider;->setStepSize(F)V

    iget-object v5, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->b:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvItem;->getFilterType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    const-string v5, ","

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-static {v6}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMinVal()F

    move-result v6

    :goto_3
    if-eqz v5, :cond_6

    invoke-static {v5, v0}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    invoke-static {v5}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/transsion/shorttv/_channel/model/ShortTvRangeValue;->getMaxVal()F

    move-result v3

    :goto_4
    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    new-array v1, v1, [Ljava/lang/Float;

    aput-object v7, v1, v4

    aput-object v8, v1, v0

    invoke-virtual {v5, v1}, Lcom/google/android/material/slider/RangeSlider;->setValues([Ljava/lang/Float;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->h()Landroid/widget/TextView;

    move-result-object v0

    float-to-int v1, v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->f()Landroid/widget/TextView;

    move-result-object v0

    float-to-int v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;->g()Lcom/google/android/material/slider/RangeSlider;

    move-result-object p2

    new-instance v0, Lsr/g;

    invoke-direct {v0, p1, p0, v2}, Lsr/g;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;Lcom/transsion/shorttv/_channel/ui/widget/a$b;Lcom/transsion/shorttv/_channel/model/ShortTvItem;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/slider/RangeSlider;->addOnChangeListener(Lcom/google/android/material/slider/a;)V

    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 10

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v6

    invoke-virtual {v4, v5, v5, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v6, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->c:I

    if-ne p2, v6, :cond_0

    new-instance p2, Lcom/google/android/flexbox/FlexboxLayout;

    iget-object v0, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v5}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexDirection(I)V

    invoke-virtual {p2, p1}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexWrap(I)V

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/transsion/shorttv/_channel/ui/widget/a$a;

    invoke-direct {p1, v2, v4, p2}, Lcom/transsion/shorttv/_channel/ui/widget/a$a;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;)V

    return-object p1

    :cond_0
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v6}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v1, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Lcom/google/android/material/slider/RangeSlider;

    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/google/android/material/slider/RangeSlider;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Float;

    aput-object v3, v8, v5

    aput-object v7, v8, p1

    invoke-virtual {v6, v8}, Lcom/google/android/material/slider/RangeSlider;->setValues([Ljava/lang/Float;)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/material/slider/RangeSlider;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/transsion/shorttv/R$color;->short_tv_white_40:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/material/slider/RangeSlider;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/material/slider/RangeSlider;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v6, v5}, Lcom/google/android/material/slider/RangeSlider;->setTickVisible(Z)V

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v7, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v7, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/shorttv/_channel/ui/widget/a$b;->e:Lcom/transsion/shorttv/_channel/ui/widget/a;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v5, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/transsion/shorttv/_channel/ui/widget/a$c;

    move-object v1, p1

    move-object v3, v4

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/_channel/ui/widget/a$c;-><init>(Landroid/view/View;Landroid/widget/TextView;Lcom/google/android/material/slider/RangeSlider;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object p1
.end method
