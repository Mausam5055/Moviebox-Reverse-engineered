.class final Landroidx/compose/material/RangeSliderLogic;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lp/i;

.field private final b:Lp/i;

.field private final c:Landroidx/compose/runtime/a3;

.field private final d:Landroidx/compose/runtime/a3;

.field private final e:Landroidx/compose/runtime/a3;


# direct methods
.method public constructor <init>(Lp/i;Lp/i;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;Landroidx/compose/runtime/a3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/RangeSliderLogic;->a:Lp/i;

    iput-object p2, p0, Landroidx/compose/material/RangeSliderLogic;->b:Lp/i;

    iput-object p3, p0, Landroidx/compose/material/RangeSliderLogic;->c:Landroidx/compose/runtime/a3;

    iput-object p4, p0, Landroidx/compose/material/RangeSliderLogic;->d:Landroidx/compose/runtime/a3;

    iput-object p5, p0, Landroidx/compose/material/RangeSliderLogic;->e:Landroidx/compose/runtime/a3;

    return-void
.end method


# virtual methods
.method public final a(Z)Lp/i;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/material/RangeSliderLogic;->a:Lp/i;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/material/RangeSliderLogic;->b:Lp/i;

    :goto_0
    return-object p1
.end method

.method public final b(ZFLp/f;Lkotlinx/coroutines/n0;)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->e:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/compose/material/RangeSliderLogic;->c:Landroidx/compose/runtime/a3;

    :goto_0
    invoke-interface {v2}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/compose/material/RangeSliderLogic;->d:Landroidx/compose/runtime/a3;

    goto :goto_0

    :goto_1
    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;

    const/4 p2, 0x0

    invoke-direct {v5, p0, p1, p3, p2}, Landroidx/compose/material/RangeSliderLogic$captureThumb$1;-><init>(Landroidx/compose/material/RangeSliderLogic;ZLp/f;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p4

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final c(F)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/RangeSliderLogic;->c:Landroidx/compose/runtime/a3;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material/RangeSliderLogic;->d:Landroidx/compose/runtime/a3;

    invoke-interface {v1}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method
