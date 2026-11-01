.class final Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/features/PermanentPushFeature;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mpush.core.features.PermanentPushFeature$consumeMessage$1"
    f = "PermanentPushFeature.kt"
    l = {
        0x114
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $id:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;


# direct methods
.method constructor <init>(Lcom/transsion/mpush/core/features/PermanentPushFeature;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mpush/core/features/PermanentPushFeature;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    iput-object p2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->$id:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;

    iget-object v0, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->$id:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;-><init>(Lcom/transsion/mpush/core/features/PermanentPushFeature;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    invoke-static {p1}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->e(Lcom/transsion/mpush/core/features/PermanentPushFeature;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->$id:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {v5}, Lcom/transsion/mpush/api/PermanentPushMessage;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    check-cast v3, Lcom/transsion/mpush/api/PermanentPushMessage;

    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    invoke-static {p1}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->e(Lcom/transsion/mpush/core/features/PermanentPushFeature;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    invoke-static {v1}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->c(Lcom/transsion/mpush/core/features/PermanentPushFeature;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v4, v1

    :goto_1
    invoke-virtual {p1, v4}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/mpush/core/db/PushDatabase;->k0()Lmn/j;

    move-result-object p1

    invoke-interface {p1, v3}, Lmn/j;->a(Lcom/transsion/mpush/api/PermanentPushMessage;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    invoke-static {p1}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->e(Lcom/transsion/mpush/core/features/PermanentPushFeature;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    invoke-static {v1}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->d(Lcom/transsion/mpush/core/features/PermanentPushFeature;)I

    move-result v1

    if-ge p1, v1, :cond_5

    iget-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    iput v2, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->label:I

    invoke-static {p1, p0}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->b(Lcom/transsion/mpush/core/features/PermanentPushFeature;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_5
    iget-object p1, p0, Lcom/transsion/mpush/core/features/PermanentPushFeature$consumeMessage$1;->this$0:Lcom/transsion/mpush/core/features/PermanentPushFeature;

    invoke-static {p1}, Lcom/transsion/mpush/core/features/PermanentPushFeature;->h(Lcom/transsion/mpush/core/features/PermanentPushFeature;)V

    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
