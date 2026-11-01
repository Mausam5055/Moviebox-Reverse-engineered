.class public final Lcom/cloud/tmc/integration/net/BaseResponse;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cloud/tmc/kernel/model/BaseBean;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002B3\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0016\u001a\u00020\u0004H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00018\u0000H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003JB\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020\u0004H\u00d6\u0001J\u0008\u0010!\u001a\u00020\u0007H\u0016R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000b\u00a8\u0006\""
    }
    d2 = {
        "Lcom/cloud/tmc/integration/net/BaseResponse;",
        "T",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "code",
        "",
        "data",
        "message",
        "",
        "callbackId",
        "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V",
        "getCallbackId",
        "()Ljava/lang/String;",
        "setCallbackId",
        "(Ljava/lang/String;)V",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getMessage",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/net/BaseResponse;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "com.cloud.tmc.integration"
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
.field private callbackId:Ljava/lang/String;

.field private code:I

.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    iput-object p2, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    iput-object p3, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const-string v0, ""

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/net/BaseResponse;ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/integration/net/BaseResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/net/BaseResponse;->copy(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/net/BaseResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    return v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/net/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cloud/tmc/integration/net/BaseResponse<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/tmc/integration/net/BaseResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/net/BaseResponse;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/net/BaseResponse;

    iget v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    iget v3, p1, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    return v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final setCallbackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->code:I

    iget-object v1, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->data:Ljava/lang/Object;

    iget-object v2, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->message:Ljava/lang/String;

    iget-object v3, p0, Lcom/cloud/tmc/integration/net/BaseResponse;->callbackId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BaseResponse(code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", data="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", callbackId="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
