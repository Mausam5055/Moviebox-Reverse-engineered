.class public final Lcom/tn/tranpay/event/PostEventKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0005\u001a\u00020\u0004\"\u0006\u0008\u0000\u0010\u0000\u0018\u00012\u0006\u0010\u0001\u001a\u00028\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0087\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "T",
        "event",
        "",
        "timeMillis",
        "",
        "postEvent",
        "(Ljava/lang/Object;J)V",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic postEvent(Ljava/lang/Object;J)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)V"
        }
    .end annotation

    sget-object v0, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    invoke-virtual {v0}, Lcom/tn/tranpay/event/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lai/a;->a:Lai/a;

    const-string p1, "TranPay SDK not initialized, cannot post event. Please call TranPay.configure() in Application.onCreate()"

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lai/a;->e(Lai/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/tn/tranpay/event/AppScopeVMlProvider;->INSTANCE:Lcom/tn/tranpay/event/AppScopeVMlProvider;

    const-class v1, Lcom/tn/tranpay/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/tn/tranpay/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/event/FlowEventBus;

    const/4 v1, 0x4

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->n(ILjava/lang/String;)V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "T::class.java.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/tn/tranpay/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
