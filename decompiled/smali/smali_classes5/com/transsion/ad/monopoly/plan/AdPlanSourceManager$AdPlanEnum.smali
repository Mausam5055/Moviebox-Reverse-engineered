.class public final enum Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdPlanEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "AD_PLAN_DEFAULT_AD_SRC",
        "AD_PLAN_AD_SOURCE_PS",
        "AD_PLAN_AD_SOURCE_MB_PS",
        "AD_PLAN_AD_SOURCE_HI",
        "AD_PLAN_AD_SOURCE_ICON",
        "AD_PLAN_AD_SOURCE_PS_REFERRAL",
        "AD_PLAN_AD_SOURCE_H5",
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

.field private static final synthetic $VALUES:[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

.field public static final enum AD_PLAN_AD_SOURCE_H5:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

.field public static final enum AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

.field public static final enum AD_PLAN_AD_SOURCE_ICON:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

.field public static final enum AD_PLAN_AD_SOURCE_MB_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

.field public static final enum AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

.field public static final enum AD_PLAN_AD_SOURCE_PS_REFERRAL:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

.field public static final enum AD_PLAN_DEFAULT_AD_SRC:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_DEFAULT_AD_SRC:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_MB_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_ICON:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS_REFERRAL:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_H5:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v1, 0x0

    const-string v2, "_DefaultAdSrc"

    const-string v3, "AD_PLAN_DEFAULT_AD_SRC"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_DEFAULT_AD_SRC:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v1, 0x1

    const-string v2, "AdSourcePS"

    const-string v3, "AD_PLAN_AD_SOURCE_PS"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v1, 0x2

    const-string v2, "AdSourceMBPS"

    const-string v3, "AD_PLAN_AD_SOURCE_MB_PS"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_MB_PS:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v1, 0x3

    const-string v2, "AdSourceHI"

    const-string v3, "AD_PLAN_AD_SOURCE_HI"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v1, 0x4

    const-string v2, "AdSourceIcon"

    const-string v3, "AD_PLAN_AD_SOURCE_ICON"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_ICON:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v1, 0x5

    const-string v2, "AdSourcePSReferral"

    const-string v3, "AD_PLAN_AD_SOURCE_PS_REFERRAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_PS_REFERRAL:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    new-instance v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    const/4 v1, 0x6

    const-string v2, "AdSourceH5"

    const-string v3, "AD_PLAN_AD_SOURCE_H5"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_H5:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-static {}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->$values()[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->$VALUES:[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    iput-object p3, p0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;
    .locals 1

    const-class v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    return-object p0
.end method

.method public static values()[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;
    .locals 1

    sget-object v0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->$VALUES:[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->value:Ljava/lang/String;

    return-object v0
.end method
