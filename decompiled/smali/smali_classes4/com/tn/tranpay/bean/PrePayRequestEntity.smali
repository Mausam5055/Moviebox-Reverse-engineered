.class public final Lcom/tn/tranpay/bean/PrePayRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001a\u0010\u001b\u001a\u00020\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008\u00a8\u0006$"
    }
    d2 = {
        "Lcom/tn/tranpay/bean/PrePayRequestEntity;",
        "Ljava/io/Serializable;",
        "()V",
        "amount",
        "",
        "getAmount",
        "()Ljava/lang/String;",
        "setAmount",
        "(Ljava/lang/String;)V",
        "appKey",
        "getAppKey",
        "setAppKey",
        "countryCode",
        "getCountryCode",
        "setCountryCode",
        "currency",
        "getCurrency",
        "setCurrency",
        "language",
        "getLanguage",
        "setLanguage",
        "orderDescription",
        "getOrderDescription",
        "setOrderDescription",
        "orderId",
        "getOrderId",
        "setOrderId",
        "payByLocalCurrency",
        "",
        "getPayByLocalCurrency",
        "()Z",
        "setPayByLocalCurrency",
        "(Z)V",
        "payMethod",
        "getPayMethod",
        "setPayMethod",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private amount:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private orderDescription:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payByLocalCurrency:Z

.field private payMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->appKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->amount:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->countryCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->orderId:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->orderDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->orderDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayByLocalCurrency()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->payByLocalCurrency:Z

    return v0
.end method

.method public final getPayMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->payMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final setAmount(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->amount:Ljava/lang/String;

    return-void
.end method

.method public final setAppKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->appKey:Ljava/lang/String;

    return-void
.end method

.method public final setCountryCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->countryCode:Ljava/lang/String;

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->language:Ljava/lang/String;

    return-void
.end method

.method public final setOrderDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->orderDescription:Ljava/lang/String;

    return-void
.end method

.method public final setOrderId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->orderId:Ljava/lang/String;

    return-void
.end method

.method public final setPayByLocalCurrency(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->payByLocalCurrency:Z

    return-void
.end method

.method public final setPayMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayRequestEntity;->payMethod:Ljava/lang/String;

    return-void
.end method
