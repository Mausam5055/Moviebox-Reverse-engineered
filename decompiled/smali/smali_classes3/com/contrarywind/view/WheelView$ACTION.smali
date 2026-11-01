.class public final enum Lcom/contrarywind/view/WheelView$ACTION;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/contrarywind/view/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/contrarywind/view/WheelView$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/contrarywind/view/WheelView$ACTION;

.field public static final enum CLICK:Lcom/contrarywind/view/WheelView$ACTION;

.field public static final enum DAGGLE:Lcom/contrarywind/view/WheelView$ACTION;

.field public static final enum FLING:Lcom/contrarywind/view/WheelView$ACTION;


# direct methods
.method private static synthetic $values()[Lcom/contrarywind/view/WheelView$ACTION;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/contrarywind/view/WheelView$ACTION;

    sget-object v1, Lcom/contrarywind/view/WheelView$ACTION;->CLICK:Lcom/contrarywind/view/WheelView$ACTION;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/contrarywind/view/WheelView$ACTION;->FLING:Lcom/contrarywind/view/WheelView$ACTION;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/contrarywind/view/WheelView$ACTION;->DAGGLE:Lcom/contrarywind/view/WheelView$ACTION;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/contrarywind/view/WheelView$ACTION;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/contrarywind/view/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/contrarywind/view/WheelView$ACTION;->CLICK:Lcom/contrarywind/view/WheelView$ACTION;

    new-instance v0, Lcom/contrarywind/view/WheelView$ACTION;

    const-string v1, "FLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/contrarywind/view/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/contrarywind/view/WheelView$ACTION;->FLING:Lcom/contrarywind/view/WheelView$ACTION;

    new-instance v0, Lcom/contrarywind/view/WheelView$ACTION;

    const-string v1, "DAGGLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/contrarywind/view/WheelView$ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/contrarywind/view/WheelView$ACTION;->DAGGLE:Lcom/contrarywind/view/WheelView$ACTION;

    invoke-static {}, Lcom/contrarywind/view/WheelView$ACTION;->$values()[Lcom/contrarywind/view/WheelView$ACTION;

    move-result-object v0

    sput-object v0, Lcom/contrarywind/view/WheelView$ACTION;->$VALUES:[Lcom/contrarywind/view/WheelView$ACTION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/contrarywind/view/WheelView$ACTION;
    .locals 1

    const-class v0, Lcom/contrarywind/view/WheelView$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/contrarywind/view/WheelView$ACTION;

    return-object p0
.end method

.method public static values()[Lcom/contrarywind/view/WheelView$ACTION;
    .locals 1

    sget-object v0, Lcom/contrarywind/view/WheelView$ACTION;->$VALUES:[Lcom/contrarywind/view/WheelView$ACTION;

    invoke-virtual {v0}, [Lcom/contrarywind/view/WheelView$ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/contrarywind/view/WheelView$ACTION;

    return-object v0
.end method
