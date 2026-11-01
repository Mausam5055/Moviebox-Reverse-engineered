.class final Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/tn/tranpay/bean/LoadConfigContent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/tn/tranpay/bean/LoadConfigContent;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tn/tranpay/bean/LoadConfigContent;

    invoke-virtual {p0, p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->invoke(Lcom/tn/tranpay/bean/LoadConfigContent;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/tn/tranpay/bean/LoadConfigContent;)V
    .locals 12

    sget-object v0, Lai/a;->a:Lai/a;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getCode()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getMessage()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "configLiveData observed: isNull="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", message="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v0, v4, v3, v5, v3}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getCode()Ljava/lang/String;

    move-result-object v4

    const-string v6, "0000"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/tn/tranpay/bean/LoadConfigContent;->getMedium()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v5

    new-instance v7, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;

    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-direct {v7, p1, v3}, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1$1;-><init>(Lcom/tn/tranpay/fragment/PayLoadingFragment;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto/16 :goto_7

    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-virtual {p1}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Lcom/tn/tranpay/report/c;->j(Z)V

    :goto_4
    iget-object v2, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x3

    const-string v4, "Unavailable pay method"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_6
    iget-object v4, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-virtual {v4}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->getLogViewConfig()Lcom/tn/tranpay/report/c;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v4, v1}, Lcom/tn/tranpay/report/c;->j(Z)V

    :goto_5
    sget-object v4, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    iget-object v6, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v6}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tn/tranpay/BillingParams;->getOrderDesc()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v6, ""

    :cond_8
    iget-object v7, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v7}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tn/tranpay/BillingParams;->getPayByLocalCurrency()Z

    move-result v7

    iget-object v8, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    invoke-static {v8}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->Z(Lcom/tn/tranpay/fragment/PayLoadingFragment;)Lcom/tn/tranpay/BillingParams;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tn/tranpay/BillingParams;->getTxnId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1, v6, v7, v8}, Lcom/tn/tranpay/report/h;->j(ZLjava/lang/String;ZLjava/lang/String;)V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/tn/tranpay/network/BaseContent;->getCode()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_9
    move-object v1, v3

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callbackErrorThenDismiss triggered: it="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3, v5, v3}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/tn/tranpay/fragment/PayLoadingFragment$onViewCreated$1;->this$0:Lcom/tn/tranpay/fragment/PayLoadingFragment;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v7, -0x1

    const-string v8, "loading data is null"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/tn/tranpay/fragment/PayLoadingFragment;->g0(Lcom/tn/tranpay/fragment/PayLoadingFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_7
    return-void
.end method
