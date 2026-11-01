.class final Landroidx/compose/foundation/lazy/layout/l0;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/m1;


# instance fields
.field private n:Landroidx/compose/foundation/lazy/layout/x;

.field private final o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/x;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/l0;->n:Landroidx/compose/foundation/lazy/layout/x;

    const-string p1, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/l0;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic D()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/l0;->E1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D1()Landroidx/compose/foundation/lazy/layout/x;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/l0;->n:Landroidx/compose/foundation/lazy/layout/x;

    return-object v0
.end method

.method public E1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/l0;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final F1(Landroidx/compose/foundation/lazy/layout/x;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/l0;->n:Landroidx/compose/foundation/lazy/layout/x;

    return-void
.end method
