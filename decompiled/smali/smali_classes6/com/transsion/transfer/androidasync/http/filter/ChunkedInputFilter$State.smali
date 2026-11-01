.class final enum Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_LEN:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_LEN_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum CHUNK_LEN_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum COMPLETE:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

.field public static final enum ERROR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;


# direct methods
.method private static synthetic $values()[Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->ERROR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_LEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_LEN_CR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_LEN_CRLF"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_LEN_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_CR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "CHUNK_CRLF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->CHUNK_CRLF:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "COMPLETE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->COMPLETE:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    new-instance v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    const-string v1, "ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->ERROR:Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    invoke-static {}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->$values()[Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    move-result-object v0

    sput-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->$VALUES:[Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;
    .locals 1

    const-class v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    return-object p0
.end method

.method public static values()[Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->$VALUES:[Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    invoke-virtual {v0}, [Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter$State;

    return-object v0
.end method
