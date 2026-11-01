.class public final enum Lcom/transsion/ad/strategy/AppManager$AppEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/strategy/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ad/strategy/AppManager$AppEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/transsion/ad/strategy/AppManager$AppEnum;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "APP_MOVIE_BOX",
        "APP_NOVEL_HUB",
        "APP_WOW_FM",
        "APP_MB_TV",
        "APP_HOLA",
        "APP_GO_DRAMA",
        "lib_ad_gpRelease"
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

.field private static final synthetic $VALUES:[Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field public static final enum APP_GO_DRAMA:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field public static final enum APP_HOLA:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field public static final enum APP_MB_TV:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field public static final enum APP_MOVIE_BOX:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field public static final enum APP_NOVEL_HUB:Lcom/transsion/ad/strategy/AppManager$AppEnum;

.field public static final enum APP_WOW_FM:Lcom/transsion/ad/strategy/AppManager$AppEnum;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/ad/strategy/AppManager$AppEnum;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/transsion/ad/strategy/AppManager$AppEnum;

    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MOVIE_BOX:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_NOVEL_HUB:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_WOW_FM:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MB_TV:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_HOLA:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_GO_DRAMA:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v1, 0x0

    const-string v2, "movie_box"

    const-string v3, "APP_MOVIE_BOX"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/strategy/AppManager$AppEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MOVIE_BOX:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    new-instance v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v1, 0x1

    const-string v2, "novel_hub"

    const-string v3, "APP_NOVEL_HUB"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/strategy/AppManager$AppEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_NOVEL_HUB:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    new-instance v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v1, 0x2

    const-string v2, "wow_fm"

    const-string v3, "APP_WOW_FM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/strategy/AppManager$AppEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_WOW_FM:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    new-instance v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v1, 0x3

    const-string v2, "movie_tv"

    const-string v3, "APP_MB_TV"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/strategy/AppManager$AppEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_MB_TV:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    new-instance v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v1, 0x4

    const-string v2, "hola"

    const-string v3, "APP_HOLA"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/strategy/AppManager$AppEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_HOLA:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    new-instance v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    const/4 v1, 0x5

    const-string v2, "go_drama"

    const-string v3, "APP_GO_DRAMA"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/strategy/AppManager$AppEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->APP_GO_DRAMA:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    invoke-static {}, Lcom/transsion/ad/strategy/AppManager$AppEnum;->$values()[Lcom/transsion/ad/strategy/AppManager$AppEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->$VALUES:[Lcom/transsion/ad/strategy/AppManager$AppEnum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/ad/strategy/AppManager$AppEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ad/strategy/AppManager$AppEnum;
    .locals 1

    const-class v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ad/strategy/AppManager$AppEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ad/strategy/AppManager$AppEnum;
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->$VALUES:[Lcom/transsion/ad/strategy/AppManager$AppEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ad/strategy/AppManager$AppEnum;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/strategy/AppManager$AppEnum;->value:Ljava/lang/String;

    return-object v0
.end method
