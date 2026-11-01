.class public abstract Landroidx/compose/material/ripple/RippleIndicationInstance;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/y;


# instance fields
.field private final a:Z

.field private final b:Landroidx/compose/material/ripple/StateLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLandroidx/compose/runtime/a3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/material/ripple/RippleIndicationInstance;->a:Z

    new-instance v0, Landroidx/compose/material/ripple/StateLayer;

    new-instance v1, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;

    invoke-direct {v1, p2}, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;-><init>(Landroidx/compose/runtime/a3;)V

    invoke-direct {v0, p1, v1}, Landroidx/compose/material/ripple/StateLayer;-><init>(ZLkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance;->b:Landroidx/compose/material/ripple/StateLayer;

    return-void
.end method


# virtual methods
.method public abstract b(Lp/k$b;Lkotlinx/coroutines/n0;)V
.end method

.method public final c(Lz/g;FJ)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance;->b:Landroidx/compose/material/ripple/StateLayer;

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p2, p0, Landroidx/compose/material/ripple/RippleIndicationInstance;->a:Z

    invoke-interface {p1}, Lz/g;->i()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Landroidx/compose/material/ripple/d;->a(Lo0/e;ZJ)F

    move-result p2

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lo0/e;->E0(F)F

    move-result p2

    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/material/ripple/StateLayer;->b(Lz/g;FJ)V

    return-void
.end method

.method public abstract d(Lp/k$b;)V
.end method

.method public final e(Lp/f;Lkotlinx/coroutines/n0;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance;->b:Landroidx/compose/material/ripple/StateLayer;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/material/ripple/StateLayer;->c(Lp/f;Lkotlinx/coroutines/n0;)V

    return-void
.end method
