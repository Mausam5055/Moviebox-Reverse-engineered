.class public abstract Landroidx/compose/ui/text/input/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/input/u$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/ui/text/input/u$a;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/text/input/u$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/u$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/text/input/u;->a:Landroidx/compose/ui/text/input/u$a;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->b:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->c:I

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->d:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->e:I

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->f:I

    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->g:I

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->h:I

    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->i:I

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->j:I

    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/compose/ui/text/input/u;->j(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/text/input/u;->k:I

    return-void
.end method

.method public static final synthetic a()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->d:I

    return v0
.end method

.method public static final synthetic b()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->k:I

    return v0
.end method

.method public static final synthetic c()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->h:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->e:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->j:I

    return v0
.end method

.method public static final synthetic f()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->i:I

    return v0
.end method

.method public static final synthetic g()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->f:I

    return v0
.end method

.method public static final synthetic h()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->c:I

    return v0
.end method

.method public static final synthetic i()I
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->g:I

    return v0
.end method

.method private static j(I)I
    .locals 0

    return p0
.end method

.method public static final k(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(I)I
    .locals 0

    return p0
.end method

.method public static m(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/text/input/u;->b:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Unspecified"

    goto/16 :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/text/input/u;->c:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Text"

    goto :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/text/input/u;->d:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Ascii"

    goto :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/text/input/u;->e:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "Number"

    goto :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/text/input/u;->f:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "Phone"

    goto :goto_0

    :cond_4
    sget v0, Landroidx/compose/ui/text/input/u;->g:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "Uri"

    goto :goto_0

    :cond_5
    sget v0, Landroidx/compose/ui/text/input/u;->h:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "Email"

    goto :goto_0

    :cond_6
    sget v0, Landroidx/compose/ui/text/input/u;->i:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Password"

    goto :goto_0

    :cond_7
    sget v0, Landroidx/compose/ui/text/input/u;->j:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "NumberPassword"

    goto :goto_0

    :cond_8
    sget v0, Landroidx/compose/ui/text/input/u;->k:I

    invoke-static {p0, v0}, Landroidx/compose/ui/text/input/u;->k(II)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Decimal"

    goto :goto_0

    :cond_9
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method
