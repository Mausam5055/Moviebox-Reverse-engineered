.class public abstract Landroidx/compose/foundation/lazy/LazyListStateKt;
.super Ljava/lang/Object;


# static fields
.field private static final a:F

.field private static final b:Landroidx/compose/foundation/lazy/m;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/4 v0, 0x1

    int-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    sput v0, Landroidx/compose/foundation/lazy/LazyListStateKt;->a:F

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListStateKt$a;

    move-object v6, v0

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/LazyListStateKt$a;-><init>()V

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object v13

    sget-object v18, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v9

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v1}, Lo0/g;->b(FFILjava/lang/Object;)Lo0/e;

    move-result-object v10

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lo0/c;->b(IIIIILjava/lang/Object;)J

    move-result-wide v11

    new-instance v0, Landroidx/compose/foundation/lazy/m;

    move-object v1, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v21}, Landroidx/compose/foundation/lazy/m;-><init>(Landroidx/compose/foundation/lazy/n;IZFLandroidx/compose/ui/layout/v;FZLkotlinx/coroutines/n0;Lo0/e;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/LazyListStateKt;->b:Landroidx/compose/foundation/lazy/m;

    return-void
.end method

.method public static final synthetic a()F
    .locals 1

    sget v0, Landroidx/compose/foundation/lazy/LazyListStateKt;->a:F

    return v0
.end method

.method public static final synthetic b()Landroidx/compose/foundation/lazy/m;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/lazy/LazyListStateKt;->b:Landroidx/compose/foundation/lazy/m;

    return-object v0
.end method

.method public static final c(IILandroidx/compose/runtime/i;II)Landroidx/compose/foundation/lazy/LazyListState;
    .locals 10

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p0, v1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p1, v1

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, -0x1

    const-string v0, "androidx.compose.foundation.lazy.rememberLazyListState (LazyListState.kt:80)"

    const v2, 0x57a86af4

    invoke-static {v2, p3, p4, v0}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_2
    new-array v3, v1, [Ljava/lang/Object;

    sget-object p4, Landroidx/compose/foundation/lazy/LazyListState;->y:Landroidx/compose/foundation/lazy/LazyListState$a;

    invoke-virtual {p4}, Landroidx/compose/foundation/lazy/LazyListState$a;->a()Landroidx/compose/runtime/saveable/d;

    move-result-object v4

    and-int/lit8 p4, p3, 0xe

    xor-int/lit8 p4, p4, 0x6

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-le p4, v0, :cond_3

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->c(I)Z

    move-result p4

    if-nez p4, :cond_4

    :cond_3
    and-int/lit8 p4, p3, 0x6

    if-ne p4, v0, :cond_5

    :cond_4
    move p4, v2

    goto :goto_0

    :cond_5
    move p4, v1

    :goto_0
    and-int/lit8 v0, p3, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/16 v5, 0x20

    if-le v0, v5, :cond_6

    invoke-interface {p2, p1}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v5, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    or-int p3, p4, v1

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_9

    sget-object p3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p3

    if-ne p4, p3, :cond_a

    :cond_9
    new-instance p4, Landroidx/compose/foundation/lazy/LazyListStateKt$rememberLazyListState$1$1;

    invoke-direct {p4, p0, p1}, Landroidx/compose/foundation/lazy/LazyListStateKt$rememberLazyListState$1$1;-><init>(II)V

    invoke-interface {p2, p4}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_a
    move-object v6, p4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x0

    move-object v7, p2

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Landroidx/compose/runtime/saveable/d;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_b
    return-object p0
.end method
