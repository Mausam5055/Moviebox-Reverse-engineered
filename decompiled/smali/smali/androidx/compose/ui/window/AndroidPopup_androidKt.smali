.class public abstract Landroidx/compose/ui/window/AndroidPopup_androidKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$LocalPopupTestTag$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->d(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/s1;

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/window/j;Z)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->c(Landroidx/compose/ui/window/j;Z)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroid/graphics/Rect;)Lo0/r;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->e(Landroid/graphics/Rect;)Lo0/r;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Landroidx/compose/ui/window/j;Z)I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static final d(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static final e(Landroid/graphics/Rect;)Lo0/r;
    .locals 4

    new-instance v0, Lo0/r;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Lo0/r;-><init>(IIII)V

    return-object v0
.end method
