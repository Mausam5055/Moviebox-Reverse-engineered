.class public final enum Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field public static final enum STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;


# instance fields
.field private final step:I


# direct methods
.method private static final synthetic $values()[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->INIT:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v1, 0x1

    const/16 v2, 0x1e

    const-string v3, "STEP_30"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_30:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v1, 0x2

    const/16 v2, 0x32

    const-string v3, "STEP_50"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_50:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v1, 0x3

    const/16 v2, 0x46

    const-string v3, "STEP_70"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_70:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    const/4 v1, 0x4

    const/16 v2, 0x64

    const-string v3, "STEP_100"

    invoke-direct {v0, v3, v1, v2}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->STEP_100:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-static {}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->$values()[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    move-result-object v0

    sput-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->$VALUES:[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

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

    iput p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->step:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    const-class v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-object p0
.end method

.method public static values()[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    sget-object v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->$VALUES:[Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    return-object v0
.end method


# virtual methods
.method public final getStep()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;->step:I

    return v0
.end method
