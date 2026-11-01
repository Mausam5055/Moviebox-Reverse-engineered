.class public abstract synthetic Landroidx/compose/runtime/f1;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/runtime/g1;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/runtime/g1;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Landroidx/compose/runtime/g1;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Landroidx/compose/runtime/g1;->getValue()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/compose/runtime/g1;J)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/g1;->setLongValue(J)V

    return-void
.end method

.method public static bridge synthetic d(Landroidx/compose/runtime/g1;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/g1;->setValue(J)V

    return-void
.end method
