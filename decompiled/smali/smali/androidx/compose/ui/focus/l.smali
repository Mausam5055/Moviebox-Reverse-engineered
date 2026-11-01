.class public abstract Landroidx/compose/ui/focus/l;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/FocusPropertiesElement;

    new-instance v1, Landroidx/compose/ui/focus/l$a;

    invoke-direct {v1, p1}, Landroidx/compose/ui/focus/l$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusPropertiesElement;-><init>(Landroidx/compose/ui/focus/p;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
