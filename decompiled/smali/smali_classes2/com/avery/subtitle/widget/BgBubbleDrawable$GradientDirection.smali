.class public final enum Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/avery/subtitle/widget/BgBubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

.field public static final enum HORIZONTAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

.field public static final enum VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    sget-object v1, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->HORIZONTAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->HORIZONTAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    new-instance v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    invoke-static {}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->$values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    move-result-object v0

    sput-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->$VALUES:[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

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

    iput p3, p0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->mValue:I

    return-void
.end method

.method public static getDefault()Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 1

    sget-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->VERTICAL:Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    return-object v0
.end method

.method public static mapIntToValue(I)Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 5

    invoke-static {}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->getDefault()Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 1

    const-class v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    return-object p0
.end method

.method public static values()[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;
    .locals 1

    sget-object v0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->$VALUES:[Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    invoke-virtual {v0}, [Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/avery/subtitle/widget/BgBubbleDrawable$GradientDirection;->mValue:I

    return v0
.end method
