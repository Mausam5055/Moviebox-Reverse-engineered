.class final Lkotlinx/coroutines/z1;
.super Lkotlinx/coroutines/i2;


# instance fields
.field private final a:Lkotlin/coroutines/Continuation;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/i2;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    invoke-static {p2, p0, p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/z1;->a:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/z1;->a:Lkotlin/coroutines/Continuation;

    invoke-static {v0, p0}, Lb00/a;->b(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    return-void
.end method
