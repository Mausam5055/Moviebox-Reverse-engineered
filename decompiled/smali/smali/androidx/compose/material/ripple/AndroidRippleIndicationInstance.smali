.class public final Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
.super Landroidx/compose/material/ripple/RippleIndicationInstance;

# interfaces
.implements Landroidx/compose/runtime/b2;
.implements Landroidx/compose/material/ripple/e;


# instance fields
.field private final c:Z

.field private final d:F

.field private final e:Landroidx/compose/runtime/a3;

.field private final f:Landroidx/compose/runtime/a3;

.field private final g:Landroid/view/ViewGroup;

.field private h:Landroidx/compose/material/ripple/RippleContainer;

.field private final i:Landroidx/compose/runtime/i1;

.field private final j:Landroidx/compose/runtime/i1;

.field private k:J

.field private l:I

.field private final m:Lkotlin/jvm/functions/Function0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Landroidx/compose/material/ripple/RippleIndicationInstance;-><init>(ZLandroidx/compose/runtime/a3;)V

    iput-boolean p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->c:Z

    iput p2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    iput-object p3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->e:Landroidx/compose/runtime/a3;

    iput-object p4, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->f:Landroidx/compose/runtime/a3;

    iput-object p5, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->g:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i:Landroidx/compose/runtime/i1;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p1, p2, p1}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j:Landroidx/compose/runtime/i1;

    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l:I

    new-instance p1, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;

    invoke-direct {p1, p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroid/view/ViewGroup;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static final synthetic f(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i()Z

    move-result p0

    return p0
.end method

.method public static final synthetic g(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l(Z)V

    return-void
.end method

.method private final h()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->disposeRippleIfNeeded(Landroidx/compose/material/ripple/e;)V

    :cond_0
    return-void
.end method

.method private final i()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final j()Landroidx/compose/material/ripple/RippleContainer;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->g:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/compose/material/ripple/j;->a(Landroid/view/ViewGroup;)Landroidx/compose/material/ripple/RippleContainer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h:Landroidx/compose/material/ripple/RippleContainer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final k()Landroidx/compose/material/ripple/RippleHostView;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    return-object v0
.end method

.method private final l(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final m(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lz/c;)V
    .locals 8

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k:J

    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->c:Z

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/material/ripple/d;->a(Lo0/e;ZJ)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->d(F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    invoke-interface {p1, v0}, Lo0/e;->c0(F)I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l:I

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->e:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v4

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->f:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/c;

    invoke-virtual {v0}, Landroidx/compose/material/ripple/c;->d()F

    move-result v6

    invoke-interface {p1}, Lz/c;->Y0()V

    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->d:F

    invoke-virtual {p0, p1, v0, v4, v5}, Landroidx/compose/material/ripple/RippleIndicationInstance;->c(Lz/g;FJ)V

    invoke-interface {p1}, Lz/g;->H0()Lz/d;

    move-result-object v0

    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->i()Z

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k()Landroidx/compose/material/ripple/RippleHostView;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v2

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/material/ripple/RippleHostView;->setRippleProperties-07v42R4(JJF)V

    invoke-static {v0}, Landroidx/compose/ui/graphics/h0;->d(Landroidx/compose/ui/graphics/m1;)Landroid/graphics/Canvas;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public b(Lp/k$b;Lkotlinx/coroutines/n0;)V
    .locals 10

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->j()Landroidx/compose/material/ripple/RippleContainer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/e;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object p2

    iget-boolean v2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->c:Z

    iget-wide v3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k:J

    iget v5, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->l:I

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->e:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/u1;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/u1;->u()J

    move-result-wide v6

    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->f:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/material/ripple/c;

    invoke-virtual {v0}, Landroidx/compose/material/ripple/c;->d()F

    move-result v8

    iget-object v9, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m:Lkotlin/jvm/functions/Function0;

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Lp/k$b;ZJIJFLkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, p2}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void
.end method

.method public d(Lp/k$b;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->k()Landroidx/compose/material/ripple/RippleHostView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    :cond_0
    return-void
.end method

.method public onAbandoned()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h()V

    return-void
.end method

.method public onForgotten()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->h()V

    return-void
.end method

.method public onRemembered()V
    .locals 0

    return-void
.end method

.method public u0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->m(Landroidx/compose/material/ripple/RippleHostView;)V

    return-void
.end method
