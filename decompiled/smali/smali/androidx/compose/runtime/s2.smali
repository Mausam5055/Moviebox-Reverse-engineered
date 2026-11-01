.class abstract synthetic Landroidx/compose/runtime/s2;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/v2;

.field private static final b:Landroidx/compose/runtime/v2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/v2;

    invoke-direct {v0}, Landroidx/compose/runtime/v2;-><init>()V

    sput-object v0, Landroidx/compose/runtime/s2;->a:Landroidx/compose/runtime/v2;

    new-instance v0, Landroidx/compose/runtime/v2;

    invoke-direct {v0}, Landroidx/compose/runtime/v2;-><init>()V

    sput-object v0, Landroidx/compose/runtime/s2;->b:Landroidx/compose/runtime/v2;

    return-void
.end method

.method public static final synthetic a()Landroidx/compose/runtime/v2;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/s2;->a:Landroidx/compose/runtime/v2;

    return-object v0
.end method

.method public static final b()Landroidx/compose/runtime/collection/b;
    .locals 4

    sget-object v0, Landroidx/compose/runtime/s2;->b:Landroidx/compose/runtime/v2;

    invoke-virtual {v0}, Landroidx/compose/runtime/v2;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/collection/b;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/runtime/collection/b;

    const/4 v2, 0x0

    new-array v3, v2, [Landroidx/compose/runtime/a0;

    invoke-direct {v1, v3, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/v2;->b(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static final c(Landroidx/compose/runtime/q2;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {v0, p1, p0}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/q2;)V

    return-object v0
.end method

.method public static final d(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/a3;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/q2;)V

    return-object v0
.end method
