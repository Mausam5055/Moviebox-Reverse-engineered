.class public abstract Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/s1;

.field private static final b:Landroidx/compose/foundation/gestures/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$LocalBringIntoViewSpec$1;->INSTANCE:Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$LocalBringIntoViewSpec$1;

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->e(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/s1;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/s1;

    new-instance v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$a;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt$a;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->b:Landroidx/compose/foundation/gestures/d;

    return-void
.end method

.method public static final a()Landroidx/compose/runtime/s1;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->a:Landroidx/compose/runtime/s1;

    return-object v0
.end method

.method public static final b()Landroidx/compose/foundation/gestures/d;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/gestures/BringIntoViewSpec_androidKt;->b:Landroidx/compose/foundation/gestures/d;

    return-object v0
.end method
