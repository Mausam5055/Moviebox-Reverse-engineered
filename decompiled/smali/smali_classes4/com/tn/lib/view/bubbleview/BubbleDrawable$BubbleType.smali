.class public final enum Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/view/bubbleview/BubbleDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BubbleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

.field public static final enum BITMAP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

.field public static final enum COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

.field public static final enum SHADER:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;


# direct methods
.method private static synthetic $values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->BITMAP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->SHADER:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->COLOR:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    const-string v1, "BITMAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->BITMAP:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    new-instance v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    const-string v1, "SHADER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->SHADER:Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-static {}, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->$values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->$VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;
    .locals 1

    const-class v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    return-object p0
.end method

.method public static values()[Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;
    .locals 1

    sget-object v0, Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->$VALUES:[Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    invoke-virtual {v0}, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tn/lib/view/bubbleview/BubbleDrawable$BubbleType;

    return-object v0
.end method
