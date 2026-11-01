.class public final Lcom/tn/lib/net/exception/ApiException;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B%\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\nJ\u0008\u0010\u0013\u001a\u00020\u0006H\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/tn/lib/net/exception/ApiException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "throwable",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/Throwable;Ljava/lang/String;)V",
        "msg",
        "(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V",
        "errMsg",
        "getErrMsg",
        "()Ljava/lang/String;",
        "setErrMsg",
        "(Ljava/lang/String;)V",
        "errCode",
        "getErrCode",
        "setErrCode",
        "toString",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private errCode:Ljava/lang/String;

.field private errMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/tn/lib/net/exception/ApiException;->errCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/tn/lib/net/exception/ApiException;->errCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/tn/lib/net/exception/ApiException;->errMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/net/exception/ApiException;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/net/exception/ApiException;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final setErrCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/net/exception/ApiException;->errCode:Ljava/lang/String;

    return-void
.end method

.method public final setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/net/exception/ApiException;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tn/lib/net/exception/ApiException;->errMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/tn/lib/net/exception/ApiException;->errCode:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApiException(errMsg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', errCode=\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
