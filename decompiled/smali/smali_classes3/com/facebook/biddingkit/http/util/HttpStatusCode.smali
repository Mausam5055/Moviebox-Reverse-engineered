.class public final enum Lcom/facebook/biddingkit/http/util/HttpStatusCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/http/util/HttpStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum BAD_REQUEST:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum NO_BID:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum SUCCESS:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum TIMEOUT:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

.field public static final enum UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;


# instance fields
.field private mStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->SUCCESS:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v2, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v3, 0x1

    const/16 v4, 0xcc

    const-string v5, "NO_BID"

    invoke-direct {v2, v5, v3, v4}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->NO_BID:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v4, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v5, 0x2

    const/16 v6, 0x190

    const-string v7, "BAD_REQUEST"

    invoke-direct {v4, v7, v5, v6}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->BAD_REQUEST:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v6, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v7, 0x3

    const/16 v8, 0x1f8

    const-string v9, "TIMEOUT"

    invoke-direct {v6, v9, v7, v8}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->TIMEOUT:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    new-instance v8, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v9, 0x4

    const/4 v10, -0x1

    const-string v11, "UNKNOWN"

    invoke-direct {v8, v11, v9, v10}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    aput-object v0, v10, v1

    aput-object v2, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->$VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

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

    iput p3, p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    return-void
.end method

.method public static getValue(I)Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 5

    invoke-static {}, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->values()[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->UNKNOWN:Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/http/util/HttpStatusCode;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->$VALUES:[Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/http/util/HttpStatusCode;

    return-object v0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/facebook/biddingkit/http/util/HttpStatusCode$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "Unknown error"

    return-object v0

    :cond_0
    const-string v0, "Server timeout"

    return-object v0

    :cond_1
    const-string v0, "Invalid request"

    return-object v0

    :cond_2
    const-string v0, "No bid"

    return-object v0

    :cond_3
    const-string v0, ""

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/facebook/biddingkit/http/util/HttpStatusCode;->mStatusCode:I

    return v0
.end method
