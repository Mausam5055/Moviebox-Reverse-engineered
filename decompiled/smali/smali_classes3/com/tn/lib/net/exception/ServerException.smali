.class public final Lcom/tn/lib/net/exception/ServerException;
.super Ljava/lang/RuntimeException;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00060\u0001j\u0002`\u0002B\u001d\u0008\u0016\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/tn/lib/net/exception/ServerException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "errCode",
        "",
        "errMsg",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getErrCode",
        "()Ljava/lang/String;",
        "setErrCode",
        "(Ljava/lang/String;)V",
        "getErrMsg",
        "setErrMsg",
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Lcom/tn/lib/net/exception/ServerException;->errCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/tn/lib/net/exception/ServerException;->errMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getErrCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/net/exception/ServerException;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/net/exception/ServerException;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final setErrCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/net/exception/ServerException;->errCode:Ljava/lang/String;

    return-void
.end method

.method public final setErrMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/net/exception/ServerException;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tn/lib/net/exception/ServerException;->errMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/tn/lib/net/exception/ServerException;->errCode:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServerException(errMsg=\'"

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
