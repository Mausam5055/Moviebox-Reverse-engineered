.class public final Landroidx/compose/ui/node/NodeCoordinator$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/node/NodeCoordinator$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    return v0
.end method

.method public b(Landroidx/compose/ui/f$c;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/q;ZZ)V
    .locals 0

    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->s0(JLandroidx/compose/ui/node/q;ZZ)V

    return-void
.end method

.method public d(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->F()Landroidx/compose/ui/semantics/i;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/semantics/i;->n()Z

    move-result p1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method
