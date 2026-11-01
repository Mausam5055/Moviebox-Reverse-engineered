.class public final Lcom/transsion/home/adapter/trending/provider/e;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/trending/provider/e$a;
    }
.end annotation


# static fields
.field public static final r:Lcom/transsion/home/adapter/trending/provider/e$a;

.field public static final s:I


# instance fields
.field private final e:Ljava/util/Set;

.field private f:Lkotlin/jvm/functions/Function1;

.field private g:Lkotlin/jvm/functions/Function1;

.field private h:Lkotlin/jvm/functions/Function3;

.field private i:Lkotlin/jvm/functions/Function1;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Landroid/text/TextPaint;

.field private final q:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/home/adapter/trending/provider/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/home/adapter/trending/provider/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/home/adapter/trending/provider/e;->r:Lcom/transsion/home/adapter/trending/provider/e$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/home/adapter/trending/provider/e;->s:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->j:I

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->k:I

    const/high16 v1, 0x42880000    # 68.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->l:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->m:I

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->n:I

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    iput v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->o:I

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iput-object v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->p:Landroid/text/TextPaint;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/home/adapter/trending/provider/e;->q:Ljava/util/Map;

    return-void
.end method

.method private final A(Landroid/widget/LinearLayout;Ljava/util/List;ZILandroid/widget/LinearLayout;)V
    .locals 10

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_0
    move-object v6, v2

    check-cast v6, Lcom/transsion/home/bean/HomePreferencesContentItem;

    move-object v4, p0

    move-object v5, p1

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/transsion/home/adapter/trending/provider/e;->E(Landroid/view/ViewGroup;Lcom/transsion/home/bean/HomePreferencesContentItem;ZILandroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    iget v6, p0, Lcom/transsion/home/adapter/trending/provider/e;->k:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->m:I

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v3

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final B(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V
    .locals 4

    sget v0, Lcom/tn/lib/widget/R$color;->white_80:I

    invoke-static {p2, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    invoke-static {p2, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    invoke-static {p2, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    invoke-static {p2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p3, :cond_2

    move v0, p2

    :cond_2
    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    return-void
.end method

.method private static final D(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesConfig;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/adapter/trending/provider/e;->f:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final E(Landroid/view/ViewGroup;Lcom/transsion/home/bean/HomePreferencesContentItem;ZILandroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 14

    move-object v10, p0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, v10, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-direct {v11, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v9, 0x11

    invoke-virtual {v11, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v0, v10, Lcom/transsion/home/adapter/trending/provider/e;->l:I

    invoke-virtual {v11, v0}, Landroid/view/View;->setMinimumWidth(I)V

    iget v0, v10, Lcom/transsion/home/adapter/trending/provider/e;->j:I

    invoke-virtual {v11, v0, v8, v0, v8}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/transsion/home/R$drawable;->bg_preferences_tag:I

    invoke-static {v6, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v7}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v12, Lcom/transsion/baseui/widget/GradientTextView;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v12

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/baseui/widget/GradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v12, v6, v7}, Lcom/transsion/home/adapter/trending/provider/e;->B(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    if-eqz v7, :cond_0

    sget v0, Lcom/transsion/home/R$drawable;->ic_preferences_heart_selected:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/home/R$drawable;->ic_preferences_heart_unselected:I

    :goto_0
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v10, Lcom/transsion/home/adapter/trending/provider/e;->n:I

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v1, v10, Lcom/transsion/home/adapter/trending/provider/e;->o:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v13, Lcom/transsion/home/adapter/trending/provider/d;

    move-object v0, v13

    move/from16 v1, p3

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p4

    move-object v7, v11

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/transsion/home/adapter/trending/provider/d;-><init>(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v11
.end method

.method private static final F(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;)V
    .locals 1

    const/4 p9, 0x1

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    iget-object p0, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p1, p3}, Lcom/transsion/home/adapter/trending/provider/e;->I(Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_1
    iget-object p0, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p3, p0, 0x1

    if-nez p0, :cond_3

    if-lez p4, :cond_2

    iget-object v0, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lt v0, p4, :cond_2

    sget p0, Lcom/transsion/home/R$string;->home_preferences_max_select_tips:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array p2, p9, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-virtual {p5, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/transsion/baseui/util/m;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p4, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p4, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p6, p3}, Landroid/view/View;->setSelected(Z)V

    if-nez p0, :cond_4

    sget p0, Lcom/transsion/home/R$drawable;->ic_preferences_heart_selected:I

    goto :goto_2

    :cond_4
    sget p0, Lcom/transsion/home/R$drawable;->ic_preferences_heart_unselected:I

    :goto_2
    invoke-virtual {p7, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p1, p8, p5, p3}, Lcom/transsion/home/adapter/trending/provider/e;->B(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V

    :goto_3
    iget-object p0, p1, Lcom/transsion/home/adapter/trending/provider/e;->g:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private final G(Ljava/util/List;I)Ljava/util/List;
    .locals 11

    new-array v0, p2, [Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, p2, [F

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/HomePreferencesContentItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/transsion/home/adapter/trending/provider/e;->H(Ljava/lang/String;)F

    move-result v4

    const/4 v5, -0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v7, v1

    move v8, v5

    :goto_2
    if-ge v7, p2, :cond_2

    aget-object v9, v0, v7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x8

    if-ge v9, v10, :cond_1

    aget v9, v2, v7

    cmpg-float v10, v9, v6

    if-gez v10, :cond_1

    move v8, v7

    move v6, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    if-eq v8, v5, :cond_3

    aget-object v5, v0, v8

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v3, v2, v8

    iget v5, p0, Lcom/transsion/home/adapter/trending/provider/e;->m:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    aput v3, v2, v8

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, p2, :cond_4

    aget-object v2, v0, v1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object p1
.end method

.method private final H(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/e;->p:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget v0, p0, Lcom/transsion/home/adapter/trending/provider/e;->j:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/home/adapter/trending/provider/e;->o:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/home/adapter/trending/provider/e;->n:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/transsion/home/adapter/trending/provider/e;->l:I

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private final I(Landroid/view/ViewGroup;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_5

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_4

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_4

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lcom/transsion/baseui/widget/GradientTextView;

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    check-cast v8, Lcom/transsion/baseui/widget/GradientTextView;

    goto :goto_2

    :cond_0
    move-object v8, v10

    :goto_2
    if-eqz v8, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v11, "getContext(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v8, v9, v7}, Lcom/transsion/home/adapter/trending/provider/e;->B(Lcom/transsion/baseui/widget/GradientTextView;Landroid/content/Context;Z)V

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v8, v6, Landroid/widget/ImageView;

    if-eqz v8, :cond_2

    move-object v10, v6

    check-cast v10, Landroid/widget/ImageView;

    :cond_2
    if-eqz v10, :cond_4

    if-eqz v7, :cond_3

    sget v6, Lcom/transsion/home/R$drawable;->ic_preferences_heart_selected:I

    goto :goto_3

    :cond_3
    sget v6, Lcom/transsion/home/R$drawable;->ic_preferences_heart_unselected:I

    :goto_3
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public static synthetic y(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/transsion/home/adapter/trending/provider/e;->F(ZLcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesContentItem;Landroid/widget/LinearLayout;ILandroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesConfig;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/e;->D(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesConfig;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "helper"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-virtual {v10}, Lcom/transsion/home/bean/HomePreferencesConfig;->getOptions()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/transsion/home/R$id;->tv_title:I

    invoke-virtual {v7, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Lcom/transsion/home/bean/HomePreferencesConfig;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    sget v0, Lcom/transsion/home/R$id;->iv_close:I

    invoke-virtual {v7, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/home/adapter/trending/provider/c;

    invoke-direct {v1, v6, v10}, Lcom/transsion/home/adapter/trending/provider/c;-><init>(Lcom/transsion/home/adapter/trending/provider/e;Lcom/transsion/home/bean/HomePreferencesConfig;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget v0, Lcom/transsion/home/R$id;->ll_rows_container:I

    invoke-virtual {v7, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    if-nez v12, :cond_4

    return-void

    :cond_4
    invoke-virtual {v10}, Lcom/transsion/home/bean/HomePreferencesConfig;->getSelectType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/transsion/home/bean/HomePreferencesSelectType;->SINGLE:Lcom/transsion/home/bean/HomePreferencesSelectType;

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomePreferencesSelectType;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    invoke-virtual {v10}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v6, Lcom/transsion/home/adapter/trending/provider/e;->q:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->x(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_8

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v5, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/transsion/home/bean/HomePreferencesContentItem;

    invoke-virtual {v15}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v3, v11

    check-cast v3, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/home/bean/HomePreferencesContentItem;

    invoke-virtual {v3}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_3
    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v2, v0

    :goto_4
    invoke-direct {v6, v11, v2}, Lcom/transsion/home/adapter/trending/provider/e;->G(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Lcom/transsion/home/adapter/trending/provider/e;->q:Ljava/util/Map;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v2, v0

    :goto_5
    invoke-direct {v6, v11, v2}, Lcom/transsion/home/adapter/trending/provider/e;->G(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Lcom/transsion/home/adapter/trending/provider/e;->q:Ljava/util/Map;

    invoke-interface {v1, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_d

    check-cast v1, Ljava/lang/String;

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_12

    :cond_e
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v0, 0x0

    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v17, v0, 0x1

    if-gez v0, :cond_f

    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    :cond_f
    move-object v2, v1

    check-cast v2, Ljava/util/List;

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-lez v0, :cond_10

    iget v0, v6, Lcom/transsion/home/adapter/trending/provider/e;->m:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_10
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v10}, Lcom/transsion/home/bean/HomePreferencesConfig;->getMaxSelectNum()I

    move-result v4

    move-object/from16 v0, p0

    move-object v1, v5

    move v3, v13

    move-object v6, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/transsion/home/adapter/trending/provider/e;->A(Landroid/widget/LinearLayout;Ljava/util/List;ZILandroid/widget/LinearLayout;)V

    invoke-virtual {v12, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v6, p0

    move/from16 v0, v17

    goto :goto_8

    :cond_11
    invoke-virtual {v12, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_12
    sget v0, Lcom/transsion/home/R$id;->hsv_tags:I

    invoke-virtual {v7, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_13
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convert cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "ms, items="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rows="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "HomePreferencesProvider"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final J(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/e;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final K(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/e;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final L(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/e;->h:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/trending/provider/e;->C(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V

    return-void
.end method

.method public l()I
    .locals 1

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostItemType;->PREFERENCES:Lcom/transsion/moviedetailapi/bean/PostItemType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    sget v0, Lcom/transsion/home/R$layout;->item_home_preferences:I

    return v0
.end method

.method public t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->t(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v0, p1, Lcom/transsion/home/bean/OperateItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewAttachedToWindow: labelId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "HomePreferencesProvider"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/e;->i:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 14

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->u(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->g()Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->l0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/home/bean/OperateItem;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of v0, p1, Lcom/transsion/home/bean/OperateItem;

    if-eqz v0, :cond_1

    move-object v1, p1

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/transsion/home/bean/OperateItem;->getHomePreferencesConfig()Lcom/transsion/home/bean/HomePreferencesConfig;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getOptions()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/home/bean/HomePreferencesContentItem;

    invoke-virtual {v2}, Lcom/transsion/home/bean/HomePreferencesContentItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/home/adapter/trending/provider/e;->e:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewDetachedFromWindow: no selection, skip submit, labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "HomePreferencesProvider"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_7
    sget-object v8, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/home/bean/HomePreferencesConfig;->getLabelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewDetachedFromWindow: try submit, labelId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "HomePreferencesProvider"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/home/adapter/trending/provider/e;->h:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_8

    const-string v2, "opt_scroll"

    invoke-interface {v1, p1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method
