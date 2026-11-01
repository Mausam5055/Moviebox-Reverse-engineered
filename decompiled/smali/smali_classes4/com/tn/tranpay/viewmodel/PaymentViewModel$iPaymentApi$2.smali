.class final Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/viewmodel/PaymentViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/tn/tranpay/network/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0004\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lcom/tn/tranpay/network/b;",
        "kotlin.jvm.PlatformType",
        "invoke",
        "()Lcom/tn/tranpay/network/b;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;

    invoke-direct {v0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;-><init>()V

    sput-object v0, Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;->INSTANCE:Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/tn/tranpay/network/b;
    .locals 2

    sget-object v0, Lcom/tn/tranpay/network/RetrofitClient;->a:Lcom/tn/tranpay/network/RetrofitClient;

    invoke-virtual {v0}, Lcom/tn/tranpay/network/RetrofitClient;->d()Lretrofit2/k0;

    move-result-object v0

    const-class v1, Lcom/tn/tranpay/network/b;

    invoke-virtual {v0, v1}, Lretrofit2/k0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tn/tranpay/network/b;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/tn/tranpay/viewmodel/PaymentViewModel$iPaymentApi$2;->invoke()Lcom/tn/tranpay/network/b;

    move-result-object v0

    return-object v0
.end method
