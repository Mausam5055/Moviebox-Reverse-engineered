.class public final Lcom/transsion/usercenter/edit/api/RequstUserEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR \u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0007\"\u0004\u0008\u0018\u0010\tR \u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\tR\"\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\"\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R \u0010#\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0007\"\u0004\u0008%\u0010\tR\u001c\u0010&\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0007\"\u0004\u0008(\u0010\tR\u001c\u0010)\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0007\"\u0004\u0008+\u0010\t\u00a8\u0006,"
    }
    d2 = {
        "Lcom/transsion/usercenter/edit/api/RequstUserEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "id",
        "getId",
        "setId",
        "avatar",
        "getAvatar",
        "setAvatar",
        "newAvatarPath",
        "getNewAvatarPath",
        "setNewAvatarPath",
        "userBio",
        "getUserBio",
        "setUserBio",
        "birthday",
        "getBirthday",
        "setBirthday",
        "nickname",
        "getNickname",
        "setNickname",
        "gender",
        "",
        "getGender",
        "()Ljava/lang/Integer;",
        "setGender",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "country",
        "getCountry",
        "setCountry",
        "city",
        "getCity",
        "setCity",
        "tempBucket",
        "getTempBucket",
        "setTempBucket",
        "UserCenter_psRelease"
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
.field private avatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation
.end field

.field private birthday:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthday"
    .end annotation
.end field

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private gender:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private newAvatarPath:Ljava/lang/String;

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field

.field private tempBucket:Ljava/lang/String;

.field private userBio:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->gender:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewAvatarPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->newAvatarPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getTempBucket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->tempBucket:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserBio()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->userBio:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->birthday:Ljava/lang/String;

    return-void
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->city:Ljava/lang/String;

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->country:Ljava/lang/String;

    return-void
.end method

.method public final setGender(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->gender:Ljava/lang/Integer;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public final setNewAvatarPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->newAvatarPath:Ljava/lang/String;

    return-void
.end method

.method public final setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->nickname:Ljava/lang/String;

    return-void
.end method

.method public final setTempBucket(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->tempBucket:Ljava/lang/String;

    return-void
.end method

.method public final setUserBio(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->userBio:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/api/RequstUserEntity;->userId:Ljava/lang/String;

    return-void
.end method
