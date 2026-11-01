.class public final enum Lcom/facebook/biddingkit/http/client/HttpMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/http/client/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/http/client/HttpMethod;

.field public static final enum GET:Lcom/facebook/biddingkit/http/client/HttpMethod;

.field public static final enum POST:Lcom/facebook/biddingkit/http/client/HttpMethod;


# instance fields
.field private doInput:Z

.field private doOutput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/facebook/biddingkit/http/client/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/facebook/biddingkit/http/client/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/facebook/biddingkit/http/client/HttpMethod;->GET:Lcom/facebook/biddingkit/http/client/HttpMethod;

    new-instance v1, Lcom/facebook/biddingkit/http/client/HttpMethod;

    const-string v4, "POST"

    invoke-direct {v1, v4, v3, v3, v3}, Lcom/facebook/biddingkit/http/client/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/facebook/biddingkit/http/client/HttpMethod;->POST:Lcom/facebook/biddingkit/http/client/HttpMethod;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/facebook/biddingkit/http/client/HttpMethod;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/facebook/biddingkit/http/client/HttpMethod;->$VALUES:[Lcom/facebook/biddingkit/http/client/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doInput:Z

    iput-boolean p4, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doOutput:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/http/client/HttpMethod;
    .locals 1

    const-class v0, Lcom/facebook/biddingkit/http/client/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/http/client/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/http/client/HttpMethod;
    .locals 1

    sget-object v0, Lcom/facebook/biddingkit/http/client/HttpMethod;->$VALUES:[Lcom/facebook/biddingkit/http/client/HttpMethod;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/http/client/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/http/client/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public getDoInput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doInput:Z

    return v0
.end method

.method public getDoOutput()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/biddingkit/http/client/HttpMethod;->doOutput:Z

    return v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
