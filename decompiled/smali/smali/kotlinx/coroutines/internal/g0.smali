.class public abstract Lkotlinx/coroutines/internal/g0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlinx/coroutines/internal/z;

.field private static final b:Lkotlin/jvm/functions/Function2;

.field private static final c:Lkotlin/jvm/functions/Function2;

.field private static final d:Lkotlin/jvm/functions/Function2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/g0;->a:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/d0;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/d0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/g0;->b:Lkotlin/jvm/functions/Function2;

    new-instance v0, Lkotlinx/coroutines/internal/e0;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/e0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/g0;->c:Lkotlin/jvm/functions/Function2;

    new-instance v0, Lkotlinx/coroutines/internal/f0;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/f0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/g0;->d:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/m2;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/m2;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/g0;->e(Lkotlinx/coroutines/m2;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/m2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/g0;->d(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lkotlinx/coroutines/internal/m0;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/m0;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/g0;->h(Lkotlinx/coroutines/internal/m0;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/m0;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/m2;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_3
    return-object p0
.end method

.method private static final e(Lkotlinx/coroutines/m2;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/m2;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    instance-of p0, p1, Lkotlinx/coroutines/m2;

    if-eqz p0, :cond_1

    check-cast p1, Lkotlinx/coroutines/m2;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final f(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/g0;->a:Lkotlinx/coroutines/internal/z;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/m0;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlinx/coroutines/internal/m0;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/m0;->b(Lkotlin/coroutines/CoroutineContext;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Lkotlinx/coroutines/internal/g0;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/m2;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/m2;->m(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final g(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/g0;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final h(Lkotlinx/coroutines/internal/m0;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/m0;
    .locals 1

    instance-of v0, p1, Lkotlinx/coroutines/m2;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/m2;

    iget-object v0, p0, Lkotlinx/coroutines/internal/m0;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/m2;->r(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/m0;->a(Lkotlinx/coroutines/m2;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public static final i(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/internal/g0;->g(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/g0;->a:Lkotlinx/coroutines/internal/z;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Lkotlinx/coroutines/internal/m0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/m0;-><init>(Lkotlin/coroutines/CoroutineContext;I)V

    sget-object p1, Lkotlinx/coroutines/internal/g0;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/m2;

    invoke-interface {p1, p0}, Lkotlinx/coroutines/m2;->r(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
