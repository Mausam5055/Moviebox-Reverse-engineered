.class public Lcom/noober/background/drawable/ButtonDrawableCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private buttonTa:Landroid/content/res/TypedArray;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iput-object p2, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->buttonTa:Landroid/content/res/TypedArray;

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
    iget-object v0, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->buttonTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->buttonTa:Landroid/content/res/TypedArray;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget v0, Lcom/noober/background/R$styleable;->background_button_drawable_bl_checked_button_drawable:I

    if-ne v4, v0, :cond_0

    iget-object v1, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->buttonTa:Landroid/content/res/TypedArray;

    const v5, 0x10100a0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/ButtonDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    goto :goto_1

    :cond_0
    sget v0, Lcom/noober/background/R$styleable;->background_button_drawable_bl_unChecked_button_drawable:I

    if-ne v4, v0, :cond_1

    iget-object v1, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/noober/background/drawable/ButtonDrawableCreator;->buttonTa:Landroid/content/res/TypedArray;

    const v5, -0x10100a0

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/noober/background/drawable/ButtonDrawableCreator;->setSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/graphics/drawable/StateListDrawable;II)V

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method
