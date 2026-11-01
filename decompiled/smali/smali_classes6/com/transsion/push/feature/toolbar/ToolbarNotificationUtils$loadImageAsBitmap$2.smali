.class final Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->t(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.push.feature.toolbar.ToolbarNotificationUtils$loadImageAsBitmap$2"
    f = "ToolbarNotificationUtils.kt"
    l = {
        0x1f4
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $dp20:I

.field final synthetic $url:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->$url:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->$dp20:I

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

    new-instance p1, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;

    iget-object v0, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->$url:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->$dp20:I

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;-><init>(Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->$url:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->$dp20:I

    iput-object p1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->I$0:I

    iput v2, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2;->label:I

    new-instance v8, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->c(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v8, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    sget-object v9, Loh/c;->a:Loh/c$a;

    sget-object v1, Lej/f;->a:Lej/f$a;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lej/f$a;->e(Lej/f$a;Ljava/lang/String;IZZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2$a;

    invoke-direct {v1, v8}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImageAsBitmap$2$a;-><init>(Lkotlinx/coroutines/n;)V

    invoke-virtual {v9, p1, v1}, Loh/c$a;->b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v8}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_2
    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object p1
.end method
