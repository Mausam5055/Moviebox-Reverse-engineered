.class final enum Lcom/google/zxing/aztec/decoder/Decoder$Table;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/decoder/Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/aztec/decoder/Decoder$Table;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/aztec/decoder/Decoder$Table;

.field public static final enum BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

.field public static final enum DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

.field public static final enum LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

.field public static final enum MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

.field public static final enum PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

.field public static final enum UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;


# direct methods
.method private static synthetic $values()[Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/aztec/decoder/Decoder$Table;

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const-string v1, "UPPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/decoder/Decoder$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const-string v1, "LOWER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/decoder/Decoder$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const-string v1, "MIXED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/decoder/Decoder$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const-string v1, "DIGIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/decoder/Decoder$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const-string v1, "PUNCT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/decoder/Decoder$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    new-instance v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    const-string v1, "BINARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/aztec/decoder/Decoder$Table;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-static {}, Lcom/google/zxing/aztec/decoder/Decoder$Table;->$values()[Lcom/google/zxing/aztec/decoder/Decoder$Table;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->$VALUES:[Lcom/google/zxing/aztec/decoder/Decoder$Table;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    const-class v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->$VALUES:[Lcom/google/zxing/aztec/decoder/Decoder$Table;

    invoke-virtual {v0}, [Lcom/google/zxing/aztec/decoder/Decoder$Table;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/aztec/decoder/Decoder$Table;

    return-object v0
.end method
