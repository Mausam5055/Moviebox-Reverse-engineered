.class public abstract Landroidx/compose/ui/input/pointer/l0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/input/pointer/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/pointer/o;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/compose/ui/input/pointer/o;-><init>(Ljava/util/List;)V

    sput-object v0, Landroidx/compose/ui/input/pointer/l0;->a:Landroidx/compose/ui/input/pointer/o;

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/n0;
    .locals 2

    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, p0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNodeImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public static final synthetic b()Landroidx/compose/ui/input/pointer/o;
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/l0;->a:Landroidx/compose/ui/input/pointer/o;

    return-object v0
.end method

.method public static final c(Landroidx/compose/ui/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/f;
    .locals 8

    new-instance v7, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v7}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/f;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/f;
    .locals 8

    new-instance v7, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v7}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method
