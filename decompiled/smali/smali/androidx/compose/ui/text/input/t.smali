.class public abstract Landroidx/compose/ui/text/input/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/t$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/input/t$a;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/input/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/input/t;->a:Landroidx/compose/ui/text/input/t$a;

    const/4 v0, -0x1

    invoke-static {v0}, Landroidx/compose/ui/text/input/t;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/t;->b:I

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/text/input/t;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/t;->c:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/text/input/t;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/t;->d:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/text/input/t;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/t;->e:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/ui/text/input/t;->e(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/t;->f:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/t;->d:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/t;->c:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/t;->f:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/t;->e:I

    return v0
.end method

.method private static e(I)I
    .locals 0

    return p0
.end method

.method public static final f(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(I)I
    .locals 0

    return p0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/t;->b:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/t;->f(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Unspecified"

    goto :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/input/t;->c:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/t;->f(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "None"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/input/t;->d:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/t;->f(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Characters"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/input/t;->e:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/t;->f(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Words"

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/text/input/t;->f:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/t;->f(II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Sentences"

    goto :goto_0

    :cond_4
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
