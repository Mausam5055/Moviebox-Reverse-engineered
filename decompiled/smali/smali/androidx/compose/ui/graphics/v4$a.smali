.class public final Landroidx/compose/ui/graphics/v4$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/a5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/v4;
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
.method public bridge synthetic a(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/v4$a;->b(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4$b;

    move-result-object p1

    return-object p1
.end method

.method public b(JLandroidx/compose/ui/unit/LayoutDirection;Lo0/e;)Landroidx/compose/ui/graphics/k4$b;
    .locals 0

    new-instance p3, Landroidx/compose/ui/graphics/k4$b;

    invoke-static {p1, p2}, Ly/n;->c(J)Ly/i;

    move-result-object p1

    invoke-direct {p3, p1}, Landroidx/compose/ui/graphics/k4$b;-><init>(Ly/i;)V

    return-object p3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "RectangleShape"

    return-object v0
.end method
