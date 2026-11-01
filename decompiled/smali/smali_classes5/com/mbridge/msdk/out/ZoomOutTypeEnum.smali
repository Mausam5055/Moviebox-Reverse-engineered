.class public final enum Lcom/mbridge/msdk/out/ZoomOutTypeEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/out/ZoomOutTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum BigView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum FloatBall:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum MediumView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

.field public static final enum SmallView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;


# instance fields
.field private index:I


# direct methods
.method private static synthetic $values()[Lcom/mbridge/msdk/out/ZoomOutTypeEnum;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    sget-object v1, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->FloatBall:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->BigView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->MediumView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->SmallView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v1, "FloatBall"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->FloatBall:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    new-instance v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v1, "BigView"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->BigView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    new-instance v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v1, "MediumView"

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->MediumView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    new-instance v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    const-string v1, "SmallView"

    invoke-direct {v0, v1, v3, v2}, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->SmallView:Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    invoke-static {}, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->$values()[Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->$VALUES:[Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

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

    iput p3, p0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/out/ZoomOutTypeEnum;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/out/ZoomOutTypeEnum;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->$VALUES:[Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/out/ZoomOutTypeEnum;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/out/ZoomOutTypeEnum;->index:I

    return v0
.end method
