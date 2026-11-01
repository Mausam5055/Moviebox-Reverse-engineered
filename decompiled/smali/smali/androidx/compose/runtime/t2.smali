.class abstract synthetic Landroidx/compose/runtime/t2;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Landroidx/compose/runtime/q2;
    .locals 2

    sget-object v0, Landroidx/compose/runtime/j1;->a:Landroidx/compose/runtime/j1;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.neverEqualPolicy>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b()Landroidx/compose/runtime/q2;
    .locals 2

    sget-object v0, Landroidx/compose/runtime/y1;->a:Landroidx/compose/runtime/y1;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.referentialEqualityPolicy>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c()Landroidx/compose/runtime/q2;
    .locals 2

    sget-object v0, Landroidx/compose/runtime/d3;->a:Landroidx/compose/runtime/d3;

    const-string v1, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutationPolicy<T of androidx.compose.runtime.SnapshotStateKt__SnapshotMutationPolicyKt.structuralEqualityPolicy>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
