.class public Lcom/noober/background/drawable/DrawableFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/AnimationDrawableCreator;

    invoke-direct {v0, p0}, Lcom/noober/background/drawable/AnimationDrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/AnimationDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method public static getButtonDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/ButtonDrawableCreator;

    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/ButtonDrawableCreator;-><init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/ButtonDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/GradientDrawableCreator;

    invoke-direct {v0, p0}, Lcom/noober/background/drawable/GradientDrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/GradientDrawableCreator;->create()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/GradientDrawableCreator;

    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/GradientDrawableCreator;-><init>(Landroid/content/res/TypedArray;I)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/GradientDrawableCreator;->create()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getMultiSelectorDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    new-instance v0, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/MultiSelectorDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public static getMultiTextColorSelectorColorCreator(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 1

    new-instance v0, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;

    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/MultiTextColorSelectorColorCreator;->create()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getPressDrawable(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/PressDrawableCreator;

    invoke-direct {v0, p0, p1, p2}, Lcom/noober/background/drawable/PressDrawableCreator;-><init>(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/PressDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public static getSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/SelectorDrawableCreator;

    invoke-direct {v0, p0, p1}, Lcom/noober/background/drawable/SelectorDrawableCreator;-><init>(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/SelectorDrawableCreator;->create()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method public static getSelectorPre21Drawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;

    invoke-direct {v0, p0}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/SelectorPre21DrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getStateGradientDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/noober/background/drawable/GradientStateDrawableCreator;

    invoke-direct {v0, p0}, Lcom/noober/background/drawable/GradientStateDrawableCreator;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/GradientStateDrawableCreator;->create()Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static getTextSelectorColor(Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 1

    new-instance v0, Lcom/noober/background/drawable/ColorStateCreator;

    invoke-direct {v0, p0}, Lcom/noober/background/drawable/ColorStateCreator;-><init>(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Lcom/noober/background/drawable/ColorStateCreator;->create()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
