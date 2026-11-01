.class final Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.monopoly.manager.AdPlansAssetsManager$innerCopy$2"
    f = "AdPlansAssetsManager.kt"
    l = {
        0x1f,
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;

    invoke-direct {p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;-><init>(Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iput v3, p0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->label:I

    invoke-virtual {p1, p0}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->j(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gtz p1, :cond_9

    sget-object p1, Lti/f;->a:Lti/f;

    const-string v1, "local_non_ad_plan.json"

    invoke-virtual {p1, v1}, Lti/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-class v1, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v1, p1}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->c(Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;Lcom/transsion/ad/monopoly/model/MbAdPlansDto;)Lcom/transsion/ad/monopoly/model/MbAdPlansDto;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager$innerCopy$2;->label:I

    invoke-static {v1, p1, p0}, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->d(Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;Lcom/transsion/ad/monopoly/model/MbAdPlansDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    :goto_1
    sget-object p1, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    invoke-virtual {p1}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string v1, "non_ad_plan_version"

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    invoke-virtual {p1, v1, v2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v4, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v3

    :goto_3
    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdPlansDto;->getData()Lcom/transsion/ad/monopoly/model/MbAdPlansBean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/ad/monopoly/model/MbAdPlansBean;->getAdPlans()Ljava/util/List;

    move-result-object v3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "innerCopy() --> success --> adPlans?.size -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> adPlans = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    const-string v2, "innerCopy() --> assets\u6570\u636e -- \u4fdd\u5b58\u6570\u636e\u5e93\u5931\u8d25 -- fail fail fail -- readAssets = null"

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    const-string v2, "innerCopy() --> \u672c\u5730\u5b58\u5728\u975e\u6807\u5e7f\u544a\u8ba1\u5212\uff0c\u4e0d\u9700\u8981\u4eceassets\u4e0b\u8f7d"

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_6
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    sget-object v0, Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;->b:Lcom/transsion/ad/monopoly/manager/AdPlansAssetsManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "innerCopy() --> \u4fdd\u5b58\u672c\u5730\u6570\u636e\u5f02\u5e38 -- error error error --> it = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
