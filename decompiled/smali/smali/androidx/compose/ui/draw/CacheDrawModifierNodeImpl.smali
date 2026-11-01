.class final Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/draw/b;
.implements Landroidx/compose/ui/node/u0;
.implements Landroidx/compose/ui/draw/a;


# instance fields
.field private final n:Landroidx/compose/ui/draw/c;

.field private o:Z

.field private p:Landroidx/compose/ui/draw/k;

.field private q:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/draw/c;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    iput-object p2, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->q:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/draw/c;->z(Landroidx/compose/ui/draw/a;)V

    new-instance p2, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;

    invoke-direct {p2, p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$1;-><init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;)V

    invoke-virtual {p1, p2}, Landroidx/compose/ui/draw/c;->D(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final F1(Lz/c;)Landroidx/compose/ui/draw/h;
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/c;->C(Landroidx/compose/ui/draw/h;)V

    invoke-virtual {v0, p1}, Landroidx/compose/ui/draw/c;->B(Lz/c;)V

    new-instance p1, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1;

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1;-><init>(Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;Landroidx/compose/ui/draw/c;)V

    invoke-static {p0, p1}, Landroidx/compose/ui/node/v0;->a(Landroidx/compose/ui/f$c;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0}, Landroidx/compose/ui/draw/c;->n()Landroidx/compose/ui/draw/h;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o:Z

    goto :goto_0

    :cond_0
    const-string p1, "DrawResult not defined, did you forget to call onDraw?"

    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    invoke-virtual {p1}, Landroidx/compose/ui/draw/c;->n()Landroidx/compose/ui/draw/h;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final D1()Lkotlin/jvm/functions/Function1;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->q:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final E1()Landroidx/compose/ui/graphics/a4;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/draw/k;

    invoke-direct {v0}, Landroidx/compose/ui/draw/k;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/draw/k;->c()Landroidx/compose/ui/graphics/a4;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->j(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/graphics/a4;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/k;->e(Landroidx/compose/ui/graphics/a4;)V

    :cond_1
    return-object v0
.end method

.method public Z()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o0()V

    return-void
.end method

.method public getDensity()Lo0/e;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->i(Landroidx/compose/ui/node/f;)Lo0/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->l(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 2

    const/16 v0, 0x80

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/u;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Lz/c;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->F1(Lz/c;)Landroidx/compose/ui/draw/h;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/draw/h;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public o0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/draw/k;->d()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o:Z

    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->n:Landroidx/compose/ui/draw/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/compose/ui/draw/c;->C(Landroidx/compose/ui/draw/h;)V

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

.method public o1()V
    .locals 1

    invoke-super {p0}, Landroidx/compose/ui/f$c;->o1()V

    iget-object v0, p0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->p:Landroidx/compose/ui/draw/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/draw/k;->d()V

    :cond_0
    return-void
.end method

.method public w0()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;->o0()V

    return-void
.end method
