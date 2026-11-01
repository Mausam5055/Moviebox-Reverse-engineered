.class public final Landroidx/window/layout/f0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/window/layout/c0;


# static fields
.field public static final a:Landroidx/window/layout/f0;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/f0;

    invoke-direct {v0}, Landroidx/window/layout/f0;-><init>()V

    sput-object v0, Landroidx/window/layout/f0;->a:Landroidx/window/layout/f0;

    const-class v0, Landroidx/window/layout/f0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowMetricsCalculatorC\u2026at::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final f(Landroid/view/Display;)Landroid/view/DisplayCutout;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.view.DisplayInfo"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDisplayInfo"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v6, v7, v0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "displayCutout"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/window/layout/d0;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/window/layout/e0;->a(Ljava/lang/Object;)Landroid/view/DisplayCutout;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    goto :goto_5

    :goto_0
    sget-object v0, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_1
    sget-object v0, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_2
    sget-object v0, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_3
    sget-object v0, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_4
    sget-object v0, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    sget-object v0, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_6
    return-object v2
.end method

.method private final g(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "dimen"

    const-string v1, "android"

    const-string v2, "navigation_bar_height"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final i(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Landroidx/window/layout/b0;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/window/layout/e;->a:Landroidx/window/layout/e;

    invoke-virtual {v0, p1}, Landroidx/window/layout/e;->a(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->e(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->c(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->b(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object p1

    :goto_0
    new-instance v0, Landroidx/window/layout/b0;

    invoke-direct {v0, p1}, Landroidx/window/layout/b0;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    const-string v0, "defaultDisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->h(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput v2, v1, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    :goto_1
    return-object v1
.end method

.method public final c(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    sget-object v2, Landroidx/window/layout/b;->a:Landroidx/window/layout/b;

    invoke-virtual {v2, p1}, Landroidx/window/layout/b;->a(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "defaultDisplay"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroidx/window/layout/f0;->h(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {p0, p1}, Landroidx/window/layout/f0;->g(Landroid/content/Context;)I

    move-result p1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int v3, v2, p1

    iget v4, v1, Landroid/graphics/Point;->y:I

    if-ne v3, v4, :cond_0

    add-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int v3, v2, p1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v3, v1, :cond_1

    add-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final d(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :try_start_0
    const-class v2, Landroid/content/res/Configuration;

    const-string v3, "windowConfiguration"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/window/layout/b;->a:Landroidx/window/layout/b;

    invoke-virtual {v2, p1}, Landroidx/window/layout/b;->a(Landroid/app/Activity;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "null cannot be cast to non-null type android.graphics.Rect"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getBounds"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "getAppBounds"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    sget-object v2, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1, v0}, Landroidx/window/layout/f0;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    goto :goto_4

    :goto_1
    sget-object v2, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1, v0}, Landroidx/window/layout/f0;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    goto :goto_4

    :goto_2
    sget-object v2, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1, v0}, Landroidx/window/layout/f0;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    goto :goto_4

    :goto_3
    sget-object v2, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1, v0}, Landroidx/window/layout/f0;->i(Landroid/app/Activity;Landroid/graphics/Rect;)V

    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    sget-object v3, Landroidx/window/layout/f;->a:Landroidx/window/layout/f;

    const-string v4, "currentDisplay"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Landroidx/window/layout/f;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    sget-object v3, Landroidx/window/layout/b;->a:Landroidx/window/layout/b;

    invoke-virtual {v3, p1}, Landroidx/window/layout/b;->a(Landroid/app/Activity;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    invoke-direct {p0, p1}, Landroidx/window/layout/f0;->g(Landroid/content/Context;)I

    move-result v4

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v6, v4

    iget v8, v2, Landroid/graphics/Point;->y:I

    if-ne v7, v8, :cond_3

    add-int/2addr v6, v4

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v6, v4

    iget v8, v2, Landroid/graphics/Point;->x:I

    if-ne v7, v8, :cond_4

    add-int/2addr v6, v4

    iput v6, v0, Landroid/graphics/Rect;->right:I

    goto :goto_5

    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-ne v6, v4, :cond_5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    :cond_5
    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v6, v2, Landroid/graphics/Point;->x:I

    if-lt v4, v6, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-ge v4, v6, :cond_a

    :cond_6
    invoke-virtual {v3, p1}, Landroidx/window/layout/b;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-direct {p0, v1}, Landroidx/window/layout/f0;->f(Landroid/view/Display;)Landroid/view/DisplayCutout;

    move-result-object p1

    if-eqz p1, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sget-object v3, Landroidx/window/layout/k;->a:Landroidx/window/layout/k;

    invoke-virtual {v3, p1}, Landroidx/window/layout/k;->b(Landroid/view/DisplayCutout;)I

    move-result v4

    if-ne v1, v4, :cond_7

    iput v5, v0, Landroid/graphics/Rect;->left:I

    :cond_7
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v4

    invoke-virtual {v3, p1}, Landroidx/window/layout/k;->c(Landroid/view/DisplayCutout;)I

    move-result v4

    if-ne v1, v4, :cond_8

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, p1}, Landroidx/window/layout/k;->c(Landroid/view/DisplayCutout;)I

    move-result v4

    add-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :cond_8
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, p1}, Landroidx/window/layout/k;->d(Landroid/view/DisplayCutout;)I

    move-result v4

    if-ne v1, v4, :cond_9

    iput v5, v0, Landroid/graphics/Rect;->top:I

    :cond_9
    iget v1, v2, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    invoke-virtual {v3, p1}, Landroidx/window/layout/k;->a(Landroid/view/DisplayCutout;)I

    move-result v2

    if-ne v1, v2, :cond_a

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, p1}, Landroidx/window/layout/k;->a(Landroid/view/DisplayCutout;)I

    move-result p1

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_a
    return-object v0
.end method

.method public final e(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "windowConfiguration"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBounds"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.graphics.Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_4

    :goto_1
    sget-object v1, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_4

    :goto_2
    sget-object v1, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_4

    :goto_3
    sget-object v1, Landroidx/window/layout/f0;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, p1}, Landroidx/window/layout/f0;->d(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v2

    :goto_4
    return-object v2
.end method

.method public final h(Landroid/view/Display;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "display"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sget-object v1, Landroidx/window/layout/f;->a:Landroidx/window/layout/f;

    invoke-virtual {v1, p1, v0}, Landroidx/window/layout/f;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    return-object v0
.end method
