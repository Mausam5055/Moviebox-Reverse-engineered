.class final enum Lcom/tn/lib/view/SwitchButton$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/view/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tn/lib/view/SwitchButton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tn/lib/view/SwitchButton$State;

.field public static final enum CLOSE:Lcom/tn/lib/view/SwitchButton$State;

.field public static final enum OPEN:Lcom/tn/lib/view/SwitchButton$State;


# direct methods
.method private static synthetic $values()[Lcom/tn/lib/view/SwitchButton$State;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tn/lib/view/SwitchButton$State;

    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tn/lib/view/SwitchButton$State;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/SwitchButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/view/SwitchButton$State;->OPEN:Lcom/tn/lib/view/SwitchButton$State;

    new-instance v0, Lcom/tn/lib/view/SwitchButton$State;

    const-string v1, "CLOSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/view/SwitchButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/view/SwitchButton$State;->CLOSE:Lcom/tn/lib/view/SwitchButton$State;

    invoke-static {}, Lcom/tn/lib/view/SwitchButton$State;->$values()[Lcom/tn/lib/view/SwitchButton$State;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/view/SwitchButton$State;->$VALUES:[Lcom/tn/lib/view/SwitchButton$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tn/lib/view/SwitchButton$State;
    .locals 1

    const-class v0, Lcom/tn/lib/view/SwitchButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tn/lib/view/SwitchButton$State;

    return-object p0
.end method

.method public static values()[Lcom/tn/lib/view/SwitchButton$State;
    .locals 1

    sget-object v0, Lcom/tn/lib/view/SwitchButton$State;->$VALUES:[Lcom/tn/lib/view/SwitchButton$State;

    invoke-virtual {v0}, [Lcom/tn/lib/view/SwitchButton$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tn/lib/view/SwitchButton$State;

    return-object v0
.end method
