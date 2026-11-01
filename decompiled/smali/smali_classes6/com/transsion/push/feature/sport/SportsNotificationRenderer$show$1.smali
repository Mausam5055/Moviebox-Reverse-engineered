.class final Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/feature/sport/SportsNotificationRenderer;->J(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lcom/transsion/push/feature/sport/ServerMatchListItemData;)V
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
    c = "com.transsion.push.feature.sport.SportsNotificationRenderer$show$1"
    f = "SportsNotificationRenderer.kt"
    l = {
        0x3d
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $matchData:Lcom/transsion/push/feature/sport/ServerMatchListItemData;

.field final synthetic $message:Lcom/transsion/mpush/api/LocalPushMessage;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/push/feature/sport/SportsNotificationRenderer;


# direct methods
.method constructor <init>(Lcom/transsion/push/feature/sport/ServerMatchListItemData;Lcom/transsion/push/feature/sport/SportsNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/push/feature/sport/ServerMatchListItemData;",
            "Lcom/transsion/push/feature/sport/SportsNotificationRenderer;",
            "Landroid/content/Context;",
            "Lcom/transsion/mpush/api/LocalPushMessage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$matchData:Lcom/transsion/push/feature/sport/ServerMatchListItemData;

    iput-object p2, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->this$0:Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    iput-object p3, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$message:Lcom/transsion/mpush/api/LocalPushMessage;

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

    new-instance v6, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;

    iget-object v1, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$matchData:Lcom/transsion/push/feature/sport/ServerMatchListItemData;

    iget-object v2, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->this$0:Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    iget-object v3, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$message:Lcom/transsion/mpush/api/LocalPushMessage;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;-><init>(Lcom/transsion/push/feature/sport/ServerMatchListItemData;Lcom/transsion/push/feature/sport/SportsNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    iget-object v1, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$matchData:Lcom/transsion/push/feature/sport/ServerMatchListItemData;

    invoke-virtual {v1}, Lcom/transsion/push/feature/sport/ServerMatchListItemData;->getTeam1()Lcom/transsion/push/feature/sport/TeamInfoMatch;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/push/feature/sport/TeamInfoMatch;->getAvatar()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    iget-object v4, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$matchData:Lcom/transsion/push/feature/sport/ServerMatchListItemData;

    invoke-virtual {v4}, Lcom/transsion/push/feature/sport/ServerMatchListItemData;->getTeam2()Lcom/transsion/push/feature/sport/TeamInfoMatch;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/transsion/push/feature/sport/TeamInfoMatch;->getAvatar()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    iget-object v10, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->this$0:Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    iget-object v11, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$context:Landroid/content/Context;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v7, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1$deferredList$1$1;

    invoke-direct {v7, v4, v10, v11, v3}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1$deferredList$1$1;-><init>(Ljava/lang/String;Lcom/transsion/push/feature/sport/SportsNotificationRenderer;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->b(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r0;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iput v2, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->label:I

    invoke-static {v12, p0}, Lkotlinx/coroutines/f;->a(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    new-instance v1, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;

    iget-object v2, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$matchData:Lcom/transsion/push/feature/sport/ServerMatchListItemData;

    invoke-direct {v1, v2, v0, p1}, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$b;-><init>(Lcom/transsion/push/feature/sport/ServerMatchListItemData;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->this$0:Lcom/transsion/push/feature/sport/SportsNotificationRenderer;

    iget-object v0, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/push/feature/sport/SportsNotificationRenderer$show$1;->$message:Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->z(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
