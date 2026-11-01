.class public final enum Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/view/bubbleview/BubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field public static final enum BOTTOM_LEFT_TOP_RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field public static final enum BOTTOM_RIGHT_TOP_LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field public static final enum HORIZONTAL:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field public static final enum TOP_LEFT_BOTTOM_RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field public static final enum TOP_RIGHT_BOTTOM_LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

.field public static final enum VERTICAL:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->VERTICAL:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->HORIZONTAL:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->TOP_LEFT_BOTTOM_RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->TOP_RIGHT_BOTTOM_LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->BOTTOM_LEFT_TOP_RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->BOTTOM_RIGHT_TOP_LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const-string v1, "VERTICAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->VERTICAL:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const-string v1, "HORIZONTAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->HORIZONTAL:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const-string v1, "TOP_LEFT_BOTTOM_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->TOP_LEFT_BOTTOM_RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const-string v1, "TOP_RIGHT_BOTTOM_LEFT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->TOP_RIGHT_BOTTOM_LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const-string v1, "BOTTOM_LEFT_TOP_RIGHT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->BOTTOM_LEFT_TOP_RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    const-string v1, "BOTTOM_RIGHT_TOP_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->BOTTOM_RIGHT_TOP_LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->$values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->$VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

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

    iput p3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->mValue:I

    return-void
.end method

.method public static getDefault()Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
    .locals 1

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->VERTICAL:Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    return-object v0
.end method

.method public static mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
    .locals 5

    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->getDefault()Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
    .locals 1

    const-class v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    return-object p0
.end method

.method public static values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;
    .locals 1

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->$VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    invoke-virtual {v0}, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$GradientDirection;->mValue:I

    return v0
.end method
