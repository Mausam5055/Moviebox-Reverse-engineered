.class public final Lcom/transsion/usercenter/edit/UserEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008$\n\u0002\u0010\u000b\n\u0002\u0008\u0012\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010=\u001a\u000200J\u0006\u0010>\u001a\u000200R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\u0005X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007R\u001e\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0010\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u001e\u0010\u0013\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\u001e\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\r\"\u0004\u0008\u0018\u0010\u000fR \u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0007\"\u0004\u0008\u001b\u0010\u001cR \u0010\u001d\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0007\"\u0004\u0008\u001f\u0010\u001cR \u0010 \u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0007\"\u0004\u0008\"\u0010\u001cR \u0010#\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0007\"\u0004\u0008%\u0010\u001cR \u0010&\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0007\"\u0004\u0008(\u0010\u001cR \u0010)\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u0007\"\u0004\u0008+\u0010\u001cR \u0010,\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u0007\"\u0004\u0008.\u0010\u001cR\"\u0010/\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u0008/\u00101\"\u0004\u00082\u00103R\"\u00105\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u00085\u00101\"\u0004\u00086\u00103R \u00107\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0007\"\u0004\u00089\u0010\u001cR\u001e\u0010:\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0007\"\u0004\u0008<\u0010\u001cR\u001a\u0010?\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010\u0007\"\u0004\u0008A\u0010\u001c\u00a8\u0006B"
    }
    d2 = {
        "Lcom/transsion/usercenter/edit/UserEntity;",
        "Ljava/io/Serializable;",
        "<init>",
        "()V",
        "FEMALE",
        "",
        "getFEMALE",
        "()Ljava/lang/String;",
        "MALE",
        "getMALE",
        "videos",
        "",
        "getVideos",
        "()I",
        "setVideos",
        "(I)V",
        "likes",
        "getLikes",
        "setLikes",
        "following",
        "getFollowing",
        "setFollowing",
        "follower",
        "getFollower",
        "setFollower",
        "name",
        "getName",
        "setName",
        "(Ljava/lang/String;)V",
        "sex",
        "getSex",
        "setSex",
        "birthday",
        "getBirthday",
        "setBirthday",
        "city",
        "getCity",
        "setCity",
        "country",
        "getCountry",
        "setCountry",
        "age",
        "getAge",
        "setAge",
        "avatarUrl",
        "getAvatarUrl",
        "setAvatarUrl",
        "isFollowHe",
        "",
        "()Ljava/lang/Boolean;",
        "setFollowHe",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "isFollowMe",
        "setFollowMe",
        "userId",
        "getUserId",
        "setUserId",
        "receiveLikes",
        "getReceiveLikes",
        "setReceiveLikes",
        "isFemale",
        "isMale",
        "tokenUpload",
        "getTokenUpload",
        "setTokenUpload",
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
.field private final FEMALE:Ljava/lang/String;

.field private final MALE:Ljava/lang/String;

.field private age:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "age"
    .end annotation
.end field

.field private avatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar_url"
    .end annotation
.end field

.field private birthday:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthday"
    .end annotation
.end field

.field private city:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "city"
    .end annotation
.end field

.field private country:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country"
    .end annotation
.end field

.field private follower:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "follower"
    .end annotation
.end field

.field private following:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "following"
    .end annotation
.end field

.field private isFollowHe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_follow_he"
    .end annotation
.end field

.field private isFollowMe:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_follow_me"
    .end annotation
.end field

.field private likes:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "likes"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "user_name"
        }
        value = "name"
    .end annotation
.end field

.field private receiveLikes:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "receive_likes"
    .end annotation
.end field

.field private sex:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sex"
    .end annotation
.end field

.field private tokenUpload:Ljava/lang/String;

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field private videos:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videos"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "F"

    iput-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->FEMALE:Ljava/lang/String;

    const-string v0, "M"

    iput-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->MALE:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->receiveLikes:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->tokenUpload:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->age:Ljava/lang/String;

    return-object v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getFEMALE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->FEMALE:Ljava/lang/String;

    return-object v0
.end method

.method public final getFollower()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->follower:I

    return v0
.end method

.method public final getFollowing()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->following:I

    return v0
.end method

.method public final getLikes()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->likes:I

    return v0
.end method

.method public final getMALE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->MALE:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiveLikes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->receiveLikes:Ljava/lang/String;

    return-object v0
.end method

.method public final getSex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenUpload()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->tokenUpload:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVideos()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->videos:I

    return v0
.end method

.method public final isFemale()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->FEMALE:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/usercenter/edit/UserEntity;->sex:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isFollowHe()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->isFollowHe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isFollowMe()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->isFollowMe:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isMale()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/edit/UserEntity;->MALE:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/usercenter/edit/UserEntity;->sex:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->age:Ljava/lang/String;

    return-void
.end method

.method public final setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->avatarUrl:Ljava/lang/String;

    return-void
.end method

.method public final setBirthday(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->birthday:Ljava/lang/String;

    return-void
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->city:Ljava/lang/String;

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->country:Ljava/lang/String;

    return-void
.end method

.method public final setFollowHe(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->isFollowHe:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFollowMe(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->isFollowMe:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFollower(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->follower:I

    return-void
.end method

.method public final setFollowing(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->following:I

    return-void
.end method

.method public final setLikes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->likes:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public final setReceiveLikes(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->receiveLikes:Ljava/lang/String;

    return-void
.end method

.method public final setSex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->sex:Ljava/lang/String;

    return-void
.end method

.method public final setTokenUpload(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->tokenUpload:Ljava/lang/String;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setVideos(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/usercenter/edit/UserEntity;->videos:I

    return-void
.end method
