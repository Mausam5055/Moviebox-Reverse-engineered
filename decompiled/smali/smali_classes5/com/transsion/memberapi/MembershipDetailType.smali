.class public final enum Lcom/transsion/memberapi/MembershipDetailType;
.super Ljava/lang/Enum;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/memberapi/MembershipDetailType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/memberapi/MembershipDetailType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\n\u0008\u0087\u0081\u0002\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/memberapi/MembershipDetailType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Companion",
        "a",
        "GUEST",
        "TRIAL",
        "SUBSCRIPTION_MEMBER",
        "FINANCIAL_MEMBER",
        "EXPIRED",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/transsion/memberapi/MembershipDetailType;

.field public static final Companion:Lcom/transsion/memberapi/MembershipDetailType$a;

.field public static final enum EXPIRED:Lcom/transsion/memberapi/MembershipDetailType;

.field public static final enum FINANCIAL_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

.field public static final enum GUEST:Lcom/transsion/memberapi/MembershipDetailType;

.field public static final enum SUBSCRIPTION_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

.field public static final enum TRIAL:Lcom/transsion/memberapi/MembershipDetailType;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/memberapi/MembershipDetailType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/memberapi/MembershipDetailType;

    sget-object v1, Lcom/transsion/memberapi/MembershipDetailType;->GUEST:Lcom/transsion/memberapi/MembershipDetailType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDetailType;->TRIAL:Lcom/transsion/memberapi/MembershipDetailType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDetailType;->SUBSCRIPTION_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDetailType;->FINANCIAL_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDetailType;->EXPIRED:Lcom/transsion/memberapi/MembershipDetailType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/memberapi/MembershipDetailType;

    const-string v1, "GUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/memberapi/MembershipDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->GUEST:Lcom/transsion/memberapi/MembershipDetailType;

    new-instance v0, Lcom/transsion/memberapi/MembershipDetailType;

    const-string v1, "TRIAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/memberapi/MembershipDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->TRIAL:Lcom/transsion/memberapi/MembershipDetailType;

    new-instance v0, Lcom/transsion/memberapi/MembershipDetailType;

    const-string v1, "SUBSCRIPTION_MEMBER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/memberapi/MembershipDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->SUBSCRIPTION_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    new-instance v0, Lcom/transsion/memberapi/MembershipDetailType;

    const-string v1, "FINANCIAL_MEMBER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/memberapi/MembershipDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->FINANCIAL_MEMBER:Lcom/transsion/memberapi/MembershipDetailType;

    new-instance v0, Lcom/transsion/memberapi/MembershipDetailType;

    const-string v1, "EXPIRED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/memberapi/MembershipDetailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->EXPIRED:Lcom/transsion/memberapi/MembershipDetailType;

    invoke-static {}, Lcom/transsion/memberapi/MembershipDetailType;->$values()[Lcom/transsion/memberapi/MembershipDetailType;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->$VALUES:[Lcom/transsion/memberapi/MembershipDetailType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/transsion/memberapi/MembershipDetailType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/memberapi/MembershipDetailType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDetailType;->Companion:Lcom/transsion/memberapi/MembershipDetailType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/memberapi/MembershipDetailType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/memberapi/MembershipDetailType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/memberapi/MembershipDetailType;
    .locals 1

    const-class v0, Lcom/transsion/memberapi/MembershipDetailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/memberapi/MembershipDetailType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/memberapi/MembershipDetailType;
    .locals 1

    sget-object v0, Lcom/transsion/memberapi/MembershipDetailType;->$VALUES:[Lcom/transsion/memberapi/MembershipDetailType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/memberapi/MembershipDetailType;

    return-object v0
.end method
