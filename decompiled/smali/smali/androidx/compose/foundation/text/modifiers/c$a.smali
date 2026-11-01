.class public final Landroidx/compose/foundation/text/modifiers/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/modifiers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/modifiers/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/text/modifiers/c;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/d0;Lo0/e;Landroidx/compose/ui/text/font/h$b;)Landroidx/compose/foundation/text/modifiers/c;
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->g()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->f()Landroidx/compose/ui/text/d0;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Lo0/e;->getDensity()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->d()Lo0/e;

    move-result-object v1

    invoke-interface {v1}, Lo0/e;->getDensity()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->e()Landroidx/compose/ui/text/font/h$b;

    move-result-object v0

    if-ne p5, v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Landroidx/compose/foundation/text/modifiers/c;->a()Landroidx/compose/foundation/text/modifiers/c;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->g()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->f()Landroidx/compose/ui/text/d0;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Lo0/e;->getDensity()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->d()Lo0/e;

    move-result-object v1

    invoke-interface {v1}, Lo0/e;->getDensity()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/modifiers/c;->e()Landroidx/compose/ui/text/font/h$b;

    move-result-object v0

    if-ne p5, v0, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Landroidx/compose/foundation/text/modifiers/c;

    invoke-static {p3, p2}, Landroidx/compose/ui/text/e0;->c(Landroidx/compose/ui/text/d0;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/d0;

    move-result-object v3

    invoke-interface {p4}, Lo0/e;->getDensity()F

    move-result p3

    invoke-interface {p4}, Lo0/n;->C0()F

    move-result p4

    invoke-static {p3, p4}, Lo0/g;->a(FF)Lo0/e;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/modifiers/c;-><init>(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/d0;Lo0/e;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Landroidx/compose/foundation/text/modifiers/c;->b(Landroidx/compose/foundation/text/modifiers/c;)V

    return-object p1
.end method
