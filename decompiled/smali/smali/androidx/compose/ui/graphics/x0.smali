.class public abstract Landroidx/compose/ui/graphics/x0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/x0$a;
    }
.end annotation


# direct methods
.method public static final a()Landroidx/compose/ui/graphics/Path;
    .locals 3

    new-instance v0, Landroidx/compose/ui/graphics/u0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/ui/graphics/u0;-><init>(Landroid/graphics/Path;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final synthetic b(Landroidx/compose/ui/graphics/Path$Direction;)Landroid/graphics/Path$Direction;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/graphics/x0;->d(Landroidx/compose/ui/graphics/Path$Direction;)Landroid/graphics/Path$Direction;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final d(Landroidx/compose/ui/graphics/Path$Direction;)Landroid/graphics/Path$Direction;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/x0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_0
    return-object p0
.end method
