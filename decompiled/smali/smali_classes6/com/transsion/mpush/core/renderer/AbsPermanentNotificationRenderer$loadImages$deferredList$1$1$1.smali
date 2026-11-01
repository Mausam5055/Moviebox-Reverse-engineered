.class final Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Landroid/graphics/Bitmap;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Landroid/graphics/Bitmap;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1"
    f = "AbsPermanentNotificationRenderer.kt"
    l = {
        0xe7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $index:I

.field final synthetic $messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;


# direct methods
.method constructor <init>(Ljava/util/List;ILcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;I",
            "Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$messages:Ljava/util/List;

    iput p2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$index:I

    iput-object p3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iput-object p4, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;

    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$messages:Ljava/util/List;

    iget v2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$index:I

    iget-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iget-object v4, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$context:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;-><init>(Ljava/util/List;ILcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$messages:Ljava/util/List;

    iget v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/PermanentPushMessage;->getImage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iget-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->$context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->D()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v4

    iput v2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$loadImages$deferredList$1$1$1;->label:I

    invoke-virtual {v1, v3, p1, v4, p0}, Lcom/transsion/mpush/core/renderer/i;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
