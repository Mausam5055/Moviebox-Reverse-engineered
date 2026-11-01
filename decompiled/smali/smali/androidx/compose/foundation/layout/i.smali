.class public abstract Landroidx/compose/foundation/layout/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/layout/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    sget-object v1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v2}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;)V

    sput-object v0, Landroidx/compose/foundation/layout/i;->a:Landroidx/compose/ui/layout/t;

    return-void
.end method

.method public static final a(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/layout/t;
    .locals 5

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.layout.columnMeasurePolicy (Column.kt:106)"

    const v2, 0x40f63170

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/b;->d()Landroidx/compose/foundation/layout/b$k;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/b;->a:Landroidx/compose/ui/b$a;

    invoke-virtual {v0}, Landroidx/compose/ui/b$a;->i()Landroidx/compose/ui/b$b;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x149ef7e8

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    sget-object p0, Landroidx/compose/foundation/layout/i;->a:Landroidx/compose/ui/layout/t;

    goto :goto_1

    :cond_1
    const v0, 0x149fca3f

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->P(I)V

    and-int/lit8 v0, p3, 0xe

    xor-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    and-int/lit8 v0, p3, 0x6

    if-ne v0, v3, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    and-int/lit8 v3, p3, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-le v3, v4, :cond_5

    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v4, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    or-int p3, v0, v1

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_8

    sget-object p3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_9

    :cond_8
    new-instance v0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;-><init>(Landroidx/compose/foundation/layout/b$k;Landroidx/compose/ui/b$b;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_9
    move-object p0, v0

    check-cast p0, Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    invoke-interface {p2}, Landroidx/compose/runtime/i;->K()V

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_a
    return-object p0
.end method

.method public static final b(ZIIII)J
    .locals 0

    if-nez p0, :cond_0

    invoke-static {p2, p4, p1, p3}, Lo0/c;->a(IIII)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Lo0/b;->b:Lo0/b$a;

    invoke-virtual {p0, p2, p4, p1, p3}, Lo0/b$a;->a(IIII)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
