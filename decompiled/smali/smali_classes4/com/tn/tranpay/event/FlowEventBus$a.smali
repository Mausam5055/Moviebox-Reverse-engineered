.class final Lcom/tn/tranpay/event/FlowEventBus$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/event/FlowEventBus;->observeWithoutLifecycle(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/event/FlowEventBus;

.field final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/event/FlowEventBus;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/event/FlowEventBus$a;->a:Lcom/tn/tranpay/event/FlowEventBus;

    iput-object p2, p0, Lcom/tn/tranpay/event/FlowEventBus$a;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p2, p0, Lcom/tn/tranpay/event/FlowEventBus$a;->a:Lcom/tn/tranpay/event/FlowEventBus;

    iget-object v0, p0, Lcom/tn/tranpay/event/FlowEventBus$a;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p1, v0}, Lcom/tn/tranpay/event/FlowEventBus;->access$invokeReceived(Lcom/tn/tranpay/event/FlowEventBus;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
