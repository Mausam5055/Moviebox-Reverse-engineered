.class public final Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010%\u001a\u00020\u0005J\u0006\u0010&\u001a\u00020\u0005R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0007\"\u0004\u0008!\u0010\tR\u001a\u0010\"\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001c\"\u0004\u0008$\u0010\u001e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "phone",
        "",
        "getPhone",
        "()Ljava/lang/String;",
        "setPhone",
        "(Ljava/lang/String;)V",
        "mail",
        "getMail",
        "setMail",
        "cc",
        "getCc",
        "setCc",
        "password",
        "getPassword",
        "setPassword",
        "inviteCode",
        "getInviteCode",
        "setInviteCode",
        "verificationCode",
        "getVerificationCode",
        "setVerificationCode",
        "type",
        "",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "package_name",
        "getPackage_name",
        "setPackage_name",
        "authType",
        "getAuthType",
        "setAuthType",
        "dataKey",
        "account",
        "Login_psRelease"
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
.field private authType:I

.field private cc:Ljava/lang/String;

.field private inviteCode:Ljava/lang/String;

.field private mail:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private type:I

.field private verificationCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final account()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->authType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->mail:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->cc:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->phone:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final dataKey()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->authType:I

    const/4 v1, 0x1

    const-string v2, "_"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->mail:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->verificationCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->inviteCode:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->cc:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->phone:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->verificationCode:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->inviteCode:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getAuthType()I
    .locals 1

    iget v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->authType:I

    return v0
.end method

.method public final getCc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public final getInviteCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->inviteCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getMail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackage_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->password:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->type:I

    return v0
.end method

.method public final getVerificationCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->verificationCode:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuthType(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->authType:I

    return-void
.end method

.method public final setCc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->cc:Ljava/lang/String;

    return-void
.end method

.method public final setInviteCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->inviteCode:Ljava/lang/String;

    return-void
.end method

.method public final setMail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->mail:Ljava/lang/String;

    return-void
.end method

.method public final setPackage_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->package_name:Ljava/lang/String;

    return-void
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->password:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->type:I

    return-void
.end method

.method public final setVerificationCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->verificationCode:Ljava/lang/String;

    return-void
.end method
