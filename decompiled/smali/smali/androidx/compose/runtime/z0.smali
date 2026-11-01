.class public abstract synthetic Landroidx/compose/runtime/z0;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/runtime/a1;)Ljava/lang/Double;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/runtime/a1;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Landroidx/compose/runtime/a1;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/a1;->getValue()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/compose/runtime/a1;D)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/a1;->setDoubleValue(D)V

    return-void
.end method

.method public static bridge synthetic d(Landroidx/compose/runtime/a1;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/a1;->setValue(D)V

    return-void
.end method
