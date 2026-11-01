.class public final Landroidx/compose/foundation/layout/s;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/a1;


# instance fields
.field private n:F

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/s;->n:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/s;->o:Z

    return-void
.end method


# virtual methods
.method public D1(Lo0/e;Ljava/lang/Object;)Landroidx/compose/foundation/layout/z;
    .locals 7

    instance-of p1, p2, Landroidx/compose/foundation/layout/z;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/compose/foundation/layout/z;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Landroidx/compose/foundation/layout/z;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/z;-><init>(FZLandroidx/compose/foundation/layout/m;Landroidx/compose/foundation/layout/p;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    iget p1, p0, Landroidx/compose/foundation/layout/s;->n:F

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/z;->g(F)V

    iget-boolean p1, p0, Landroidx/compose/foundation/layout/s;->o:Z

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/z;->f(Z)V

    return-object p2
.end method

.method public final E1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/s;->o:Z

    return-void
.end method

.method public final F1(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/s;->n:F

    return-void
.end method

.method public bridge synthetic v0(Lo0/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/s;->D1(Lo0/e;Ljava/lang/Object;)Landroidx/compose/foundation/layout/z;

    move-result-object p1

    return-object p1
.end method
