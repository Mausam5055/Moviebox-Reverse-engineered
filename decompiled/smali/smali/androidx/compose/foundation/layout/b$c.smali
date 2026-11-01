.class public final Landroidx/compose/foundation/layout/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/layout/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/b;
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
.method public synthetic a()F
    .locals 1

    invoke-static {p0}, Landroidx/compose/foundation/layout/c;->a(Landroidx/compose/foundation/layout/b$d;)F

    move-result v0

    return v0
.end method

.method public b(Lo0/e;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 0

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, p1, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p5, p4}, Landroidx/compose/foundation/layout/b;->g(I[I[IZ)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p3, p5, p2}, Landroidx/compose/foundation/layout/b;->f([I[IZ)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Arrangement#End"

    return-object v0
.end method
