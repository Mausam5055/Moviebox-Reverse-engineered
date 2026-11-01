.class public final synthetic Lkotlinx/coroutines/internal/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/m2;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/g0;->a(Lkotlinx/coroutines/m2;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/m2;

    move-result-object p1

    return-object p1
.end method
