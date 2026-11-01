.class public abstract Landroidx/compose/foundation/i0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/g;Lp/i;Landroidx/compose/foundation/gestures/d;Landroidx/compose/runtime/i;II)Landroidx/compose/ui/f;
    .locals 9

    move-object v2, p2

    move-object/from16 v0, p8

    and-int/lit8 v1, p10, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v3, "androidx.compose.foundation.scrollingContainer (ScrollingContainer.kt:40)"

    const v4, -0x64017657

    move/from16 v5, p9

    invoke-static {v4, v5, v1, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_1
    sget-object v1, Landroidx/compose/foundation/gestures/m;->a:Landroidx/compose/foundation/gestures/m;

    const/4 v3, 0x6

    invoke-virtual {v1, v0, v3}, Landroidx/compose/foundation/gestures/m;->b(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/f0;

    move-result-object v3

    move-object v4, p0

    invoke-static {p0, p2}, Landroidx/compose/foundation/g;->a(Landroidx/compose/ui/f;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/compose/foundation/g0;->a(Landroidx/compose/ui/f;Landroidx/compose/foundation/f0;)Landroidx/compose/ui/f;

    move-result-object v4

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/s1;

    move-result-object v5

    invoke-interface {v0, v5}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    move v5, p4

    invoke-virtual {v1, v0, p2, p4}, Landroidx/compose/foundation/gestures/m;->c(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v5

    move-object v0, v4

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableKt;->f(Landroidx/compose/ui/f;Landroidx/compose/foundation/gestures/o;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/f0;ZZLandroidx/compose/foundation/gestures/g;Lp/i;Landroidx/compose/foundation/gestures/d;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_2
    return-object v0
.end method
