.class public abstract Landroidx/compose/foundation/lazy/layout/y;
.super Ljava/lang/Object;


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lo0/c;->b(IIIIILjava/lang/Object;)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/layout/y;->a:J

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/lazy/layout/y;->a:J

    return-wide v0
.end method

.method public static final b(Landroidx/compose/ui/f;Landroidx/compose/foundation/lazy/layout/x;)Landroidx/compose/ui/f;
    .locals 1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/lazy/layout/TraversablePrefetchStateModifierElement;-><init>(Landroidx/compose/foundation/lazy/layout/x;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method
