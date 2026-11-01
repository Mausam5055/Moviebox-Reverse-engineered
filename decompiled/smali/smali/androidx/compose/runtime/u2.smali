.class abstract synthetic Landroidx/compose/runtime/u2;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Landroidx/compose/runtime/snapshots/SnapshotStateList;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/ActualAndroid_androidKt;->c(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/snapshots/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/compose/runtime/r2;->j()Landroidx/compose/runtime/q2;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object p0

    return-object p0
.end method

.method public static final d(Ljava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/a3;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.rememberUpdatedState (SnapshotState.kt:309)"

    const v2, -0x3f14ae72

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, v0}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Landroidx/compose/runtime/i1;

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_2
    return-object p2
.end method
