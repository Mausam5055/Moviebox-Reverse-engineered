.class public Lcom/noober/background/drawable/MultiSelectorDrawableCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private context:Landroid/content/Context;

.field private gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private selectorTa:Landroid/content/res/TypedArray;

.field typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    iput-object p1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    return-void
.end method

.method private addState(Landroid/graphics/drawable/StateListDrawable;I)V
    .locals 6

    iget-object v0, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_6

    aget-object v3, p2, v2

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_3

    iget-object v1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/noober/background/common/ResourceUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    if-lez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-static {v4}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->context:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/noober/background/common/ResourceUtils;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cannot find drawable from the last attribute"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v4, ""

    const-string v5, "-"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/noober/background/common/MultiSelector;->getMultiAttr(Ljava/lang/String;)Lcom/noober/background/common/MultiSelector;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v4, Lcom/noober/background/common/MultiSelector;->id:I

    neg-int v3, v3

    aput v3, v0, v2

    goto :goto_3

    :cond_4
    iget v3, v4, Lcom/noober/background/common/MultiSelector;->id:I

    aput v3, v0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the attribute of bl_multi_selector only support state_checkable, state_checked, state_enabled, state_selected, state_pressed, state_focused, state_hovered, state_activated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attributes and drawable must be set at the same time"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector1:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    goto :goto_1

    :cond_0
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector2:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    goto :goto_1

    :cond_1
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector3:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    goto :goto_1

    :cond_2
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector4:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    goto :goto_1

    :cond_3
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector5:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    goto :goto_1

    :cond_4
    sget v3, Lcom/noober/background/R$styleable;->background_multi_selector_bl_multi_selector6:I

    if-ne v2, v3, :cond_5

    invoke-direct {p0, v0, v2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->addState(Landroid/graphics/drawable/StateListDrawable;I)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method
