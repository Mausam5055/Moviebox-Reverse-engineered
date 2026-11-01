.class public abstract Lcom/transsion/transfer/wifi/create/adapter/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Llv/a;

.field private b:Lcom/transsion/transfer/wifi/create/a;

.field private c:Lkotlinx/coroutines/n0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/n0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->c:Lkotlinx/coroutines/n0;

    return-object v0
.end method

.method public final d()Lcom/transsion/transfer/wifi/create/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->b:Lcom/transsion/transfer/wifi/create/a;

    return-object v0
.end method

.method public final e()Llv/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->a:Llv/a;

    return-object v0
.end method

.method public abstract f()V
.end method

.method public final g(Lkotlinx/coroutines/n0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->c:Lkotlinx/coroutines/n0;

    return-void
.end method

.method public final h(Lcom/transsion/transfer/wifi/create/a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->b:Lcom/transsion/transfer/wifi/create/a;

    return-void
.end method

.method public final i(Llv/a;Lcom/transsion/transfer/wifi/create/a;Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->a:Llv/a;

    iput-object p2, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->b:Lcom/transsion/transfer/wifi/create/a;

    iput-object p3, p0, Lcom/transsion/transfer/wifi/create/adapter/b;->c:Lkotlinx/coroutines/n0;

    invoke-virtual {p0, p4}, Lcom/transsion/transfer/wifi/create/adapter/b;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
