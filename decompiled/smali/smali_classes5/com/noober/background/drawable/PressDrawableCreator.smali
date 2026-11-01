.class public Lcom/noober/background/drawable/PressDrawableCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/noober/background/drawable/ICreateDrawable;


# instance fields
.field private drawable:Landroid/graphics/drawable/GradientDrawable;

.field private pressTa:Landroid/content/res/TypedArray;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    iput-object p3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    iput-object p2, p0, Lcom/noober/background/drawable/PressDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public create()Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    sget v4, Lcom/noober/background/R$styleable;->background_press_bl_pressed_color:I

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->typedArray:Landroid/content/res/TypedArray;

    invoke-static {v4}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v3, 0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    sget v4, Lcom/noober/background/R$styleable;->background_press_bl_unpressed_color:I

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->pressTa:Landroid/content/res/TypedArray;

    invoke-virtual {v4, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v3, -0x10100a7

    filled-new-array {v3}, [I

    move-result-object v3

    iget-object v4, p0, Lcom/noober/background/drawable/PressDrawableCreator;->drawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
