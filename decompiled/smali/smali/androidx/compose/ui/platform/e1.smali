.class final Landroidx/compose/ui/platform/e1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/j;


# instance fields
.field private final a:Landroidx/compose/runtime/c1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroidx/compose/runtime/p1;->a(F)Landroidx/compose/runtime/c1;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/e1;->a:Landroidx/compose/runtime/c1;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/e1;->a:Landroidx/compose/runtime/c1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/c1;->setFloatValue(F)V

    return-void
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/j$a;->a(Landroidx/compose/ui/j;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/j$a;->b(Landroidx/compose/ui/j;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/i;->a(Landroidx/compose/ui/j;)Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    return-object v0
.end method

.method public k()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/e1;->a:Landroidx/compose/runtime/c1;

    invoke-interface {v0}, Landroidx/compose/runtime/h0;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/j$a;->c(Landroidx/compose/ui/j;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/j$a;->d(Landroidx/compose/ui/j;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method
