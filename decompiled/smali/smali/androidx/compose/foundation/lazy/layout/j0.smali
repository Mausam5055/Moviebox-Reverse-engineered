.class public abstract Landroidx/compose/foundation/lazy/layout/j0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/foundation/lazy/layout/j0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "robolectric"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/lazy/layout/j0$a;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/layout/j0$a;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/compose/foundation/lazy/layout/j0;->a:Landroidx/compose/foundation/lazy/layout/j0$a;

    return-void
.end method

.method public static final a(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/lazy/layout/i0;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.lazy.layout.rememberDefaultPrefetchScheduler (PrefetchScheduler.android.kt:32)"

    const v2, 0x440f9293

    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    sget-object p1, Landroidx/compose/foundation/lazy/layout/j0;->a:Landroidx/compose/foundation/lazy/layout/j0$a;

    if-eqz p1, :cond_1

    const v0, 0x485a89af

    invoke-interface {p0, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    goto :goto_0

    :cond_1
    const p1, 0x485b21a8    # 224390.62f

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->P(I)V

    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->j()Landroidx/compose/runtime/s1;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p0}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_3

    :cond_2
    new-instance v1, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;-><init>(Landroid/view/View;)V

    invoke-interface {p0, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_3
    move-object p1, v1

    check-cast p1, Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;

    invoke-interface {p0}, Landroidx/compose/runtime/i;->K()V

    :goto_0
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_4
    return-object p1
.end method
