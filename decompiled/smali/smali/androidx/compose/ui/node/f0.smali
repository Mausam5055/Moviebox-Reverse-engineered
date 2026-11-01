.class public abstract Landroidx/compose/ui/node/f0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lo0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lo0/g;->b(FFILjava/lang/Object;)Lo0/e;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/node/f0;->a:Lo0/e;

    return-void
.end method

.method public static final synthetic a()Lo0/e;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/f0;->a:Lo0/e;

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->g0()Landroidx/compose/ui/node/y0;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "LayoutNode should be attached to an owner"

    invoke-static {p0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
