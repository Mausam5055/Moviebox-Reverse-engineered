.class final Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->J(Landroid/content/Context;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V
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
    c = "com.transsion.mpush.core.renderer.AbsPermanentNotificationRenderer$show$1"
    f = "AbsPermanentNotificationRenderer.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $config:Lcom/transsion/mpush/core/config/PermanentConfig;

.field final synthetic $context:Landroid/content/Context;

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
.method constructor <init>(Ljava/util/List;Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/core/config/PermanentConfig;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/PermanentPushMessage;",
            ">;",
            "Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;",
            "Landroid/content/Context;",
            "Lcom/transsion/mpush/core/config/PermanentConfig;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$messages:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iput-object p3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$config:Lcom/transsion/mpush/core/config/PermanentConfig;

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

    new-instance p1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;

    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$messages:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iget-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$config:Lcom/transsion/mpush/core/config/PermanentConfig;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;-><init>(Ljava/util/List;Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Lcom/transsion/mpush/core/config/PermanentConfig;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->label:I

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

    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u5f00\u59cb\u52a0\u8f7d "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u5f20\u56fe\u7247"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "M_PUSH_SDK"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$messages:Ljava/util/List;

    iput v2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->label:I

    invoke-virtual {p1, v1, v3, p0}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->G(Landroid/content/Context;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$messages:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->Z0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v4, Llg/a;->a:Llg/a$a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u56fe\u7247\u52a0\u8f7d\u5b8c\u6210\uff0c\u6210\u529f\uff1a"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c\u5931\u8d25\uff1a"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "M_PUSH_SDK"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0xa

    if-lt p1, v2, :cond_7

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->r(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;J)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->B0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    :goto_3
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/mpush/api/PermanentPushMessage;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u51c6\u5907\u6e32\u67d3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " \u6761\u6d88\u606f"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "M_PUSH_SDK"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->this$0:Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;

    iget-object v2, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer$show$1;->$config:Lcom/transsion/mpush/core/config/PermanentConfig;

    invoke-static {p1, v2, v1, v0, v3}, Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;->q(Lcom/transsion/mpush/core/renderer/AbsPermanentNotificationRenderer;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/transsion/mpush/core/config/PermanentConfig;)V

    goto :goto_6

    :cond_a
    sget-object v4, Llg/a;->a:Llg/a$a;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, "M_PUSH_SDK"

    const-string v6, "\u3010\u5e38\u9a7b\u6e32\u67d3\u3011\u6ca1\u6709\u6709\u6548\u6d88\u606f\u53ef\u5c55\u793a"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
