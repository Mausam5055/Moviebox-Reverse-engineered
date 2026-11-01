.class public final Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "exists",
        "",
        "getExists",
        "()Z",
        "setExists",
        "(Z)V",
        "hasPassword",
        "getHasPassword",
        "setHasPassword",
        "reset",
        "getReset",
        "setReset",
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
.field private exists:Z

.field private hasPassword:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasPassword"
    .end annotation
.end field

.field private reset:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExists()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->exists:Z

    return v0
.end method

.method public final getHasPassword()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->hasPassword:Z

    return v0
.end method

.method public final getReset()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->reset:Z

    return v0
.end method

.method public final setExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->exists:Z

    return-void
.end method

.method public final setHasPassword(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->hasPassword:Z

    return-void
.end method

.method public final setReset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->reset:Z

    return-void
.end method
