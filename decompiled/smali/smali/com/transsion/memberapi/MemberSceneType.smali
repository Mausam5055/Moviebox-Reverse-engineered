.class public final enum Lcom/transsion/memberapi/MemberSceneType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/memberapi/MemberSceneType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/memberapi/MemberSceneType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "SCENE_AD",
        "SCENE_STREAM_ACTIVATE",
        "SCENE_START_RESOLUTION",
        "SCENE_PREDL",
        "SCENE_HDDL",
        "SCENE_MULTIDL",
        "toString",
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

.field private static final synthetic $VALUES:[Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_AD:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_PREDL:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_START_RESOLUTION:Lcom/transsion/memberapi/MemberSceneType;

.field public static final enum SCENE_STREAM_ACTIVATE:Lcom/transsion/memberapi/MemberSceneType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/memberapi/MemberSceneType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/transsion/memberapi/MemberSceneType;

    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_AD:Lcom/transsion/memberapi/MemberSceneType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_STREAM_ACTIVATE:Lcom/transsion/memberapi/MemberSceneType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_START_RESOLUTION:Lcom/transsion/memberapi/MemberSceneType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_PREDL:Lcom/transsion/memberapi/MemberSceneType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/memberapi/MemberSceneType;->SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    const/4 v1, 0x0

    const-string v2, "AD"

    const-string v3, "SCENE_AD"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_AD:Lcom/transsion/memberapi/MemberSceneType;

    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    const/4 v1, 0x1

    const-string v2, "STREAM_ACTIVATE"

    const-string v3, "SCENE_STREAM_ACTIVATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_STREAM_ACTIVATE:Lcom/transsion/memberapi/MemberSceneType;

    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    const/4 v1, 0x2

    const-string v2, "START_RESOLUTION"

    const-string v3, "SCENE_START_RESOLUTION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_START_RESOLUTION:Lcom/transsion/memberapi/MemberSceneType;

    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    const/4 v1, 0x3

    const-string v2, "PREDL"

    const-string v3, "SCENE_PREDL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_PREDL:Lcom/transsion/memberapi/MemberSceneType;

    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    const/4 v1, 0x4

    const-string v2, "HDDL"

    const-string v3, "SCENE_HDDL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_HDDL:Lcom/transsion/memberapi/MemberSceneType;

    new-instance v0, Lcom/transsion/memberapi/MemberSceneType;

    const/4 v1, 0x5

    const-string v2, "MultiDL"

    const-string v3, "SCENE_MULTIDL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/memberapi/MemberSceneType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->SCENE_MULTIDL:Lcom/transsion/memberapi/MemberSceneType;

    invoke-static {}, Lcom/transsion/memberapi/MemberSceneType;->$values()[Lcom/transsion/memberapi/MemberSceneType;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->$VALUES:[Lcom/transsion/memberapi/MemberSceneType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/memberapi/MemberSceneType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/transsion/memberapi/MemberSceneType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/memberapi/MemberSceneType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/memberapi/MemberSceneType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/memberapi/MemberSceneType;
    .locals 1

    const-class v0, Lcom/transsion/memberapi/MemberSceneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/memberapi/MemberSceneType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/memberapi/MemberSceneType;
    .locals 1

    sget-object v0, Lcom/transsion/memberapi/MemberSceneType;->$VALUES:[Lcom/transsion/memberapi/MemberSceneType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/memberapi/MemberSceneType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberSceneType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberSceneType;->value:Ljava/lang/String;

    return-object v0
.end method
