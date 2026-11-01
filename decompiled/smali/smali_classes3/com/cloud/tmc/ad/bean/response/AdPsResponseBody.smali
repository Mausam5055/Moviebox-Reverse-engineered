.class public final Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;,
        Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$PsLinkListDTO;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;",
        "Ljava/io/Serializable;",
        "()V",
        "code",
        "",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "data",
        "Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;",
        "getData",
        "()Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;",
        "setData",
        "(Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;)V",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "DataDTO",
        "PsLinkListDTO",
        "com.cloud.tmc.miniad"
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
.field private code:I

.field private data:Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;->code:I

    return v0
.end method

.method public final getData()Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;->data:Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;->code:I

    return-void
.end method

.method public final setData(Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;->data:Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody$DataDTO;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/response/AdPsResponseBody;->message:Ljava/lang/String;

    return-void
.end method
