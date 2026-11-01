.class public abstract Landroidx/compose/foundation/ProgressSemanticsKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;FLkotlin/ranges/ClosedFloatingPointRange;I)Landroidx/compose/ui/f;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/ProgressSemanticsKt$progressSemantics$1;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;I)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Landroidx/compose/ui/semantics/k;->b(Landroidx/compose/ui/f;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
