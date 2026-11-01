.class public abstract Landroidx/compose/runtime/g0;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/runtime/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/d0;

    invoke-direct {v0}, Landroidx/compose/runtime/d0;-><init>()V

    sput-object v0, Landroidx/compose/runtime/g0;->a:Landroidx/compose/runtime/d0;

    return-void
.end method

.method public static final a(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.DisposableEffect (Effects.kt:155)"

    const v2, -0x51c6db9f

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p3

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p3, p0, :cond_2

    :cond_1
    new-instance p3, Landroidx/compose/runtime/b0;

    invoke-direct {p3, p1}, Landroidx/compose/runtime/b0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p2, p3}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast p3, Landroidx/compose/runtime/b0;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    return-void
.end method

.method public static final b([Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/i;I)V
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.DisposableEffect (Effects.kt:276)"

    const v2, -0x4df0ce72

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    array-length p3, p0

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    array-length p3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_1

    aget-object v2, p0, v0

    invoke-interface {p2, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p0

    if-nez v1, :cond_2

    sget-object p3, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p3}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p3

    if-ne p0, p3, :cond_3

    :cond_2
    new-instance p0, Landroidx/compose/runtime/b0;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/b0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_4
    return-void
.end method

.method public static final c(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:360)"

    const v2, 0x232e5d65

    invoke-static {v2, p4, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p3}, Landroidx/compose/runtime/i;->m()Lkotlin/coroutines/CoroutineContext;

    move-result-object p4

    invoke-interface {p3, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p3, p1}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-interface {p3}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_2

    :cond_1
    new-instance p1, Landroidx/compose/runtime/r0;

    invoke-direct {p1, p4, p2}, Landroidx/compose/runtime/r0;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p3, p1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast p1, Landroidx/compose/runtime/r0;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    return-void
.end method

.method public static final d(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:337)"

    const v2, 0x4648f105

    invoke-static {v2, p3, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/i;->m()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-interface {p2, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_1

    sget-object p0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {p0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_2

    :cond_1
    new-instance v0, Landroidx/compose/runtime/r0;

    invoke-direct {v0, p3, p1}, Landroidx/compose/runtime/r0;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Landroidx/compose/runtime/r0;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    return-void
.end method

.method public static final e(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/i;I)V
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.runtime.SideEffect (Effects.kt:48)"

    const v2, -0x4ccc7149

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-interface {p1, p0}, Landroidx/compose/runtime/i;->t(Lkotlin/jvm/functions/Function0;)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_1
    return-void
.end method

.method public static final synthetic f()Landroidx/compose/runtime/d0;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/g0;->a:Landroidx/compose/runtime/d0;

    return-object v0
.end method

.method public static final g(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/i;)Lkotlinx/coroutines/n0;
    .locals 2

    sget-object v0, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    invoke-static {p1, p0, p1}, Lkotlinx/coroutines/v1;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CoroutineContext supplied to rememberCoroutineScope may not include a parent job"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/z;->b(Ljava/lang/Throwable;)Z

    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/i;->m()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t1;

    invoke-static {v0}, Lkotlinx/coroutines/v1;->a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/z;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, p0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p0

    :goto_0
    return-object p0
.end method
