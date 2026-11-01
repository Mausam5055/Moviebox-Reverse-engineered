.class public Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ICreateColorState;


# instance fields
.field private colors:[I

.field private context:Landroid/content/Context;

.field private index:I

.field private selectorTa:Landroid/content/res/TypedArray;

.field private states:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->states:[[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->colors:[I

    iput-object p2, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->selectorTa:Landroid/content/res/TypedArray;

    iput-object p1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->context:Landroid/content/Context;

    return-void
.end method

.method private addState(I)V
    .locals 6

    iget-object v0, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_4

    aget-object v3, p1, v1

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    iget-object v2, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/noober/background/common/ResourceUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot find color from the last attribute"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v4, ""

    const-string v5, "-"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/noober/background/common/MultiSelector;->getMultiAttr(Ljava/lang/String;)Lcom/noober/background/common/MultiSelector;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v4, Lcom/noober/background/common/MultiSelector;->id:I

    neg-int v3, v3

    aput v3, v0, v1

    goto :goto_1

    :cond_2
    iget v3, v4, Lcom/noober/background/common/MultiSelector;->id:I

    aput v3, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the attribute of bl_multi_selector only support state_checkable, state_checked, state_enabled, state_selected, state_pressed, state_focused, state_hovered, state_activated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->states:[[I

    iget v1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->index:I

    aput-object v0, p1, v1

    iget-object p1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->colors:[I

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->index:I

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attributes and drawable must be set at the same time"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public create()Landroid/content/res/ColorStateList;
    .locals 3

    iget-object v0, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->states:[[I

    iget-object v0, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->colors:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lcom/noober/background/R$styleable;->background_multi_selector_text_bl_multi_text_selector1:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->addState(I)V

    goto :goto_1

    :cond_0
    sget v2, Lcom/noober/background/R$styleable;->background_multi_selector_text_bl_multi_text_selector2:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->addState(I)V

    goto :goto_1

    :cond_1
    sget v2, Lcom/noober/background/R$styleable;->background_multi_selector_text_bl_multi_text_selector3:I

    if-ne v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->addState(I)V

    goto :goto_1

    :cond_2
    sget v2, Lcom/noober/background/R$styleable;->background_multi_selector_text_bl_multi_text_selector4:I

    if-ne v1, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->addState(I)V

    goto :goto_1

    :cond_3
    sget v2, Lcom/noober/background/R$styleable;->background_multi_selector_text_bl_multi_text_selector5:I

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->addState(I)V

    goto :goto_1

    :cond_4
    sget v2, Lcom/noober/background/R$styleable;->background_multi_selector_text_bl_multi_text_selector6:I

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->addState(I)V

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->states:[[I

    iget-object v2, p0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->colors:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method
