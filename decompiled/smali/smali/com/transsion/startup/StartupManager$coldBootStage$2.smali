.class final Lcom/transsion/startup/StartupManager$coldBootStage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/startup/StartupManager;->D()V
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
    c = "com.transsion.startup.StartupManager$coldBootStage$2"
    f = "StartupManager.kt"
    l = {
        0x136,
        0x137,
        0x13b,
        0x145,
        0x148,
        0x149
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/startup/StartupManager;


# direct methods
.method constructor <init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/startup/StartupManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/startup/StartupManager$coldBootStage$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

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

    new-instance p1, Lcom/transsion/startup/StartupManager$coldBootStage$2;

    iget-object v0, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-direct {p1, v0, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;-><init>(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/startup/StartupManager$coldBootStage$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/startup/StartupManager$coldBootStage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "app"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    iget v3, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    iget-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/startup/StartupManager;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_0
    move-object p1, v6

    goto/16 :goto_6

    :pswitch_1
    iget v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    iget v3, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    iget-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/transsion/startup/StartupManager;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {p1}, Lcom/transsion/startup/StartupManager;->r(Lcom/transsion/startup/StartupManager;)V

    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {p1}, Lcom/transsion/startup/StartupManager;->i(Lcom/transsion/startup/StartupManager;)V

    sget-object p1, Lih/b;->a:Lih/b;

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v5

    :cond_1
    invoke-virtual {p1, v1}, Lih/b;->b(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {p1}, Lcom/transsion/startup/StartupManager;->k(Lcom/transsion/startup/StartupManager;)V

    sget-object p1, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    invoke-virtual {p1}, Lcom/transsion/payment/lib/f$a;->a()Lcom/transsion/payment/lib/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/payment/lib/f;->g()V

    const-class p1, Lcom/transsion/memberapi/IMemberApi;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IMemberApi;

    if-eqz p1, :cond_2

    invoke-static {p1, v5, v2, v5}, Lcom/transsion/memberapi/IMemberApi$a;->a(Lcom/transsion/memberapi/IMemberApi;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_2
    const-class p1, Lcom/transsion/memberapi/IPremiumApi;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz p1, :cond_3

    invoke-interface {p1, v5}, Lcom/transsion/memberapi/IPremiumApi;->g(Lzm/j;)V

    :cond_3
    sget-object p1, Llg/a;->a:Llg/a$a;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "StartupManager"

    const-string v8, "stage 2 end"

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->o(Lcom/transsion/startup/StartupManager;)V

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->t(Lcom/transsion/startup/StartupManager;)V

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->j(Lcom/transsion/startup/StartupManager;)V

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->p(Lcom/transsion/startup/StartupManager;)V

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->s(Lcom/transsion/startup/StartupManager;)V

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->q(Lcom/transsion/startup/StartupManager;)V

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->m(Lcom/transsion/startup/StartupManager;)V

    sget-object v1, Lcom/transsion/spwaitkiller/SpWaitKiller;->Companion:Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;

    iget-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v6}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    move-result-object v6

    if-nez v6, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v6, v5

    :cond_4
    invoke-virtual {v1, v6}, Lcom/transsion/spwaitkiller/SpWaitKiller$Companion;->builder(Landroid/content/Context;)Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/spwaitkiller/SpWaitKiller$Builder;->build()Lcom/transsion/spwaitkiller/SpWaitKiller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/spwaitkiller/SpWaitKiller;->work()V

    sget-object v1, Lcom/transsion/spwaitkiller/gchacker/GCHacker;->INSTANCE:Lcom/transsion/spwaitkiller/gchacker/GCHacker;

    invoke-virtual {v1}, Lcom/transsion/spwaitkiller/gchacker/GCHacker;->hookGCTimeout()V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "StartupManager"

    const-string v8, "stage 3 end"

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {p1, v2}, Lcom/transsion/startup/StartupManager;->l(Lcom/transsion/startup/StartupManager;Z)V

    const-class p1, Lcom/transsion/wrapperadapi/IWrapperAdApi;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/wrapperadapi/IWrapperAdApi;

    if-eqz p1, :cond_5

    iput v2, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    invoke-interface {p1, p0}, Lcom/transsion/wrapperadapi/IWrapperAdApi;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    sget-object p1, Lcom/transsion/push/utils/k;->a:Lcom/transsion/push/utils/k;

    invoke-virtual {p1}, Lcom/transsion/push/utils/k;->q()V

    sget-object p1, Lcom/transsion/startup/work/a;->a:Lcom/transsion/startup/work/a;

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v5

    :cond_7
    invoke-virtual {p1, v1}, Lcom/transsion/startup/work/a;->a(Landroid/content/Context;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    const-wide/16 v6, 0x2710

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    :cond_8
    :goto_2
    sget-object p1, Lcom/transsion/subtitle/h;->a:Lcom/transsion/subtitle/h$a;

    invoke-virtual {p1}, Lcom/transsion/subtitle/h$a;->b()Lcom/transsion/subtitle/h;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/subtitle/h;->init()V

    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    iget-object v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    invoke-static {v1}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    move-result-object v1

    if-nez v1, :cond_9

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v1, v5

    :cond_9
    invoke-virtual {p1, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    sget-object p1, Lom/e;->a:Lom/e;

    invoke-virtual {p1}, Lom/e;->d()V

    sget-object p1, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->a:Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;

    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/UploadInit;->g()V

    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    const/4 v1, 0x4

    iput v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    invoke-static {p1, p0}, Lcom/transsion/startup/StartupManager;->y(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    return-object v0

    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->this$0:Lcom/transsion/startup/StartupManager;

    const v1, 0x7fffffff

    :goto_4
    if-ge v3, v1, :cond_d

    iput-object p1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    iput v3, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    const/4 v6, 0x5

    iput v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    const-wide/32 v6, 0x3a980

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_b

    return-object v0

    :cond_b
    move-object v6, p1

    move v12, v3

    move v3, v1

    move v1, v12

    :goto_5
    sget-object p1, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {v6}, Lcom/transsion/startup/StartupManager;->f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;

    move-result-object v7

    if-nez v7, :cond_c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    move-object v7, v5

    :cond_c
    invoke-virtual {p1, v7}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    iput-object v6, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$0:I

    iput v1, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->I$1:I

    const/4 v7, 0x6

    iput v7, p0, Lcom/transsion/startup/StartupManager$coldBootStage$2;->label:I

    invoke-interface {p1, p0}, Lcom/transsnet/downloader/manager/g;->C(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object v0

    :goto_6
    add-int/2addr v1, v2

    move v12, v3

    move v3, v1

    move v1, v12

    goto :goto_4

    :cond_d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
