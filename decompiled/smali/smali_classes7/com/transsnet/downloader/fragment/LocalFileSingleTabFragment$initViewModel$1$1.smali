.class final Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1$1;->a:Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    new-instance v1, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1$1$1;

    iget-object v2, p0, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1$1;->a:Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1$1$1;-><init>(ILcom/transsnet/downloader/fragment/LocalFileSingleTabFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/LocalFileSingleTabFragment$initViewModel$1$1;->a(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
