.class public abstract synthetic Landroidx/compose/runtime/d1;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/runtime/e1;)Ljava/lang/Integer;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/e1;->getIntValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Landroidx/compose/runtime/e1;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/e1;->getValue()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/compose/runtime/e1;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/e1;->setIntValue(I)V

    return-void
.end method

.method public static bridge synthetic d(Landroidx/compose/runtime/e1;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/e1;->setValue(I)V

    return-void
.end method
