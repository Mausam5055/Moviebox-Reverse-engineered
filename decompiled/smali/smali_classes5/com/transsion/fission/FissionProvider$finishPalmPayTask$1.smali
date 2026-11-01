.class final Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/fission/FissionProvider;->f(I)V
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
    c = "com.transsion.fission.FissionProvider$finishPalmPayTask$1"
    f = "FissionProvider.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subjectType:I

.field label:I

.field final synthetic this$0:Lcom/transsion/fission/FissionProvider;


# direct methods
.method constructor <init>(ILcom/transsion/fission/FissionProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/transsion/fission/FissionProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->$subjectType:I

    iput-object p2, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->this$0:Lcom/transsion/fission/FissionProvider;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->h(Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->g(Lcom/transsion/bean/HomePopupEntity;)V

    return-void
.end method

.method private static final g(Lcom/transsion/bean/HomePopupEntity;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/transsion/commercializationapi/ICommonDialogApi;

    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/commercializationapi/ICommonDialogApi;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/fission/o;

    invoke-direct {v1}, Lcom/transsion/fission/o;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/transsion/commercializationapi/ICommonDialogApi;->b(Lcom/transsion/bean/HomePopupEntity;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method

.method private static final h(Z)Lkotlin/Unit;
    .locals 0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;

    iget v0, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->$subjectType:I

    iget-object v1, p0, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->this$0:Lcom/transsion/fission/FissionProvider;

    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;-><init>(ILcom/transsion/fission/FissionProvider;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v2, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget v2, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->$subjectType:I

    iget-object v6, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->this$0:Lcom/transsion/fission/FissionProvider;

    :try_start_1
    sget-object v7, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "subjectType"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "toString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v9, "application/json"

    invoke-virtual {v8, v9}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-static {v6}, Lcom/transsion/fission/FissionProvider;->k(Lcom/transsion/fission/FissionProvider;)Lxk/b;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v7, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v7}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v7

    iput v4, v1, Lcom/transsion/fission/FissionProvider$finishPalmPayTask$1;->label:I

    invoke-interface {v6, v7, v2, v1}, Lxk/b;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v5

    :goto_2
    const-string v6, "0"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->getTaskInfo()Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_5
    move-object v0, v5

    :goto_3
    const-string v6, "kv_task_is_finished"

    if-eqz v0, :cond_6

    :try_start_2
    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->getProgress()I

    move-result v7

    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskInfo;->getTotalProgress()I

    move-result v0

    if-lt v7, v0, :cond_6

    sget-object v0, Lc;->a:Lc;

    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    :cond_6
    sget-object v0, Lc;->a:Lc;

    invoke-virtual {v0}, Lc;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_4
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/fission/activity/bean/PalmPayTaskResult;->getPopup()Lcom/transsion/bean/HomePopupInfo;

    move-result-object v0

    move-object v7, v0

    goto :goto_5

    :cond_7
    move-object v7, v5

    :goto_5
    if-eqz v7, :cond_8

    new-instance v0, Lcom/transsion/bean/HomePopupInfo;

    const-string v11, ""

    const-string v13, ""

    const-string v15, ""

    const-string v16, ""

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lcom/transsion/bean/HomePopupInfo;-><init>(JLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/bean/HomePopupEntity;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v6, v2

    move-object v8, v0

    invoke-direct/range {v6 .. v11}, Lcom/transsion/bean/HomePopupEntity;-><init>(Lcom/transsion/bean/HomePopupInfo;Lcom/transsion/bean/HomePopupInfo;IJ)V

    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v4, Lcom/transsion/fission/n;

    invoke-direct {v4, v2}, Lcom/transsion/fission/n;-><init>(Lcom/transsion/bean/HomePopupEntity;)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_8

    :cond_9
    sget-object v2, Llg/a;->a:Llg/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishPalmPayTask() ---> getOrElse() --> it = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v5}, Llg/a$a;->m(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
