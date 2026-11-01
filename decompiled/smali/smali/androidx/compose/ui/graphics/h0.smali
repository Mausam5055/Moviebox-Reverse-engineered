.class public abstract Landroidx/compose/ui/graphics/h0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/graphics/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/h0;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/graphics/e4;)Landroidx/compose/ui/graphics/m1;
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/g0;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/g0;-><init>()V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-static {p0}, Landroidx/compose/ui/graphics/q0;->b(Landroidx/compose/ui/graphics/e4;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static final b(Landroid/graphics/Canvas;)Landroidx/compose/ui/graphics/m1;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/g0;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/g0;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/compose/ui/graphics/g0;->w(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static final synthetic c()Landroid/graphics/Canvas;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/h0;->a:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public static final d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.graphics.AndroidCanvas"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/graphics/g0;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/g0;->v()Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method
