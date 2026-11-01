.class public Lcom/tn/tranpay/network/BaseSignDto;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tn/tranpay/network/BaseContent;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0004B+\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\nJ\u001b\u0010\u000f\u001a\u0004\u0018\u00018\u00002\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001c\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0006H\u0016R \u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001e\u0010\u000f\u001a\u0004\u0018\u00018\u0000X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000c\"\u0004\u0008\u0016\u0010\u000eR\u001e\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000c\"\u0004\u0008\u0018\u0010\u000eR \u0010\t\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/tn/tranpay/network/BaseSignDto;",
        "T",
        "Lcom/tn/tranpay/network/BaseContent;",
        "Ljava/io/Serializable;",
        "()V",
        "responseCode",
        "",
        "responseMessage",
        "content",
        "sign",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
        "parseContent",
        "getParseContent",
        "()Lcom/tn/tranpay/network/BaseContent;",
        "setParseContent",
        "(Lcom/tn/tranpay/network/BaseContent;)V",
        "Lcom/tn/tranpay/network/BaseContent;",
        "getResponseCode",
        "setResponseCode",
        "getResponseMessage",
        "setResponseMessage",
        "getSign",
        "setSign",
        "contentClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Lcom/tn/tranpay/network/BaseContent;",
        "toString",
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
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field private parseContent:Lcom/tn/tranpay/network/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private responseCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseCode"
    .end annotation
.end field

.field private responseMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "responseMessage"
    .end annotation
.end field

.field private sign:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sign"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "responseCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseMessage:Ljava/lang/String;

    iput-object p3, p0, Lcom/tn/tranpay/network/BaseSignDto;->content:Ljava/lang/String;

    iput-object p4, p0, Lcom/tn/tranpay/network/BaseSignDto;->sign:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getParseContent()Lcom/tn/tranpay/network/BaseContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->parseContent:Lcom/tn/tranpay/network/BaseContent;

    return-object v0
.end method

.method public final getResponseCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public final parseContent(Ljava/lang/Class;)Lcom/tn/tranpay/network/BaseContent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "contentClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->content:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/tn/tranpay/helper/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/network/BaseContent;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/network/BaseSignDto;->content:Ljava/lang/String;

    return-void
.end method

.method public final setParseContent(Lcom/tn/tranpay/network/BaseContent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tn/tranpay/network/BaseSignDto;->parseContent:Lcom/tn/tranpay/network/BaseContent;

    return-void
.end method

.method public final setResponseCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseCode:Ljava/lang/String;

    return-void
.end method

.method public final setResponseMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseMessage:Ljava/lang/String;

    return-void
.end method

.method public final setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/tranpay/network/BaseSignDto;->sign:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/tn/tranpay/network/BaseSignDto;->responseMessage:Ljava/lang/String;

    iget-object v2, p0, Lcom/tn/tranpay/network/BaseSignDto;->content:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BaseSignDto(code=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', message="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", content="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
