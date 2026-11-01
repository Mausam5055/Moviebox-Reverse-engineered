.class public final enum Lcom/tn/lib/utils/span/TextStyle;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tn/lib/utils/span/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tn/lib/utils/span/TextStyle;

.field public static final enum BOLD:Lcom/tn/lib/utils/span/TextStyle;

.field public static final enum BOLD_ITALIC:Lcom/tn/lib/utils/span/TextStyle;

.field public static final enum ITALIC:Lcom/tn/lib/utils/span/TextStyle;

.field public static final enum NORMAL:Lcom/tn/lib/utils/span/TextStyle;


# direct methods
.method private static synthetic $values()[Lcom/tn/lib/utils/span/TextStyle;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tn/lib/utils/span/TextStyle;

    sget-object v1, Lcom/tn/lib/utils/span/TextStyle;->NORMAL:Lcom/tn/lib/utils/span/TextStyle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/utils/span/TextStyle;->BOLD:Lcom/tn/lib/utils/span/TextStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/utils/span/TextStyle;->ITALIC:Lcom/tn/lib/utils/span/TextStyle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/tn/lib/utils/span/TextStyle;->BOLD_ITALIC:Lcom/tn/lib/utils/span/TextStyle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/tn/lib/utils/span/TextStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/utils/span/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/utils/span/TextStyle;->NORMAL:Lcom/tn/lib/utils/span/TextStyle;

    new-instance v0, Lcom/tn/lib/utils/span/TextStyle;

    const-string v1, "BOLD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/utils/span/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/utils/span/TextStyle;->BOLD:Lcom/tn/lib/utils/span/TextStyle;

    new-instance v0, Lcom/tn/lib/utils/span/TextStyle;

    const-string v1, "ITALIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/utils/span/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/utils/span/TextStyle;->ITALIC:Lcom/tn/lib/utils/span/TextStyle;

    new-instance v0, Lcom/tn/lib/utils/span/TextStyle;

    const-string v1, "BOLD_ITALIC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/tn/lib/utils/span/TextStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tn/lib/utils/span/TextStyle;->BOLD_ITALIC:Lcom/tn/lib/utils/span/TextStyle;

    invoke-static {}, Lcom/tn/lib/utils/span/TextStyle;->$values()[Lcom/tn/lib/utils/span/TextStyle;

    move-result-object v0

    sput-object v0, Lcom/tn/lib/utils/span/TextStyle;->$VALUES:[Lcom/tn/lib/utils/span/TextStyle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tn/lib/utils/span/TextStyle;
    .locals 1

    const-class v0, Lcom/tn/lib/utils/span/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tn/lib/utils/span/TextStyle;

    return-object p0
.end method

.method public static values()[Lcom/tn/lib/utils/span/TextStyle;
    .locals 1

    sget-object v0, Lcom/tn/lib/utils/span/TextStyle;->$VALUES:[Lcom/tn/lib/utils/span/TextStyle;

    invoke-virtual {v0}, [Lcom/tn/lib/utils/span/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tn/lib/utils/span/TextStyle;

    return-object v0
.end method
