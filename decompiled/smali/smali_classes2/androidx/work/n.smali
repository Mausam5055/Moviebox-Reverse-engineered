.class public final synthetic Landroidx/work/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$b;


# instance fields
.field public final synthetic a:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic b:Lkotlinx/coroutines/CoroutineStart;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/n;->a:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Landroidx/work/n;->b:Lkotlinx/coroutines/CoroutineStart;

    iput-object p3, p0, Landroidx/work/n;->c:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/work/n;->a:Lkotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Landroidx/work/n;->b:Lkotlinx/coroutines/CoroutineStart;

    iget-object v2, p0, Landroidx/work/n;->c:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2, p1}, Landroidx/work/ListenableFutureKt;->b(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;Landroidx/concurrent/futures/CallbackToFutureAdapter$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
