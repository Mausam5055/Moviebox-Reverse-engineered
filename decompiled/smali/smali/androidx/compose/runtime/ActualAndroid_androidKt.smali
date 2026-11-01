.class public abstract Landroidx/compose/runtime/ActualAndroid_androidKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlin/Lazy;

.field private static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/ActualAndroid_androidKt$DefaultMonotonicFrameClock$2;->INSTANCE:Landroidx/compose/runtime/ActualAndroid_androidKt$DefaultMonotonicFrameClock$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/ActualAndroid_androidKt;->a:Lkotlin/Lazy;

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, -0x1

    :goto_0
    sput-wide v0, Landroidx/compose/runtime/ActualAndroid_androidKt;->b:J

    return-void
.end method

.method public static final a(F)Landroidx/compose/runtime/c1;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;-><init>(F)V

    return-object v0
.end method

.method public static final b(I)Landroidx/compose/runtime/e1;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;-><init>(I)V

    return-object v0
.end method

.method public static final c(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/snapshots/r;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/q2;)V

    return-object v0
.end method

.method public static final d()J
    .locals 2

    sget-wide v0, Landroidx/compose/runtime/ActualAndroid_androidKt;->b:J

    return-wide v0
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "ComposeInternal"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
