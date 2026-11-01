.class public final enum Lcom/transsion/share/bean/PostType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/share/bean/PostType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/share/bean/PostType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "UNKNOWN_TYPE",
        "SUBJECT_TYPE",
        "GROUP_TYPE",
        "POST_TYPE",
        "STAFF_TYPE",
        "SHORT_TV_TYPE",
        "LIVE_TYPE",
        "UGC_VIDEO",
        "UGC_SHORT_TV",
        "ShareLib_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/share/bean/PostType;

.field public static final enum GROUP_TYPE:Lcom/transsion/share/bean/PostType;

.field public static final enum LIVE_TYPE:Lcom/transsion/share/bean/PostType;

.field public static final enum POST_TYPE:Lcom/transsion/share/bean/PostType;

.field public static final enum SHORT_TV_TYPE:Lcom/transsion/share/bean/PostType;

.field public static final enum STAFF_TYPE:Lcom/transsion/share/bean/PostType;

.field public static final enum SUBJECT_TYPE:Lcom/transsion/share/bean/PostType;

.field public static final enum UGC_SHORT_TV:Lcom/transsion/share/bean/PostType;

.field public static final enum UGC_VIDEO:Lcom/transsion/share/bean/PostType;

.field public static final enum UNKNOWN_TYPE:Lcom/transsion/share/bean/PostType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/share/bean/PostType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/transsion/share/bean/PostType;

    sget-object v1, Lcom/transsion/share/bean/PostType;->UNKNOWN_TYPE:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->SUBJECT_TYPE:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->GROUP_TYPE:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->STAFF_TYPE:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->SHORT_TV_TYPE:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->LIVE_TYPE:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->UGC_VIDEO:Lcom/transsion/share/bean/PostType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/share/bean/PostType;->UGC_SHORT_TV:Lcom/transsion/share/bean/PostType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x0

    const-string v2, "UnknownType"

    const-string v3, "UNKNOWN_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->UNKNOWN_TYPE:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x1

    const-string v2, "SubjectType"

    const-string v3, "SUBJECT_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->SUBJECT_TYPE:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x2

    const-string v2, "GroupType"

    const-string v3, "GROUP_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->GROUP_TYPE:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x3

    const-string v2, "PostType"

    const-string v3, "POST_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->POST_TYPE:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x4

    const-string v2, "StaffType"

    const-string v3, "STAFF_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->STAFF_TYPE:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x5

    const-string v2, "ShortTVType"

    const-string v3, "SHORT_TV_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->SHORT_TV_TYPE:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x6

    const-string v2, "Live"

    const-string v3, "LIVE_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->LIVE_TYPE:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/4 v1, 0x7

    const-string v2, "UGCVideo"

    const-string v3, "UGC_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->UGC_VIDEO:Lcom/transsion/share/bean/PostType;

    new-instance v0, Lcom/transsion/share/bean/PostType;

    const/16 v1, 0x8

    const-string v2, "UGCShortTV"

    const-string v3, "UGC_SHORT_TV"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/share/bean/PostType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/share/bean/PostType;->UGC_SHORT_TV:Lcom/transsion/share/bean/PostType;

    invoke-static {}, Lcom/transsion/share/bean/PostType;->$values()[Lcom/transsion/share/bean/PostType;

    move-result-object v0

    sput-object v0, Lcom/transsion/share/bean/PostType;->$VALUES:[Lcom/transsion/share/bean/PostType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/share/bean/PostType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/share/bean/PostType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/share/bean/PostType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/share/bean/PostType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/share/bean/PostType;
    .locals 1

    const-class v0, Lcom/transsion/share/bean/PostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/share/bean/PostType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/share/bean/PostType;
    .locals 1

    sget-object v0, Lcom/transsion/share/bean/PostType;->$VALUES:[Lcom/transsion/share/bean/PostType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/share/bean/PostType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/share/bean/PostType;->value:Ljava/lang/String;

    return-object v0
.end method
