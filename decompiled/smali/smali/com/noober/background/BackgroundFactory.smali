.class public Lcom/noober/background/BackgroundFactory;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final mConstructorArgs:[Ljava/lang/Object;

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

.field private mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sput-object v1, Lcom/noober/background/BackgroundFactory;->sConstructorSignature:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    sput-object v0, Lcom/noober/background/BackgroundFactory;->sConstructorMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/noober/background/BackgroundFactory;->methodMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/InflateException;
        }
    .end annotation

    sget-object v0, Lcom/noober/background/BackgroundFactory;->sConstructorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    sget-object p2, Lcom/noober/background/BackgroundFactory;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object p0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot create \u3010"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3011 : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackgroundLibrary"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "class"

    invoke-interface {p2, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p2, v3, v0

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v4, -0x1

    if-ne v4, p2, :cond_5

    const-string p2, "View"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "android.view."

    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    const-string p2, "android.widget."

    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    :cond_3
    if-nez p2, :cond_4

    const-string p2, "android.webkit."

    invoke-static {p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    aput-object v1, v3, v2

    aput-object v1, v3, v0

    return-object p2

    :cond_5
    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/noober/background/BackgroundFactory;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    aput-object v1, v3, v2

    aput-object v1, v3, v0

    return-object p0

    :catch_0
    :try_start_2
    const-string p0, "BackgroundLibrary"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create \u3010"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u3011 : "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object p0, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p0, v2

    aput-object v1, p0, v0

    return-object v1

    :goto_1
    sget-object p1, Lcom/noober/background/BackgroundFactory;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v1, p1, v2

    aput-object v1, p1, v0

    throw p0
.end method

.method private static findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    sget-object v0, Lcom/noober/background/BackgroundFactory;->methodMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/noober/background/BackgroundFactory;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static hasGradientState(Landroid/content/res/TypedArray;)Z
    .locals 1

    sget v0, Lcom/noober/background/R$styleable;->background_bl_checkable_gradient_startColor:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/noober/background/R$styleable;->background_bl_checked_gradient_startColor:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/noober/background/R$styleable;->background_bl_enabled_gradient_startColor:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/noober/background/R$styleable;->background_bl_selected_gradient_startColor:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/noober/background/R$styleable;->background_bl_pressed_gradient_startColor:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/noober/background/R$styleable;->background_bl_focused_gradient_startColor:I

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static hasStatus(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V
    .locals 13

    const/4 v0, 0x0

    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_position:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/noober/background/R$styleable;->background_bl_stroke_width:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    sget v3, Lcom/noober/background/R$styleable;->background_bl_stroke_position:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    neg-float v4, v1

    :goto_0
    const/4 v5, 0x4

    invoke-static {v3, v5}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    neg-float v5, v1

    :goto_1
    const/16 v6, 0x8

    invoke-static {v3, v6}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    neg-float v6, v1

    :goto_2
    const/16 v7, 0x10

    invoke-static {v3, v7}, Lcom/noober/background/BackgroundFactory;->hasStatus(II)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    neg-float v1, v1

    :goto_3
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object p0, v7, v0

    invoke-direct {v3, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    float-to-int v9, v4

    float-to-int v10, v5

    float-to-int v11, v6

    float-to-int v12, v1

    const/4 v8, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move-object p0, v3

    :cond_4
    sget v0, Lcom/noober/background/R$styleable;->background_bl_shape_alpha:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Lcom/noober/background/R$styleable;->background_bl_shape_alpha:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    const/high16 v1, 0x437f0000    # 255.0f

    if-ltz v0, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    cmpg-float v0, p2, v2

    if-gtz v0, :cond_6

    goto :goto_4

    :cond_6
    mul-float v2, p2, v1

    :goto_4
    float-to-int p2, v2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_7
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 3

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2, p0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x4

    if-ne p3, v1, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2, v2, p0, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    sget p3, Lcom/noober/background/R$styleable;->bl_other_bl_position:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p3

    invoke-virtual {p0, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, p3}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    goto :goto_0

    :cond_4
    invoke-static {p0, p1, p3}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static setViewBackground(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/noober/background/R$styleable;->background:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v3, Lcom/noober/background/R$styleable;->background_press:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    sget-object v4, Lcom/noober/background/R$styleable;->background_selector:[I

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget-object v5, Lcom/noober/background/R$styleable;->text_selector:[I

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget-object v6, Lcom/noober/background/R$styleable;->background_button_drawable:[I

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    sget-object v7, Lcom/noober/background/R$styleable;->bl_other:[I

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget-object v8, Lcom/noober/background/R$styleable;->bl_anim:[I

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    sget-object v9, Lcom/noober/background/R$styleable;->background_multi_selector:[I

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    sget-object v10, Lcom/noober/background/R$styleable;->background_multi_selector_text:[I

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    sget-object v11, Lcom/noober/background/R$styleable;->bl_text:[I

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object p3

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v12, p3

    goto/16 :goto_7

    :cond_0
    if-nez p3, :cond_1

    move-object/from16 v12, p0

    :try_start_1
    invoke-static {v0, v12, v1}, Lcom/noober/background/BackgroundFactory;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object/from16 v12, p3

    :goto_0
    const/4 v13, 0x0

    if-nez v12, :cond_2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object v13

    :cond_2
    :try_start_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-lez v14, :cond_4

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-gtz v14, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Background_selector and background_multi_selector cannot be used simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_4
    :goto_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-lez v14, :cond_6

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    if-gtz v14, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text_selector and background_multi_selector_text cannot be used simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    const/4 v15, 0x0

    if-lez v14, :cond_7

    instance-of v14, v12, Landroid/widget/CompoundButton;

    if-eqz v14, :cond_7

    move-object v14, v12

    check-cast v14, Landroid/widget/CompoundButton;

    invoke-static {v2, v6}, Lcom/noober/background/drawable/DrawableFactory;->getButtonDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    invoke-virtual {v14, v13}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_8

    invoke-static {v2, v4}, Lcom/noober/background/drawable/DrawableFactory;->getSelectorDrawable(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    invoke-static {v13, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    :goto_3
    const/4 v14, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_9

    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-static {v13, v2, v3}, Lcom/noober/background/drawable/DrawableFactory;->getPressDrawable(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v14

    invoke-static {v14, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    move-object/from16 v16, v14

    move-object v14, v13

    move-object/from16 v13, v16

    goto :goto_5

    :cond_9
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_a

    invoke-static {v0, v9, v2}, Lcom/noober/background/drawable/DrawableFactory;->getMultiSelectorDrawable(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    invoke-static {v13, v12, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_c

    invoke-static {v2}, Lcom/noober/background/BackgroundFactory;->hasGradientState(Landroid/content/res/TypedArray;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getStateGradientDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    invoke-static {v13, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_3

    :cond_b
    invoke-static {v2}, Lcom/noober/background/drawable/DrawableFactory;->getDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v13

    invoke-static {v13, v12, v7, v2}, Lcom/noober/background/BackgroundFactory;->setDrawable(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    move-object v14, v13

    const/4 v13, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v13

    if-lez v13, :cond_d

    invoke-static {v8}, Lcom/noober/background/drawable/DrawableFactory;->getAnimationDrawable(Landroid/content/res/TypedArray;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v13

    invoke-static {v13, v12, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    sget v14, Lcom/noober/background/R$styleable;->bl_anim_bl_anim_auto_start:I

    invoke-virtual {v8, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_d
    :goto_4
    const/4 v13, 0x0

    goto :goto_3

    :goto_5
    instance-of v15, v12, Landroid/widget/TextView;

    if-eqz v15, :cond_e

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_e

    move-object v0, v12

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v5}, Lcom/noober/background/drawable/DrawableFactory;->getTextSelectorColor(Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    :cond_e
    instance-of v15, v12, Landroid/widget/TextView;

    if-eqz v15, :cond_f

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_f

    move-object v1, v12

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v0, v10}, Lcom/noober/background/drawable/DrawableFactory;->getMultiTextColorSelectorColorCreator(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    :cond_f
    instance-of v15, v12, Landroid/widget/TextView;

    if-eqz v15, :cond_10

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v15

    if-lez v15, :cond_10

    move-object v15, v12

    check-cast v15, Landroid/widget/TextView;

    invoke-static {v0, v1, v15}, Lcom/noober/background/drawable/TextViewFactory;->setTextGradientColor(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V

    :cond_10
    :goto_6
    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_enable:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_color:I

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget v0, Lcom/noober/background/R$styleable;->background_bl_ripple_color:I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    if-nez v13, :cond_11

    move-object v13, v14

    :cond_11
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {v1, v0, v13, v13}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1, v12, v2}, Lcom/noober/background/BackgroundFactory;->setBackground(Landroid/graphics/drawable/Drawable;Landroid/view/View;Landroid/content/res/TypedArray;)V

    :cond_12
    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_function:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Lcom/noober/background/R$styleable;->bl_other_bl_function:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13, v0}, Lcom/noober/background/BackgroundFactory;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v13, Lcom/noober/background/BackgroundFactory$a;

    invoke-direct {v13, v0, v1}, Lcom/noober/background/BackgroundFactory$a;-><init>(Ljava/lang/reflect/Method;Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_13
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object v12

    :goto_7
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    return-object v12

    :goto_8
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/noober/background/BackgroundFactory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const-string v0, "com.noober.background.view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-static {p1, p2, p3, v1}, Lcom/noober/background/BackgroundFactory;->setViewBackground(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setInterceptFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 0

    iput-object p1, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory:Landroid/view/LayoutInflater$Factory;

    return-void
.end method

.method public setInterceptFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 0

    iput-object p1, p0, Lcom/noober/background/BackgroundFactory;->mViewCreateFactory2:Landroid/view/LayoutInflater$Factory2;

    return-void
.end method
