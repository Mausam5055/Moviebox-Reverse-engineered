.class public final Lcom/tn/tranpay/bean/CreateOrderResultContent;
.super Lcom/tn/tranpay/network/BaseContent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR$\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u0006\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\nR$\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0006\u001a\u0004\u0008\u0012\u0010\u0008\"\u0004\u0008\u0013\u0010\nR$\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/tn/tranpay/bean/CreateOrderResultContent;",
        "Lcom/tn/tranpay/network/BaseContent;",
        "<init>",
        "()V",
        "",
        "txnId",
        "Ljava/lang/String;",
        "getTxnId",
        "()Ljava/lang/String;",
        "setTxnId",
        "(Ljava/lang/String;)V",
        "status",
        "getStatus",
        "setStatus",
        "webUrl",
        "getWebUrl",
        "setWebUrl",
        "rnUrl",
        "getRnUrl",
        "setRnUrl",
        "Lyh/a;",
        "payInstruction",
        "Lyh/a;",
        "getPayInstruction",
        "()Lyh/a;",
        "setPayInstruction",
        "(Lyh/a;)V",
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
.field private payInstruction:Lyh/a;

.field private rnUrl:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private txnId:Ljava/lang/String;

.field private webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/network/BaseContent;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPayInstruction()Lyh/a;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->payInstruction:Lyh/a;

    return-object v0
.end method

.method public final getRnUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->rnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTxnId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->txnId:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->webUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final setPayInstruction(Lyh/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->payInstruction:Lyh/a;

    return-void
.end method

.method public final setRnUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->rnUrl:Ljava/lang/String;

    return-void
.end method

.method public final setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->status:Ljava/lang/String;

    return-void
.end method

.method public final setTxnId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->txnId:Ljava/lang/String;

    return-void
.end method

.method public final setWebUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/CreateOrderResultContent;->webUrl:Ljava/lang/String;

    return-void
.end method
