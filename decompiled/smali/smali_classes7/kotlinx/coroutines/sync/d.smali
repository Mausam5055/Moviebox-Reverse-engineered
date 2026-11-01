.class public final synthetic Lkotlinx/coroutines/sync/d;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/sync/f;

.field public final synthetic b:Lkotlinx/coroutines/sync/f$a;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/f;Lkotlinx/coroutines/sync/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/d;->a:Lkotlinx/coroutines/sync/f;

    iput-object p2, p0, Lkotlinx/coroutines/sync/d;->b:Lkotlinx/coroutines/sync/f$a;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/sync/d;->a:Lkotlinx/coroutines/sync/f;

    iget-object v1, p0, Lkotlinx/coroutines/sync/d;->b:Lkotlinx/coroutines/sync/f$a;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1, p1, p2, p3}, Lkotlinx/coroutines/sync/f$a;->a(Lkotlinx/coroutines/sync/f;Lkotlinx/coroutines/sync/f$a;Ljava/lang/Throwable;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
