.class public final enum Lcom/transsion/pushapi/NoticePermissionFrom;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/pushapi/NoticePermissionFrom;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/pushapi/NoticePermissionFrom;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "APP_START",
        "DOWNLOAD_RES",
        "PLAY_MUSIC",
        "DETAIL_NO_RES",
        "WANT_TO_SEE",
        "PushApi_psRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/pushapi/NoticePermissionFrom;

.field public static final enum APP_START:Lcom/transsion/pushapi/NoticePermissionFrom;

.field public static final enum DETAIL_NO_RES:Lcom/transsion/pushapi/NoticePermissionFrom;

.field public static final enum DOWNLOAD_RES:Lcom/transsion/pushapi/NoticePermissionFrom;

.field public static final enum PLAY_MUSIC:Lcom/transsion/pushapi/NoticePermissionFrom;

.field public static final enum WANT_TO_SEE:Lcom/transsion/pushapi/NoticePermissionFrom;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/pushapi/NoticePermissionFrom;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/pushapi/NoticePermissionFrom;

    sget-object v1, Lcom/transsion/pushapi/NoticePermissionFrom;->APP_START:Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/pushapi/NoticePermissionFrom;->DOWNLOAD_RES:Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/pushapi/NoticePermissionFrom;->PLAY_MUSIC:Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/pushapi/NoticePermissionFrom;->DETAIL_NO_RES:Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/pushapi/NoticePermissionFrom;->WANT_TO_SEE:Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v1, 0x0

    const-string v2, "cold_start"

    const-string v3, "APP_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/pushapi/NoticePermissionFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->APP_START:Lcom/transsion/pushapi/NoticePermissionFrom;

    new-instance v0, Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v1, 0x1

    const-string v2, "download_res"

    const-string v3, "DOWNLOAD_RES"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/pushapi/NoticePermissionFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->DOWNLOAD_RES:Lcom/transsion/pushapi/NoticePermissionFrom;

    new-instance v0, Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v1, 0x2

    const-string v2, "play_music"

    const-string v3, "PLAY_MUSIC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/pushapi/NoticePermissionFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->PLAY_MUSIC:Lcom/transsion/pushapi/NoticePermissionFrom;

    new-instance v0, Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v1, 0x3

    const-string v2, "subject_detail_no_res"

    const-string v3, "DETAIL_NO_RES"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/pushapi/NoticePermissionFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->DETAIL_NO_RES:Lcom/transsion/pushapi/NoticePermissionFrom;

    new-instance v0, Lcom/transsion/pushapi/NoticePermissionFrom;

    const/4 v1, 0x4

    const-string v2, "want_to_see"

    const-string v3, "WANT_TO_SEE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/pushapi/NoticePermissionFrom;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->WANT_TO_SEE:Lcom/transsion/pushapi/NoticePermissionFrom;

    invoke-static {}, Lcom/transsion/pushapi/NoticePermissionFrom;->$values()[Lcom/transsion/pushapi/NoticePermissionFrom;

    move-result-object v0

    sput-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->$VALUES:[Lcom/transsion/pushapi/NoticePermissionFrom;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/transsion/pushapi/NoticePermissionFrom;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/pushapi/NoticePermissionFrom;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/pushapi/NoticePermissionFrom;
    .locals 1

    const-class v0, Lcom/transsion/pushapi/NoticePermissionFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/pushapi/NoticePermissionFrom;

    return-object p0
.end method

.method public static values()[Lcom/transsion/pushapi/NoticePermissionFrom;
    .locals 1

    sget-object v0, Lcom/transsion/pushapi/NoticePermissionFrom;->$VALUES:[Lcom/transsion/pushapi/NoticePermissionFrom;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/pushapi/NoticePermissionFrom;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/pushapi/NoticePermissionFrom;->value:Ljava/lang/String;

    return-object v0
.end method
