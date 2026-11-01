.class final Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer;->F(Landroid/content/Context;Lcom/transsion/mpush/api/LocalPushMessage;)V
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
    c = "com.transsion.mpush.core.renderer.AbsNotificationRenderer$updateMsgStatus$1"
    f = "AbsNotificationRenderer.kt"
    l = {
        0x10a,
        0x114
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $msgBean:Lcom/transsion/mpush/api/LocalPushMessage;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/mpush/api/LocalPushMessage;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/mpush/api/LocalPushMessage;",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->$msgBean:Lcom/transsion/mpush/api/LocalPushMessage;

    iput-object p2, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;

    iget-object v0, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->$msgBean:Lcom/transsion/mpush/api/LocalPushMessage;

    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;-><init>(Lcom/transsion/mpush/api/LocalPushMessage;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lmn/a;

    iget-object v4, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v5, Llg/a;->a:Llg/a$a;

    iget-object p1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->$msgBean:Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {p1}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMsgStatus: updating status for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "M_PUSH_SDK"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p1, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    iget-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->$context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/transsion/mpush/core/db/PushDatabase$b;->b(Landroid/content/Context;)Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/mpush/core/db/PushDatabase;->j0()Lmn/a;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->$msgBean:Lcom/transsion/mpush/api/LocalPushMessage;

    invoke-virtual {v4}, Lcom/transsion/mpush/api/LocalPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    iput-object v4, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->label:I

    invoke-interface {v1, p1, p0}, Lmn/a;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Lcom/transsion/mpush/api/LocalPushMessage;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3}, Lcom/transsion/mpush/api/LocalPushMessage;->setMsgStatus(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lcom/transsion/mpush/api/LocalPushMessage;->setShowTime(J)V

    invoke-virtual {v4}, Lcom/transsion/mpush/api/LocalPushMessage;->getTriggerSource()I

    move-result v5

    if-ne v5, v3, :cond_6

    invoke-virtual {p1, v3}, Lcom/transsion/mpush/api/LocalPushMessage;->setHasScreenOn(Z)V

    :cond_6
    invoke-virtual {v4}, Lcom/transsion/mpush/api/LocalPushMessage;->getTriggerSource()I

    move-result v4

    if-ne v4, v2, :cond_7

    invoke-virtual {p1, v3}, Lcom/transsion/mpush/api/LocalPushMessage;->setForceShow(Z)V

    :cond_7
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/mpush/core/renderer/AbsNotificationRenderer$updateMsgStatus$1;->label:I

    invoke-interface {v1, p1, p0}, Lmn/a;->f(Lcom/transsion/mpush/api/LocalPushMessage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
