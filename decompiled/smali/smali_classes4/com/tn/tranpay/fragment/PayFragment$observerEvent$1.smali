.class final Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PayFragment;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/tn/tranpay/event/b;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/tn/tranpay/event/b;",
        "event",
        "",
        "invoke",
        "(Lcom/tn/tranpay/event/b;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/tranpay/fragment/PayFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/PayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tn/tranpay/event/b;

    invoke-virtual {p0, p1}, Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;->invoke(Lcom/tn/tranpay/event/b;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/tn/tranpay/event/b;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lai/a;->a:Lai/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PaymentEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5, v4}, Lai/a;->c(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Lcom/tn/tranpay/event/b;->a()I

    move-result v1

    if-gez v1, :cond_1

    const-string v1, "\u652f\u4ed8\u53d6\u6d88"

    invoke-static {v2, v1, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-static {v1}, Lcom/tn/tranpay/fragment/PayFragment;->d0(Lcom/tn/tranpay/fragment/PayFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->A()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v1, v0, Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-static {v1}, Lcom/tn/tranpay/fragment/PayFragment;->d0(Lcom/tn/tranpay/fragment/PayFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v7, "USER CANCEL"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->h(Lcom/tn/tranpay/viewmodel/PaymentViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    iget-object v11, v0, Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v12, 0x1

    const-string v13, "Payment cancelled"

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/tn/tranpay/fragment/PayFragment;->j0(Lcom/tn/tranpay/fragment/PayFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "\u4e09\u65b9\u6536\u94f6\u53f0\u9875\u9762\u5173\u95ed\u6216\u5b8c\u6210\uff0c\u8c03\u6574\u8f6e\u8be2\u65f6\u95f4\u7ee7\u7eed\u67e5\u8be2"

    invoke-static {v2, v1, v4, v5, v4}, Lai/a;->g(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v1, v0, Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-static {v1}, Lcom/tn/tranpay/fragment/PayFragment;->d0(Lcom/tn/tranpay/fragment/PayFragment;)Lcom/tn/tranpay/viewmodel/PaymentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tn/tranpay/viewmodel/PaymentViewModel;->J()V

    :goto_0
    iget-object v1, v0, Lcom/tn/tranpay/fragment/PayFragment$observerEvent$1;->this$0:Lcom/tn/tranpay/fragment/PayFragment;

    invoke-static {v1}, Lcom/tn/tranpay/fragment/PayFragment;->c0(Lcom/tn/tranpay/fragment/PayFragment;)Lkotlinx/coroutines/t1;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v4}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
