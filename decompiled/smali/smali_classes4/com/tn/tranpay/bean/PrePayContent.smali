.class public final Lcom/tn/tranpay/bean/PrePayContent;
.super Lcom/tn/tranpay/network/BaseContent;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/tn/tranpay/bean/PrePayContent;",
        "Lcom/tn/tranpay/network/BaseContent;",
        "()V",
        "data",
        "Lcom/tn/tranpay/bean/PrePayInfoBean;",
        "getData",
        "()Lcom/tn/tranpay/bean/PrePayInfoBean;",
        "setData",
        "(Lcom/tn/tranpay/bean/PrePayInfoBean;)V",
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
.field private data:Lcom/tn/tranpay/bean/PrePayInfoBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tn/tranpay/network/BaseContent;-><init>()V

    return-void
.end method


# virtual methods
.method public final getData()Lcom/tn/tranpay/bean/PrePayInfoBean;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PrePayContent;->data:Lcom/tn/tranpay/bean/PrePayInfoBean;

    return-object v0
.end method

.method public final setData(Lcom/tn/tranpay/bean/PrePayInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/PrePayContent;->data:Lcom/tn/tranpay/bean/PrePayInfoBean;

    return-void
.end method
