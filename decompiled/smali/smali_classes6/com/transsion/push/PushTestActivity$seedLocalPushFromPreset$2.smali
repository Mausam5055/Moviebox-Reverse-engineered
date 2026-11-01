.class final Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/PushTestActivity;->s0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
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
    c = "com.transsion.push.PushTestActivity$seedLocalPushFromPreset$2"
    f = "PushTestActivity.kt"
    l = {
        0x141,
        0x142
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $seeded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/LocalPushMessage;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/mpush/api/LocalPushMessage;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->$seeded:Ljava/util/List;

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

    new-instance p1, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;

    iget-object v0, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->$seeded:Ljava/util/List;

    invoke-direct {p1, v0, p2}, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;-><init>(Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lmn/a;

    iget-object v3, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lln/a;->a:Lln/a;

    invoke-virtual {p1}, Lln/a;->d()Lcom/transsion/mpush/core/db/PushDatabase;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/mpush/core/db/PushDatabase;->j0()Lmn/a;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->$seeded:Ljava/util/List;

    iput-object p1, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->label:I

    invoke-interface {v1, p0}, Lmn/a;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, p1

    :goto_0
    iput-object v4, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/push/PushTestActivity$seedLocalPushFromPreset$2;->label:I

    invoke-interface {v1, v3, p0}, Lmn/a;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    :cond_5
    return-object v4
.end method
