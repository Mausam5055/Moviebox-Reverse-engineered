.class public final Landroidx/compose/foundation/layout/b$g;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/layout/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:F


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    iput v0, p0, Landroidx/compose/foundation/layout/b$g;->a:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/b$g;->a:F

    return v0
.end method

.method public b(Lo0/e;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 0

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, p1, :cond_0

    sget-object p1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p5, p4}, Landroidx/compose/foundation/layout/b;->i(I[I[IZ)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p3, p5, p4}, Landroidx/compose/foundation/layout/b;->i(I[I[IZ)V

    :goto_0
    return-void
.end method

.method public c(Lo0/e;I[I[I)V
    .locals 1

    sget-object p1, Landroidx/compose/foundation/layout/b;->a:Landroidx/compose/foundation/layout/b;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/compose/foundation/layout/b;->i(I[I[IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Arrangement#SpaceBetween"

    return-object v0
.end method
