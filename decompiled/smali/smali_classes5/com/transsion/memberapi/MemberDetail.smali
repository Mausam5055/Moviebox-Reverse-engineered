.class public final Lcom/transsion/memberapi/MemberDetail;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008#\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B]\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005\u0012\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010,\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u00c6\u0003J\t\u0010-\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0011\u00100\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005H\u00c6\u0003J\u0011\u00101\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005H\u00c6\u0003Jm\u00102\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005H\u00c6\u0001J\u0013\u00103\u001a\u0002042\u0008\u00105\u001a\u0004\u0018\u000106H\u00d6\u0003J\t\u00107\u001a\u000208H\u00d6\u0001J\t\u00109\u001a\u00020:H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u0018\"\u0004\u0008(\u0010\u001aR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0018\"\u0004\u0008*\u0010\u001a\u00a8\u0006;"
    }
    d2 = {
        "Lcom/transsion/memberapi/MemberDetail;",
        "Ljava/io/Serializable;",
        "memberInfo",
        "Lcom/transsion/memberapi/MemberInfo;",
        "memberRights",
        "",
        "Lcom/transsion/memberapi/MemberRight;",
        "rewardInfo",
        "Lcom/transsion/memberapi/RewardInfo;",
        "userInfo",
        "Lcom/transsnet/loginapi/bean/UserInfo;",
        "pointInfo",
        "Lcom/transsion/memberapi/PointInfo;",
        "memberAgreements",
        "Lcom/transsion/memberapi/MemberAgreement;",
        "entitlements",
        "Lcom/transsion/memberapi/EntitlementsBean;",
        "<init>",
        "(Lcom/transsion/memberapi/MemberInfo;Ljava/util/List;Lcom/transsion/memberapi/RewardInfo;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/PointInfo;Ljava/util/List;Ljava/util/List;)V",
        "getMemberInfo",
        "()Lcom/transsion/memberapi/MemberInfo;",
        "setMemberInfo",
        "(Lcom/transsion/memberapi/MemberInfo;)V",
        "getMemberRights",
        "()Ljava/util/List;",
        "setMemberRights",
        "(Ljava/util/List;)V",
        "getRewardInfo",
        "()Lcom/transsion/memberapi/RewardInfo;",
        "setRewardInfo",
        "(Lcom/transsion/memberapi/RewardInfo;)V",
        "getUserInfo",
        "()Lcom/transsnet/loginapi/bean/UserInfo;",
        "setUserInfo",
        "(Lcom/transsnet/loginapi/bean/UserInfo;)V",
        "getPointInfo",
        "()Lcom/transsion/memberapi/PointInfo;",
        "setPointInfo",
        "(Lcom/transsion/memberapi/PointInfo;)V",
        "getMemberAgreements",
        "setMemberAgreements",
        "getEntitlements",
        "setEntitlements",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "MemberApi_psRelease"
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
.field private entitlements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/EntitlementsBean;",
            ">;"
        }
    .end annotation
.end field

.field private memberAgreements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberAgreement;",
            ">;"
        }
    .end annotation
.end field

.field private memberInfo:Lcom/transsion/memberapi/MemberInfo;

.field private memberRights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberRight;",
            ">;"
        }
    .end annotation
.end field

.field private pointInfo:Lcom/transsion/memberapi/PointInfo;

.field private rewardInfo:Lcom/transsion/memberapi/RewardInfo;

.field private userInfo:Lcom/transsnet/loginapi/bean/UserInfo;


