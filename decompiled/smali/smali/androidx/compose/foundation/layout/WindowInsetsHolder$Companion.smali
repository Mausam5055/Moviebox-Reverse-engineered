.class public final Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/WindowInsetsHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->e(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->f(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object p0

    return-object p0
.end method

.method private final d(Landroid/view/View;)Landroidx/compose/foundation/layout/WindowInsetsHolder;
    .locals 4

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a()Ljava/util/WeakHashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v3}, Landroidx/compose/foundation/layout/WindowInsetsHolder;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v2, Landroidx/compose/foundation/layout/WindowInsetsHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method private final e(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/a;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/a;

    invoke-direct {v0, p2, p3}, Landroidx/compose/foundation/layout/a;-><init>(ILjava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/layout/a;->h(Landroidx/core/view/WindowInsetsCompat;I)V

    :cond_0
    return-object v0
.end method

.method private final f(Landroidx/core/view/WindowInsetsCompat;ILjava/lang/String;)Landroidx/compose/foundation/layout/g0;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lz0/c;->e:Lz0/c;

    :cond_1
    invoke-static {p1, p3}, Landroidx/compose/foundation/layout/j0;->a(Lz0/c;Ljava/lang/String;)Landroidx/compose/foundation/layout/g0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final c(Landroidx/compose/runtime/i;I)Landroidx/compose/foundation/layout/WindowInsetsHolder;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.layout.WindowInsetsHolder.Companion.current (WindowInsets.android.kt:626)"

    const v2, -0x5173c916

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->j()Landroidx/compose/runtime/s1;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->d(Landroid/view/View;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v1}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_2

    :cond_1
    new-instance v2, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$1;

    invoke-direct {v2, v0, p2}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroid/view/View;)V

    invoke-interface {p1, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x0

    invoke-static {v0, v2, p1, p2}, Landroidx/compose/runtime/g0;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    return-object v0
.end method
