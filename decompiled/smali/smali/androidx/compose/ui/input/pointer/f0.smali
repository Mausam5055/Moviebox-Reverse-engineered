.class public abstract Landroidx/compose/ui/input/pointer/f0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(JLkotlin/jvm/functions/Function1;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-wide v0, p0

    move-wide v2, p0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/o;JLkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/compose/ui/input/pointer/f0;->d(Landroidx/compose/ui/input/pointer/o;JLkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/o;JLkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/compose/ui/input/pointer/f0;->d(Landroidx/compose/ui/input/pointer/o;JLkotlin/jvm/functions/Function1;Z)V

    return-void
.end method

.method private static final d(Landroidx/compose/ui/input/pointer/o;JLkotlin/jvm/functions/Function1;Z)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/o;->d()Landroid/view/MotionEvent;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz p4, :cond_0

    const/4 p4, 0x3

    invoke-virtual {p0, p4}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p4

    neg-float p4, p4

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0, p4, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ly/g;->m(J)F

    move-result p3

    invoke-static {p1, p2}, Ly/g;->n(J)F

    move-result p1

    invoke-virtual {p0, p3, p1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The PointerEvent receiver cannot have a null MotionEvent."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