# direct methods
.method public constructor <init>(Lcom/transsion/memberapi/MemberInfo;Ljava/util/List;Lcom/transsion/memberapi/RewardInfo;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/PointInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/memberapi/MemberInfo;",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberRight;",
            ">;",
            "Lcom/transsion/memberapi/RewardInfo;",
            "Lcom/transsnet/loginapi/bean/UserInfo;",
            "Lcom/transsion/memberapi/PointInfo;",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberAgreement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/EntitlementsBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rewardInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    iput-object p2, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    iput-object p3, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    iput-object p4, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    iput-object p5, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    iput-object p6, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    iput-object p7, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/memberapi/MemberDetail;Lcom/transsion/memberapi/MemberInfo;Ljava/util/List;Lcom/transsion/memberapi/RewardInfo;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/PointInfo;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/transsion/memberapi/MemberDetail;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/transsion/memberapi/MemberDetail;->copy(Lcom/transsion/memberapi/MemberInfo;Ljava/util/List;Lcom/transsion/memberapi/RewardInfo;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/PointInfo;Ljava/util/List;Ljava/util/List;)Lcom/transsion/memberapi/MemberDetail;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/memberapi/MemberInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberRight;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/transsion/memberapi/RewardInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    return-object v0
.end method

.method public final component4()Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    return-object v0
.end method

.method public final component5()Lcom/transsion/memberapi/PointInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    return-object v0
.end method

.method public final component6()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberAgreement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/EntitlementsBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/transsion/memberapi/MemberInfo;Ljava/util/List;Lcom/transsion/memberapi/RewardInfo;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/PointInfo;Ljava/util/List;Ljava/util/List;)Lcom/transsion/memberapi/MemberDetail;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/memberapi/MemberInfo;",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberRight;",
            ">;",
            "Lcom/transsion/memberapi/RewardInfo;",
            "Lcom/transsnet/loginapi/bean/UserInfo;",
            "Lcom/transsion/memberapi/PointInfo;",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberAgreement;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/EntitlementsBean;",
            ">;)",
            "Lcom/transsion/memberapi/MemberDetail;"
        }
    .end annotation

    const-string v0, "rewardInfo"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/memberapi/MemberDetail;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/transsion/memberapi/MemberDetail;-><init>(Lcom/transsion/memberapi/MemberInfo;Ljava/util/List;Lcom/transsion/memberapi/RewardInfo;Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/memberapi/PointInfo;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/memberapi/MemberDetail;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/memberapi/MemberDetail;

    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    iget-object p1, p1, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getEntitlements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/EntitlementsBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    return-object v0
.end method

.method public final getMemberAgreements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberAgreement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    return-object v0
.end method

.method public final getMemberInfo()Lcom/transsion/memberapi/MemberInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    return-object v0
.end method

.method public final getMemberRights()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberRight;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    return-object v0
.end method

.method public final getPointInfo()Lcom/transsion/memberapi/PointInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    return-object v0
.end method

.method public final getRewardInfo()Lcom/transsion/memberapi/RewardInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    return-object v0
.end method

.method public final getUserInfo()Lcom/transsnet/loginapi/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    invoke-virtual {v2}, Lcom/transsion/memberapi/RewardInfo;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/transsion/memberapi/PointInfo;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final setEntitlements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/EntitlementsBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    return-void
.end method

.method public final setMemberAgreements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberAgreement;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    return-void
.end method

.method public final setMemberInfo(Lcom/transsion/memberapi/MemberInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    return-void
.end method

.method public final setMemberRights(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberRight;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    return-void
.end method

.method public final setPointInfo(Lcom/transsion/memberapi/PointInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    return-void
.end method

.method public final setRewardInfo(Lcom/transsion/memberapi/RewardInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    return-void
.end method

.method public final setUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/transsion/memberapi/MemberDetail;->memberInfo:Lcom/transsion/memberapi/MemberInfo;

    iget-object v1, p0, Lcom/transsion/memberapi/MemberDetail;->memberRights:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/memberapi/MemberDetail;->rewardInfo:Lcom/transsion/memberapi/RewardInfo;

    iget-object v3, p0, Lcom/transsion/memberapi/MemberDetail;->userInfo:Lcom/transsnet/loginapi/bean/UserInfo;

    iget-object v4, p0, Lcom/transsion/memberapi/MemberDetail;->pointInfo:Lcom/transsion/memberapi/PointInfo;

    iget-object v5, p0, Lcom/transsion/memberapi/MemberDetail;->memberAgreements:Ljava/util/List;

    iget-object v6, p0, Lcom/transsion/memberapi/MemberDetail;->entitlements:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MemberDetail(memberInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", memberRights="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rewardInfo="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", userInfo="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pointInfo="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", memberAgreements="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", entitlements="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
