.class final Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/helper/PaymentMMKV;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.helper.PaymentMMKV"
    f = "PaymentMMKV.kt"
    l = {
        0x90
    }
    m = "getCachedCurrencyInfoByIP"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/tn/tranpay/helper/PaymentMMKV;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/helper/PaymentMMKV;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tn/tranpay/helper/PaymentMMKV;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->this$0:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    iget-object p1, p0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->this$0:Lcom/tn/tranpay/helper/PaymentMMKV;

    invoke-virtual {p1, p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
