.class public final Lcom/tn/tranpay/bean/QueryOrderResultContent;
.super Lcom/tn/tranpay/network/BaseContent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u00085\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006\"\u0004\u0008\u001a\u0010\u0008R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0006\"\u0004\u0008\u001d\u0010\u0008R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0006\"\u0004\u0008 \u0010\u0008R\u001c\u0010!\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0006\"\u0004\u0008#\u0010\u0008R\u001c\u0010$\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\u0006\"\u0004\u0008&\u0010\u0008R\u001c\u0010\'\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0006\"\u0004\u0008)\u0010\u0008R\u001c\u0010*\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u0006\"\u0004\u0008,\u0010\u0008R\u001c\u0010-\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010\u0006\"\u0004\u0008/\u0010\u0008R\u001c\u00100\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0006\"\u0004\u00082\u0010\u0008R\u001c\u00103\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00084\u0010\u0006\"\u0004\u00085\u0010\u0008R\u001c\u00106\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u0010\u0006\"\u0004\u00088\u0010\u0008\u00a8\u00069"
    }
    d2 = {
        "Lcom/tn/tranpay/bean/QueryOrderResultContent;",
        "Lcom/tn/tranpay/network/BaseContent;",
        "()V",
        "coins",
        "",
        "getCoins",
        "()Ljava/lang/String;",
        "setCoins",
        "(Ljava/lang/String;)V",
        "completeTime",
        "getCompleteTime",
        "setCompleteTime",
        "countryLogo",
        "getCountryLogo",
        "setCountryLogo",
        "countryName",
        "getCountryName",
        "setCountryName",
        "cpFrontPage",
        "getCpFrontPage",
        "setCpFrontPage",
        "cpLogo",
        "getCpLogo",
        "setCpLogo",
        "cpName",
        "getCpName",
        "setCpName",
        "currency",
        "getCurrency",
        "setCurrency",
        "orderDescription",
        "getOrderDescription",
        "setOrderDescription",
        "orderId",
        "getOrderId",
        "setOrderId",
        "payMethod",
        "getPayMethod",
        "setPayMethod",
        "payMethodLogo",
        "getPayMethodLogo",
        "setPayMethodLogo",
        "payMethodName",
        "getPayMethodName",
        "setPayMethodName",
        "resultInterceptUrl",
        "getResultInterceptUrl",
        "setResultInterceptUrl",
        "status",
        "getStatus",
        "setStatus",
        "stepStatus",
        "getStepStatus",
        "setStepStatus",
        "symbol",
        "getSymbol",
        "setSymbol",
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
.field private coins:Ljava/lang/String;

.field private completeTime:Ljava/lang/String;

.field private countryLogo:Ljava/lang/String;

.field private countryName:Ljava/lang/String;

.field private cpFrontPage:Ljava/lang/String;

.field private cpLogo:Ljava/lang/String;

.field private cpName:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private orderDescription:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private payMethod:Ljava/lang/String;

.field private payMethodLogo:Ljava/lang/String;

.field private payMethodName:Ljava/lang/String;

.field private resultInterceptUrl:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private stepStatus:Ljava/lang/String;

.field private symbol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/network/BaseContent;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCoins()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->coins:Ljava/lang/String;

    return-object v0
.end method

.method public final getCompleteTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->completeTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->countryLogo:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpFrontPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->cpFrontPage:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->cpLogo:Ljava/lang/String;

    return-object v0
.end method

.method public final getCpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->cpName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->orderDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->payMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayMethodLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->payMethodLogo:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayMethodName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->payMethodName:Ljava/lang/String;

    return-object v0
.end method

.method public final getResultInterceptUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->resultInterceptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getStepStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->stepStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getSymbol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public final setCoins(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->coins:Ljava/lang/String;

    return-void
.end method

.method public final setCompleteTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->completeTime:Ljava/lang/String;

    return-void
.end method

.method public final setCountryLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->countryLogo:Ljava/lang/String;

    return-void
.end method

.method public final setCountryName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->countryName:Ljava/lang/String;

    return-void
.end method

.method public final setCpFrontPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->cpFrontPage:Ljava/lang/String;

    return-void
.end method

.method public final setCpLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->cpLogo:Ljava/lang/String;

    return-void
.end method

.method public final setCpName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->cpName:Ljava/lang/String;

    return-void
.end method

.method public final setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->currency:Ljava/lang/String;

    return-void
.end method

.method public final setOrderDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->orderDescription:Ljava/lang/String;

    return-void
.end method

.method public final setOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->orderId:Ljava/lang/String;

    return-void
.end method

.method public final setPayMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->payMethod:Ljava/lang/String;

    return-void
.end method

.method public final setPayMethodLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->payMethodLogo:Ljava/lang/String;

    return-void
.end method

.method public final setPayMethodName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->payMethodName:Ljava/lang/String;

    return-void
.end method

.method public final setResultInterceptUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->resultInterceptUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->status:Ljava/lang/String;

    return-void
.end method

.method public final setStepStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->stepStatus:Ljava/lang/String;

    return-void
.end method

.method public final setSymbol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/QueryOrderResultContent;->symbol:Ljava/lang/String;

    return-void
.end method
