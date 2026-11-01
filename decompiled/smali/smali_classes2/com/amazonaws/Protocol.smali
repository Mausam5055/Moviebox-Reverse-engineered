.class public final enum Lcom/amazonaws/Protocol;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazonaws/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazonaws/Protocol;

.field public static final enum HTTP:Lcom/amazonaws/Protocol;

.field public static final enum HTTPS:Lcom/amazonaws/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/amazonaws/Protocol;

    const/4 v1, 0x0

    const-string v2, "http"

    const-string v3, "HTTP"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazonaws/Protocol;->HTTP:Lcom/amazonaws/Protocol;

    new-instance v2, Lcom/amazonaws/Protocol;

    const/4 v3, 0x1

    const-string v4, "https"

    const-string v5, "HTTPS"

    invoke-direct {v2, v5, v3, v4}, Lcom/amazonaws/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/amazonaws/Protocol;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/amazonaws/Protocol;->$VALUES:[Lcom/amazonaws/Protocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazonaws/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazonaws/Protocol;
    .locals 1

    const-class v0, Lcom/amazonaws/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/amazonaws/Protocol;
    .locals 1

    sget-object v0, Lcom/amazonaws/Protocol;->$VALUES:[Lcom/amazonaws/Protocol;

    invoke-virtual {v0}, [Lcom/amazonaws/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazonaws/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
