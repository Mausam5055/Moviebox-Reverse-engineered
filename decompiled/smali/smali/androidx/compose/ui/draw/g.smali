.class public abstract Landroidx/compose/ui/draw/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/b;
    .locals 2

    new-instance v0, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;

    new-instance v1, Landroidx/compose/ui/draw/c;

    invoke-direct {v1}, Landroidx/compose/ui/draw/c;-><init>()V

    invoke-direct {v0, v1, p0}, Landroidx/compose/ui/draw/CacheDrawModifierNodeImpl;-><init>(Landroidx/compose/ui/draw/c;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/f;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;
    .locals 1

    new-instance v0, Landroidx/compose/ui/draw/DrawBehindElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/draw/DrawBehindElement;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
