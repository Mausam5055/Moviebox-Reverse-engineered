.class public final synthetic Lkotlinx/coroutines/h0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {p1}, Lkotlinx/coroutines/i0$a;->c(Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/i0;

    move-result-object p1

    return-object p1
.end method
