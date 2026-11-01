.class public final enum Lcom/transsion/memberapi/MembershipDuration;
.super Ljava/lang/Enum;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/memberapi/MembershipDuration$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/memberapi/MembershipDuration;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0087\u0081\u0002\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008j\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/memberapi/MembershipDuration;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;II)V",
        "I",
        "getValue",
        "()I",
        "Companion",
        "a",
        "DAY",
        "WEEK",
        "MONTH",
        "QUARTER",
        "HALF_YEAR",
        "YEAR",
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

.field private static final synthetic $VALUES:[Lcom/transsion/memberapi/MembershipDuration;

.field public static final Companion:Lcom/transsion/memberapi/MembershipDuration$a;

.field public static final enum DAY:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum HALF_YEAR:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum MONTH:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum QUARTER:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum WEEK:Lcom/transsion/memberapi/MembershipDuration;

.field public static final enum YEAR:Lcom/transsion/memberapi/MembershipDuration;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/transsion/memberapi/MembershipDuration;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/transsion/memberapi/MembershipDuration;

    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->DAY:Lcom/transsion/memberapi/MembershipDuration;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->WEEK:Lcom/transsion/memberapi/MembershipDuration;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->MONTH:Lcom/transsion/memberapi/MembershipDuration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->QUARTER:Lcom/transsion/memberapi/MembershipDuration;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->HALF_YEAR:Lcom/transsion/memberapi/MembershipDuration;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MembershipDuration;->YEAR:Lcom/transsion/memberapi/MembershipDuration;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    const-string v1, "DAY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->DAY:Lcom/transsion/memberapi/MembershipDuration;

    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    const-string v1, "WEEK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->WEEK:Lcom/transsion/memberapi/MembershipDuration;

    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    const-string v1, "MONTH"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->MONTH:Lcom/transsion/memberapi/MembershipDuration;

    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    const-string v1, "QUARTER"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->QUARTER:Lcom/transsion/memberapi/MembershipDuration;

    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    const-string v1, "HALF_YEAR"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->HALF_YEAR:Lcom/transsion/memberapi/MembershipDuration;

    new-instance v0, Lcom/transsion/memberapi/MembershipDuration;

    const-string v1, "YEAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/transsion/memberapi/MembershipDuration;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->YEAR:Lcom/transsion/memberapi/MembershipDuration;

    invoke-static {}, Lcom/transsion/memberapi/MembershipDuration;->$values()[Lcom/transsion/memberapi/MembershipDuration;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->$VALUES:[Lcom/transsion/memberapi/MembershipDuration;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/transsion/memberapi/MembershipDuration$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/memberapi/MembershipDuration$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/memberapi/MembershipDuration;->Companion:Lcom/transsion/memberapi/MembershipDuration$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/memberapi/MembershipDuration;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/memberapi/MembershipDuration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/memberapi/MembershipDuration;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/memberapi/MembershipDuration;
    .locals 1

    const-class v0, Lcom/transsion/memberapi/MembershipDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/memberapi/MembershipDuration;

    return-object p0
.end method

.method public static values()[Lcom/transsion/memberapi/MembershipDuration;
    .locals 1

    sget-object v0, Lcom/transsion/memberapi/MembershipDuration;->$VALUES:[Lcom/transsion/memberapi/MembershipDuration;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/memberapi/MembershipDuration;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/transsion/memberapi/MembershipDuration;->value:I

    return v0
.end method
