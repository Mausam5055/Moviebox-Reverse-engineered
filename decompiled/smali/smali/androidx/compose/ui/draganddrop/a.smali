.class public final Landroidx/compose/ui/draganddrop/a;
.super Landroid/view/View$DragShadowBuilder;


# instance fields
.field private final a:Lo0/e;

.field private final b:J

.field private final c:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lo0/e;JLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draganddrop/a;->a:Lo0/e;

    iput-wide p2, p0, Landroidx/compose/ui/draganddrop/a;->b:J

    iput-object p4, p0, Landroidx/compose/ui/draganddrop/a;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lo0/e;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/draganddrop/a;-><init>(Lo0/e;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    new-instance v0, Lz/a;

    invoke-direct {v0}, Lz/a;-><init>()V

    iget-object v1, p0, Landroidx/compose/ui/draganddrop/a;->a:Lo0/e;

    iget-wide v2, p0, Landroidx/compose/ui/draganddrop/a;->b:J

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {p1}, Landroidx/compose/ui/graphics/h0;->b(Landroid/graphics/Canvas;)Landroidx/compose/ui/graphics/m1;

    move-result-object p1

    iget-object v5, p0, Landroidx/compose/ui/draganddrop/a;->c:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lz/a$a;->a()Lo0/e;

    move-result-object v7

    invoke-virtual {v6}, Lz/a$a;->b()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-virtual {v6}, Lz/a$a;->c()Landroidx/compose/ui/graphics/m1;

    move-result-object v9

    invoke-virtual {v6}, Lz/a$a;->d()J

    move-result-wide v10

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v6

    invoke-virtual {v6, v1}, Lz/a$a;->j(Lo0/e;)V

    invoke-virtual {v6, v4}, Lz/a$a;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {v6, p1}, Lz/a$a;->i(Landroidx/compose/ui/graphics/m1;)V

    invoke-virtual {v6, v2, v3}, Lz/a$a;->l(J)V

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->n()V

    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/m1;->j()V

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object p1

    invoke-virtual {p1, v7}, Lz/a$a;->j(Lo0/e;)V

    invoke-virtual {p1, v8}, Lz/a$a;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-virtual {p1, v9}, Lz/a$a;->i(Landroidx/compose/ui/graphics/m1;)V

    invoke-virtual {p1, v10, v11}, Lz/a$a;->l(J)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/a;->a:Lo0/e;

    iget-wide v1, p0, Landroidx/compose/ui/draganddrop/a;->b:J

    invoke-static {v1, v2}, Ly/m;->i(J)F

    move-result v1

    invoke-interface {v0, v1}, Lo0/e;->y0(F)F

    move-result v1

    invoke-interface {v0, v1}, Lo0/e;->c0(F)I

    move-result v1

    iget-wide v2, p0, Landroidx/compose/ui/draganddrop/a;->b:J

    invoke-static {v2, v3}, Ly/m;->g(J)F

    move-result v2

    invoke-interface {v0, v2}, Lo0/e;->y0(F)F

    move-result v2

    invoke-interface {v0, v2}, Lo0/e;->c0(F)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iget p1, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
