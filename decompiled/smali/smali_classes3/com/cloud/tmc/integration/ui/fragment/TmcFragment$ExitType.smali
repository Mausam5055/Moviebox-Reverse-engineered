.class public final enum Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

.field public static final enum BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

.field public static final enum BACK_CLEAR_PRE_PAGE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

.field public static final enum CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

.field public static final enum NEW_PAGE_ENTER:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

.field public static final enum PRIVACY_REFUSE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

.field public static final enum REFRESH:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;


# instance fields
.field code:I

.field des:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    sget-object v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->REFRESH:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->PRIVACY_REFUSE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->NEW_PAGE_ENTER:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK_CLEAR_PRE_PAGE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x0

    const-string v2, "\u8fd4\u56de"

    const-string v3, "BACK"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    new-instance v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x1

    const-string v2, "\u5237\u65b0"

    const-string v3, "REFRESH"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->REFRESH:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    new-instance v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x2

    const-string v2, "\u5173\u95ed\u5c0f\u7a0b\u5e8f"

    const-string v3, "CLOSE_APP"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->CLOSE_APP:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    new-instance v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x3

    const-string v2, "\u9690\u79c1\u62d2\u7edd"

    const-string v3, "PRIVACY_REFUSE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->PRIVACY_REFUSE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    new-instance v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x4

    const-string v2, "\u65b0\u9875\u9762\u8fdb\u5165"

    const-string v3, "NEW_PAGE_ENTER"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->NEW_PAGE_ENTER:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    new-instance v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    const/4 v1, 0x5

    const-string v2, "\u9000\u51fa\u5e76\u6e05\u9664\u4e0a\u4e00\u9875"

    const-string v3, "BACK_CLEAR_PRE_PAGE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->BACK_CLEAR_PRE_PAGE:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-static {}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->$values()[Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->$VALUES:[Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->code:I

    iput-object p4, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->des:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;
    .locals 1

    const-class v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->$VALUES:[Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    invoke-virtual {v0}, [Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->code:I

    return v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment$ExitType;->des:Ljava/lang/String;

    return-object v0
.end method
