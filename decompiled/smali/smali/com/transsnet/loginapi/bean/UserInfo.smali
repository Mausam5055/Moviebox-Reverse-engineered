.class public Lcom/transsnet/loginapi/bean/UserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008#\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR \u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\tR \u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0007\"\u0004\u0008\u0012\u0010\tR \u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0007\"\u0004\u0008\u0015\u0010\tR\u001e\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR \u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0007\"\u0004\u0008\u001e\u0010\tR\u001e\u0010\u001f\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0019\"\u0004\u0008!\u0010\u001bR \u0010\"\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0007\"\u0004\u0008$\u0010\tR \u0010%\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0007\"\u0004\u0008\'\u0010\tR \u0010(\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0007\"\u0004\u0008*\u0010\tR\u001a\u0010+\u001a\u00020\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0019\"\u0004\u0008-\u0010\u001bR\u001c\u0010.\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0007\"\u0004\u00080\u0010\tR \u00101\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0007\"\u0004\u00083\u0010\tR \u00104\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0007\"\u0004\u00086\u0010\tR\u001c\u00107\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0007\"\u0004\u00089\u0010\t\u00a8\u0006:"
    }
    d2 = {
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "userId",
        "",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "token",
        "getToken",
        "setToken",
        "username",
        "getUsername",
        "setUsername",
        "nickname",
        "getNickname",
        "setNickname",
        "avatar",
        "getAvatar",
        "setAvatar",
        "gender",
        "",
        "getGender",
        "()I",
        "setGender",
        "(I)V",
        "birthday",
        "getBirthday",
        "setBirthday",
        "age",
        "getAge",
        "setAge",
        "country",
        "getCountry",
        "setCountry",
        "province",
        "getProvince",
        "setProvince",
        "cc",
        "getCc",
        "setCc",
        "userType",
        "getUserType",
        "setUserType",
        "pcc",
        "getPcc",
        "setPcc",
        "shortId",
        "getShortId",
        "setShortId",
        "phone",
        "getPhone",
        "setPhone",
        "email",
        "getEmail",
        "setEmail",
        "LoginApi_psRelease"
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
.field private age:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "age"
    .end annotation
.end field

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

.field private cc:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cc"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private email:Ljava/lang/String;

.field private gender:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field private nickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickname"
    .end annotation
.end field

.field private pcc:Ljava/lang/String;

.field private phone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone"
    .end annotation
.end field

.field private province:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "province"
    .end annotation
.end field

.field private shortId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_id"
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field

.field private userType:I

.field private username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAge()I
    .locals 1

    iget v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->age:I

    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public final getCc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()I
    .locals 1

    iget v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->gender:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getPcc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->pcc:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->shortId:Ljava/lang/String;

    return-object v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserType()I
    .locals 1

    iget v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->userType:I

    return v0
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/loginapi/bean/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final setAge(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->age:I

    return-void
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->birthday:Ljava/lang/String;

    return-void
.end method

.method public final setCc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->cc:Ljava/lang/String;

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->country:Ljava/lang/String;

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->email:Ljava/lang/String;

    return-void
.end method

.method public final setGender(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->gender:I

    return-void
.end method

.method public final setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public final setPcc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->pcc:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public final setShortId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->shortId:Ljava/lang/String;

    return-void
.end method

.method public final setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setUserType(I)V
    .locals 0

    iput p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->userType:I

    return-void
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/loginapi/bean/UserInfo;->username:Ljava/lang/String;

    return-void
.end method
