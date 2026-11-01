.class public final enum Lcom/contrarywind/view/WheelView$DividerType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/contrarywind/view/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DividerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/contrarywind/view/WheelView$DividerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/contrarywind/view/WheelView$DividerType;

.field public static final enum FILL:Lcom/contrarywind/view/WheelView$DividerType;

.field public static final enum WRAP:Lcom/contrarywind/view/WheelView$DividerType;


# direct methods
.method private static synthetic $values()[Lcom/contrarywind/view/WheelView$DividerType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/contrarywind/view/WheelView$DividerType;

    sget-object v1, Lcom/contrarywind/view/WheelView$DividerType;->FILL:Lcom/contrarywind/view/WheelView$DividerType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/contrarywind/view/WheelView$DividerType;->WRAP:Lcom/contrarywind/view/WheelView$DividerType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/contrarywind/view/WheelView$DividerType;

    const-string v1, "FILL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/contrarywind/view/WheelView$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/contrarywind/view/WheelView$DividerType;->FILL:Lcom/contrarywind/view/WheelView$DividerType;

    new-instance v0, Lcom/contrarywind/view/WheelView$DividerType;

    const-string v1, "WRAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/contrarywind/view/WheelView$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/contrarywind/view/WheelView$DividerType;->WRAP:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-static {}, Lcom/contrarywind/view/WheelView$DividerType;->$values()[Lcom/contrarywind/view/WheelView$DividerType;

    move-result-object v0

    sput-object v0, Lcom/contrarywind/view/WheelView$DividerType;->$VALUES:[Lcom/contrarywind/view/WheelView$DividerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/contrarywind/view/WheelView$DividerType;
    .locals 1

    const-class v0, Lcom/contrarywind/view/WheelView$DividerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/contrarywind/view/WheelView$DividerType;

    return-object p0
.end method

.method public static values()[Lcom/contrarywind/view/WheelView$DividerType;
    .locals 1

    sget-object v0, Lcom/contrarywind/view/WheelView$DividerType;->$VALUES:[Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v0}, [Lcom/contrarywind/view/WheelView$DividerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/contrarywind/view/WheelView$DividerType;

    return-object v0
.end method
