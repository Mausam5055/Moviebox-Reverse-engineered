.class public abstract Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/ui/viewinterop/AndroidViewHolder;)Landroidx/compose/ui/f;
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;-><init>()V

    new-instance v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$3;

    invoke-direct {v1, p1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter_androidKt$pointerInteropFilter$3;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->k(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Landroidx/compose/ui/input/pointer/k0;

    invoke-direct {v1}, Landroidx/compose/ui/input/pointer/k0;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->l(Landroidx/compose/ui/input/pointer/k0;)V

    invoke-virtual {p1, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setOnRequestDisallowInterceptTouchEvent$ui_release(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
