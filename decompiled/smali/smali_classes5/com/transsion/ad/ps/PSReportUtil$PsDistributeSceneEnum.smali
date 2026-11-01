.class public final enum Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/ps/PSReportUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PsDistributeSceneEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "PS_DISTRIBUTE_SCENE_DOWNLOAD_INTERCEPT",
        "PS_DISTRIBUTE_SCENE_APP_CENTER",
        "PS_DISTRIBUTE_SCENE_DOWNLOAD_CENTER_APP",
        "PS_DISTRIBUTE_SCENE_AD_PLAN",
        "PS_DISTRIBUTE_SCENE_ACTIVATE",
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

.field private static final synthetic $VALUES:[Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

.field public static final enum PS_DISTRIBUTE_SCENE_ACTIVATE:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

.field public static final enum PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

.field public static final enum PS_DISTRIBUTE_SCENE_APP_CENTER:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

.field public static final enum PS_DISTRIBUTE_SCENE_DOWNLOAD_CENTER_APP:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

.field public static final enum PS_DISTRIBUTE_SCENE_DOWNLOAD_INTERCEPT:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_DOWNLOAD_INTERCEPT:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_APP_CENTER:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_DOWNLOAD_CENTER_APP:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_ACTIVATE:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v1, 0x0

    const-string v2, "download_intercept"

    const-string v3, "PS_DISTRIBUTE_SCENE_DOWNLOAD_INTERCEPT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_DOWNLOAD_INTERCEPT:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    new-instance v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v1, 0x1

    const-string v2, "app_center"

    const-string v3, "PS_DISTRIBUTE_SCENE_APP_CENTER"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_APP_CENTER:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    new-instance v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v1, 0x2

    const-string v2, "download_center_app"

    const-string v3, "PS_DISTRIBUTE_SCENE_DOWNLOAD_CENTER_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_DOWNLOAD_CENTER_APP:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    new-instance v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v1, 0x3

    const-string v2, "ad_plan"

    const-string v3, "PS_DISTRIBUTE_SCENE_AD_PLAN"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_AD_PLAN:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    new-instance v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    const/4 v1, 0x4

    const-string v2, "ps_activate"

    const-string v3, "PS_DISTRIBUTE_SCENE_ACTIVATE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->PS_DISTRIBUTE_SCENE_ACTIVATE:Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-static {}, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->$values()[Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->$VALUES:[Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;
    .locals 1

    const-class v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;
    .locals 1

    sget-object v0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->$VALUES:[Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/ps/PSReportUtil$PsDistributeSceneEnum;->value:Ljava/lang/String;

    return-object v0
.end method
