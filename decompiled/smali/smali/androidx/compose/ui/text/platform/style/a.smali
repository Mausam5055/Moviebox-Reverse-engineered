.class public final Landroidx/compose/ui/text/platform/style/a;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final a:Lz/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lz/h;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/a;->a:Lz/h;

    return-void
.end method

.method private final a(I)Landroid/graphics/Paint$Cap;
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/c5;->a:Landroidx/compose/ui/graphics/c5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/c5$a;->a()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/c5$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/c5$a;->c()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/c5;->e(II)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_0
    return-object p1
.end method

.method private final b(I)Landroid/graphics/Paint$Join;
    .locals 2

    sget-object v0, Landroidx/compose/ui/graphics/d5;->a:Landroidx/compose/ui/graphics/d5$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->b()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->c()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/d5$a;->a()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/graphics/d5;->e(II)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    :cond_2
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/a;->a:Lz/h;

    sget-object v1, Lz/l;->a:Lz/l;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lz/m;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/a;->a:Lz/h;

    check-cast v0, Lz/m;

    invoke-virtual {v0}, Lz/m;->f()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/a;->a:Lz/h;

    check-cast v0, Lz/m;

    invoke-virtual {v0}, Lz/m;->d()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/a;->a:Lz/h;

    check-cast v0, Lz/m;

    invoke-virtual {v0}, Lz/m;->c()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/platform/style/a;->b(I)Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/a;->a:Lz/h;

    check-cast v0, Lz/m;

    invoke-virtual {v0}, Lz/m;->b()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/platform/style/a;->a(I)Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/a;->a:Lz/h;

    check-cast v0, Lz/m;

    invoke-virtual {v0}, Lz/m;->e()Landroidx/compose/ui/graphics/p4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :cond_1
    :goto_0
    return-void
.end method
