.class public final Landroidx/compose/foundation/layout/q;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/a1;


# instance fields
.field private n:Landroidx/compose/ui/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/b$b;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/q;->n:Landroidx/compose/ui/b$b;

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
    sget-object p1, Landroidx/compose/foundation/layout/m;->a:Landroidx/compose/foundation/layout/m$b;

    iget-object v0, p0, Landroidx/compose/foundation/layout/q;->n:Landroidx/compose/ui/b$b;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/m$b;->a(Landroidx/compose/ui/b$b;)Landroidx/compose/foundation/layout/m;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/z;->e(Landroidx/compose/foundation/layout/m;)V

    return-object p2
.end method

.method public final E1(Landroidx/compose/ui/b$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/layout/q;->n:Landroidx/compose/ui/b$b;

    return-void
.end method

.method public bridge synthetic v0(Lo0/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/q;->D1(Lo0/e;Ljava/lang/Object;)Landroidx/compose/foundation/layout/z;

    move-result-object p1

    return-object p1
.end method
