.class public final enum Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/view/bubbleview/BubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field public static final enum BOTTOM:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field public static final enum LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field public static final enum NONE:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field public static final enum RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

.field public static final enum TOP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->TOP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->BOTTOM:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->NONE:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->RIGHT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const-string v1, "TOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->TOP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->BOTTOM:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    const-string v1, "NONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->NONE:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->$values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->$VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

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

    iput p3, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mValue:I

    return-void
.end method

.method public static getDefault()Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
    .locals 1

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->LEFT:Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    return-object v0
.end method

.method public static mapIntToValue(I)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
    .locals 5

    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->getIntValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->getDefault()Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
    .locals 1

    const-class v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    return-object p0
.end method

.method public static values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;
    .locals 1

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->$VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    invoke-virtual {v0}, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$ArrowLocation;->mValue:I

    return v0
.end method
