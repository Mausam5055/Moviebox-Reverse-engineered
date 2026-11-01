.class public Lcom/noober/background/drawable/SelectorDrawableCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private selectorTa:Landroid/content/res/TypedArray;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iput-object p2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    return-void
.end method

.method private setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    filled-new-array {p5}, [I

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    filled-new-array {p5}, [I

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/Drawable;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v6, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-object v0, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge v7, v0, :cond_10

    iget-object v0, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_checkable_drawable:I

    if-ne v4, v0, :cond_0

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x101009f

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_0
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unCheckable_drawable:I

    if-ne v4, v0, :cond_1

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x101009f

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_1
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_checked_drawable:I

    if-ne v4, v0, :cond_2

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10100a0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_2
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unChecked_drawable:I

    if-ne v4, v0, :cond_3

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10100a0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_3
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_enabled_drawable:I

    if-ne v4, v0, :cond_4

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x101009e

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_4
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unEnabled_drawable:I

    if-ne v4, v0, :cond_5

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x101009e

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_5
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_selected_drawable:I

    if-ne v4, v0, :cond_6

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10100a1

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unSelected_drawable:I

    if-ne v4, v0, :cond_7

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10100a1

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_7
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_pressed_drawable:I

    if-ne v4, v0, :cond_8

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10100a7

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_8
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unPressed_drawable:I

    if-ne v4, v0, :cond_9

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10100a7

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto/16 :goto_1

    :cond_9
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_drawable:I

    if-ne v4, v0, :cond_a

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x101009c

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    :cond_a
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_drawable:I

    if-ne v4, v0, :cond_b

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x101009c

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    :cond_b
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_hovered:I

    if-ne v4, v0, :cond_c

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x1010367

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    :cond_c
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_hovered:I

    if-ne v4, v0, :cond_d

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x1010367

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    :cond_d
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_focused_activated:I

    if-ne v4, v0, :cond_e

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, 0x10102fe

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    :cond_e
    sget v0, Lcom/noober/background/R$styleable;->background_selector_bl_unFocused_activated:I

    if-ne v4, v0, :cond_f

    iget-object v1, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/SelectorDrawableCreator;->selectorTa:Landroid/content/res/TypedArray;

    const v5, -0x10102fe

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/SelectorDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    :cond_f
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_10
    return-object v6
.end method
