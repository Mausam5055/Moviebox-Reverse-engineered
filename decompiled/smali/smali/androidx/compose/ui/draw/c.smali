.class public final Landroidx/compose/ui/draw/c;
.super Ljava/lang/Object;

# interfaces
.implements Lo0/e;


# instance fields
.field private a:Landroidx/compose/ui/draw/a;

.field private b:Landroidx/compose/ui/draw/h;

.field private c:Lz/c;

.field private d:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/ui/draw/i;->a:Landroidx/compose/ui/draw/i;

    iput-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    return-void
.end method


# virtual methods
.method public final B(Lz/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/c;->c:Lz/c;

    return-void
.end method

.method public final C(Landroidx/compose/ui/draw/h;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/c;->b:Landroidx/compose/ui/draw/h;

    return-void
.end method

.method public C0()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->getDensity()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/n;->C0()F

    move-result v0

    return v0
.end method

.method public final D(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/c;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic E0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->e(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public synthetic H(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/m;->b(Lo0/n;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic J(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/m;->a(Lo0/n;J)F

    move-result p1

    return p1
.end method

.method public synthetic Q(F)J
    .locals 2

    invoke-static {p0, p1}, Lo0/d;->g(Lo0/e;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic Q0(J)J
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->f(Lo0/e;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic c0(F)I
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->a(Lo0/e;F)I

    move-result p1

    return p1
.end method

.method public getDensity()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->getDensity()Lo0/e;

    move-result-object v0

    invoke-interface {v0}, Lo0/e;->getDensity()F

    move-result v0

    return v0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h0(J)F
    .locals 0

    invoke-static {p0, p1, p2}, Lo0/d;->d(Lo0/e;J)F

    move-result p1

    return p1
.end method

.method public final i()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    invoke-interface {v0}, Landroidx/compose/ui/draw/a;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public final n()Landroidx/compose/ui/draw/h;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/c;->b:Landroidx/compose/ui/draw/h;

    return-object v0
.end method

.method public final v(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/h;
    .locals 1

    new-instance v0, Landroidx/compose/ui/draw/h;

    invoke-direct {v0, p1}, Landroidx/compose/ui/draw/h;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Landroidx/compose/ui/draw/c;->b:Landroidx/compose/ui/draw/h;

    return-object v0
.end method

.method public synthetic x0(I)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->c(Lo0/e;I)F

    move-result p1

    return p1
.end method

.method public synthetic y0(F)F
    .locals 0

    invoke-static {p0, p1}, Lo0/d;->b(Lo0/e;F)F

    move-result p1

    return p1
.end method

.method public final z(Landroidx/compose/ui/draw/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/draw/c;->a:Landroidx/compose/ui/draw/a;

    return-void
.end method
