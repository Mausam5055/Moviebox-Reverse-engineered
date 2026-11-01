.class public final Lcom/tn/tranpay/bean/PublicRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/tn/tranpay/bean/PublicRequestEntity;",
        "Ljava/io/Serializable;",
        "()V",
        "appKey",
        "",
        "getAppKey",
        "()Ljava/lang/String;",
        "setAppKey",
        "(Ljava/lang/String;)V",
        "content",
        "getContent",
        "setContent",
        "sign",
        "getSign",
        "setSign",
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
.field private appKey:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private sign:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->sign:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->appKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public final setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->appKey:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->content:Ljava/lang/String;

    return-void
.end method

.method public final setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/bean/PublicRequestEntity;->sign:Ljava/lang/String;

    return-void
.end method
