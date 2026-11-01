.class final Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->k(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lkotlinx/coroutines/n0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
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
    c = "com.transsion.postdetail.helper.NegativeFeedbackHelper$show$1"
    f = "NegativeFeedbackHelper.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $authorId:Ljava/lang/String;

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $lifecycleScope:Lkotlinx/coroutines/n0;

.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageName:Ljava/lang/String;

.field final synthetic $postId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$pageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$postId:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$authorId:Ljava/lang/String;

    iput-object p5, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$lifecycleScope:Lkotlinx/coroutines/n0;

    iput-object p6, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/tn/lib/net/bean/BaseDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/bean/NegativeFeedbackAction;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->d(Lcom/tn/lib/net/bean/BaseDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/bean/NegativeFeedbackAction;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lcom/tn/lib/net/bean/BaseDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lcom/transsion/postdetail/bean/NegativeFeedbackAction;)Lkotlin/Unit;
    .locals 8

    invoke-virtual {p6}, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;->getActionType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEGATIVE_ACTION_TYPE_REPORT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->getReportConfig()Lcom/transsion/postdetail/bean/ReportConfig;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "/postdetail/feedback_input"

    invoke-static {p0}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string p4, "extra_report_config_json"

    invoke-virtual {p0, p4, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string p1, "extra_post_id"

    invoke-virtual {p0, p1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string p1, "extra_author_id"

    invoke-virtual {p0, p1, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string p1, "extra_action_type"

    invoke-virtual {p6}, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;->getActionType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const-string p1, "extra_submit_toast_text"

    invoke-virtual {p6}, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;->getSubmitToastText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, v0, v0, p1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-virtual {p6}, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;->getActionType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p6}, Lcom/transsion/postdetail/bean/NegativeFeedbackAction;->getSubmitToastText()Ljava/lang/String;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->d(Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v8, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;

    iget-object v1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$pageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$postId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$authorId:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$lifecycleScope:Lkotlinx/coroutines/n0;

    iget-object v6, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    move-object v0, v8

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v8, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->L$0:Ljava/lang/Object;

    return-object v8
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    :try_start_1
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->a:Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;

    invoke-static {p1}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->b(Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;)Lxo/b;

    move-result-object p1

    iput v3, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->label:I

    invoke-static {p1, v2, p0, v3, v2}, Lxo/b$a;->a(Lxo/b;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v5, p1

    check-cast v5, Lcom/tn/lib/net/bean/BaseDto;

    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->getActions()Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, v2

    :goto_3
    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/postdetail/bean/NegativeFeedbackConfigBean;->getReportConfig()Lcom/transsion/postdetail/bean/ReportConfig;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/transsion/postdetail/ui/dialog/h;

    iget-object v1, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$pageName:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/transsion/postdetail/ui/dialog/h;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$postId:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$authorId:Ljava/lang/String;

    iget-object v9, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$lifecycleScope:Lkotlinx/coroutines/n0;

    iget-object v10, p0, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper$show$1;->$onSuccess:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/transsion/postdetail/helper/f;

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/transsion/postdetail/helper/f;-><init>(Lcom/tn/lib/net/bean/BaseDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/dialog/h;->j(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-static {}, Lcom/transsion/postdetail/helper/NegativeFeedbackHelper;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNegativeFeedbackConfig error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v3}, Llg/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget p1, Lcom/transsion/postdetail/R$string;->post_feedback_fail:I

    invoke-static {p1}, Lcom/transsion/baseui/util/m;->e(I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
