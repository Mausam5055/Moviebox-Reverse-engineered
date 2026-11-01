.class public abstract synthetic Landroidx/compose/runtime/b1;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/runtime/c1;)Ljava/lang/Float;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/c1;->getFloatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Landroidx/compose/runtime/c1;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/c1;->getValue()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/compose/runtime/c1;F)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/c1;->setFloatValue(F)V

    return-void
.end method

.method public static bridge synthetic d(Landroidx/compose/runtime/c1;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/c1;->setValue(F)V

    return-void
.end method
