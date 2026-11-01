.class final Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->H(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lkotlinx/coroutines/r0;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "Lkotlinx/coroutines/r0;",
        "Landroid/graphics/Bitmap;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/util/List;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer$loadImages$deferredList$1"
    f = "AbsPermanentNotificationRenderer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $loadSize:I

.field final synthetic $messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;


# direct methods
.method constructor <init>(ILjava/util/List;Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;",
            "Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$loadSize:I

    iput-object p2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$messages:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iput-object p4, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v6, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;

    iget v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$loadSize:I

    iget-object v2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$messages:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iget-object v4, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$context:Landroid/content/Context;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;-><init>(ILjava/util/List;Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "+",
            "Lkotlinx/coroutines/r0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    const/4 v0, 0x0

    iget v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$loadSize:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->t(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    iget-object v7, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$messages:Ljava/util/List;

    iget-object v8, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iget-object v9, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->$context:Landroid/content/Context;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v11

    check-cast v0, Lkotlin/collections/IntIterator;

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->a()I

    move-result v3

    new-instance v12, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;

    const/4 v6, 0x0

    move-object v1, v12

    move-object v2, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;-><init>(Ljava/util/List;ILcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, v12

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v10

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
