.class public abstract Landroidx/compose/foundation/gestures/DraggableKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlin/jvm/functions/Function3;

.field private static final b:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStarted$1;-><init>(Lkotlin/coroutines/Continuation;)V

    sput-object v0, Landroidx/compose/foundation/gestures/DraggableKt;->a:Lkotlin/jvm/functions/Function3;

    new-instance v0, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStopped$1;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/gestures/DraggableKt$NoOpOnDragStopped$1;-><init>(Lkotlin/coroutines/Continuation;)V

    sput-object v0, Landroidx/compose/foundation/gestures/DraggableKt;->b:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public static final synthetic a(J)J
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/DraggableKt;->b(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final b(J)J
    .locals 3

    invoke-static {p0, p1}, Lo0/z;->h(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lo0/z;->h(J)F

    move-result v0

    :goto_0
    invoke-static {p0, p1}, Lo0/z;->i(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lo0/z;->i(J)F

    move-result v1

    :goto_1
    invoke-static {v0, v1}, Lo0/a0;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method
