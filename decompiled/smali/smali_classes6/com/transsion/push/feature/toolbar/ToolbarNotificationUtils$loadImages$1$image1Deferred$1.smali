.class final Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsion.push.feature.toolbar.ToolbarNotificationUtils$loadImages$1$image1Deferred$1"
    f = "ToolbarNotificationUtils.kt"
    l = {
        0x123
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $pair:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;",
            "Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;",
            "Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->$pair:Lkotlin/Pair;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;

    iget-object v0, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->$pair:Lkotlin/Pair;

    invoke-direct {p1, v0, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->label:I

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

    iget-object p1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->$pair:Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;

    invoke-virtual {p1}, Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;->getCover()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->a:Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;

    iget-object v1, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->$pair:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;

    invoke-virtual {v1}, Lcom/transsion/push/feature/toolbar/ToolbarNoticeItem;->getCover()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput v2, p0, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils$loadImages$1$image1Deferred$1;->label:I

    invoke-static {p1, v1, p0}, Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;->d(Lcom/transsion/push/feature/toolbar/ToolbarNotificationUtils;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
