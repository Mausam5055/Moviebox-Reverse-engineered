.class public Lcom/noober/background/drawable/ColorStateCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ICreateColorState;


# instance fields
.field private colors:[I

.field private index:I

.field private states:[[I

.field private textTa:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [[I

    iput-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    iput-object p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    return-void
.end method

.method private setStateColor(Landroid/content/res/TypedArray;II)V
    .locals 2

    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    iget v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    filled-new-array {p3}, [I

    move-result-object p3

    aput-object p3, v0, v1

    iget-object p3, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    aput p1, p3, v1

    iget p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/noober/background/drawable/ColorStateCreator;->index:I

    return-void
.end method


# virtual methods
.method public create()Landroid/content/res/ColorStateList;
    .locals 4

    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    iget-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_checkable_textColor:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x101009f

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_0
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unCheckable_textColor:I

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x101009f

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_1
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_checked_textColor:I

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x10100a0

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_2
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unChecked_textColor:I

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x10100a0

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_3
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_enabled_textColor:I

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x101009e

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_4
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unEnabled_textColor:I

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x101009e

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_5
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_selected_textColor:I

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x10100a1

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_6
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unSelected_textColor:I

    if-ne v1, v2, :cond_7

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x10100a1

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_7
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_pressed_textColor:I

    if-ne v1, v2, :cond_8

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x10100a7

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_8
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unPressed_textColor:I

    if-ne v1, v2, :cond_9

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x10100a7

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :cond_9
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_focused_textColor:I

    if-ne v1, v2, :cond_a

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x101009c

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_a
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unFocused_textColor:I

    if-ne v1, v2, :cond_b

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x101009c

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_b
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_activated_textColor:I

    if-ne v1, v2, :cond_c

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x10102fe

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_c
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unActivated_textColor:I

    if-ne v1, v2, :cond_d

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x10100a2

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_d
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_active_textColor:I

    if-ne v1, v2, :cond_e

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x10100a2

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_e
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unActive_textColor:I

    if-ne v1, v2, :cond_f

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x10102fe

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_f
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_expanded_textColor:I

    if-ne v1, v2, :cond_10

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, 0x10100a8

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    goto :goto_1

    :cond_10
    sget v2, Lcom/noober/background/R$styleable;->text_selector_bl_unExpanded_textColor:I

    if-ne v1, v2, :cond_11

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->textTa:Landroid/content/res/TypedArray;

    const v3, -0x10100a8

    invoke-direct {p0, v2, v1, v3}, Lcom/noober/background/drawable/ColorStateCreator;->setStateColor(Landroid/content/res/TypedArray;II)V

    :cond_11
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_12
    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/noober/background/drawable/ColorStateCreator;->states:[[I

    iget-object v2, p0, Lcom/noober/background/drawable/ColorStateCreator;->colors:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method
