.class public final Landroidx/compose/foundation/gestures/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/foundation/gestures/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/gestures/m;

    invoke-direct {v0}, Landroidx/compose/foundation/gestures/m;-><init>()V

    sput-object v0, Landroidx/compose/foundation/gestures/m;->a:Landroidx/compose/foundation/gestures/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/gestures/g;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.gestures.ScrollableDefaults.flingBehavior (Scrollable.kt:570)"

    const v2, 0x4206c4aa

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/compose/animation/h;->b(Landroidx/compose/runtime/i;I)Landroidx/compose/animation/core/w;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    :cond_1
    new-instance v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v0, v2}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/w;Landroidx/compose/ui/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    return-object v1
.end method

.method public final b(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/f0;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.gestures.ScrollableDefaults.overscrollEffect (Scrollable.kt:583)"

    const v2, 0x6bdf63e4

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/compose/foundation/a;->a(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/f0;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    return-object p1
.end method

.method public final c(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z
    .locals 2

    xor-int/lit8 v0, p3, 0x1

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p1, v1, :cond_0

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    return p3
.end method
