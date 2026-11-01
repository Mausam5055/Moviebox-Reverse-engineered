.class public final enum Lcom/tmc/network/ContentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tmc/network/ContentType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/tmc/network/ContentType;",
        "",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "toString",
        "FORM",
        "MULTIPART",
        "JSON",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tmc/network/ContentType;

.field public static final enum FORM:Lcom/tmc/network/ContentType;

.field public static final enum JSON:Lcom/tmc/network/ContentType;

.field public static final enum MULTIPART:Lcom/tmc/network/ContentType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/tmc/network/ContentType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tmc/network/ContentType;

    sget-object v1, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tmc/network/ContentType;

    const/4 v1, 0x0

    const-string v2, "application/x-www-from-urlencoded"

    const-string v3, "FORM"

    invoke-direct {v0, v3, v1, v2}, Lcom/tmc/network/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tmc/network/ContentType;->FORM:Lcom/tmc/network/ContentType;

    new-instance v0, Lcom/tmc/network/ContentType;

    const/4 v1, 0x1

    const-string v2, "multipart/form-data"

    const-string v3, "MULTIPART"

    invoke-direct {v0, v3, v1, v2}, Lcom/tmc/network/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tmc/network/ContentType;->MULTIPART:Lcom/tmc/network/ContentType;

    new-instance v0, Lcom/tmc/network/ContentType;

    const/4 v1, 0x2

    const-string v2, "application/json"

    const-string v3, "JSON"

    invoke-direct {v0, v3, v1, v2}, Lcom/tmc/network/ContentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tmc/network/ContentType;->JSON:Lcom/tmc/network/ContentType;

    invoke-static {}, Lcom/tmc/network/ContentType;->$values()[Lcom/tmc/network/ContentType;

    move-result-object v0

    sput-object v0, Lcom/tmc/network/ContentType;->$VALUES:[Lcom/tmc/network/ContentType;

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

    const-string p1, ";charset=utf-8"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tmc/network/ContentType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tmc/network/ContentType;
    .locals 1

    const-class v0, Lcom/tmc/network/ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tmc/network/ContentType;

    return-object p0
.end method

.method public static values()[Lcom/tmc/network/ContentType;
    .locals 1

    sget-object v0, Lcom/tmc/network/ContentType;->$VALUES:[Lcom/tmc/network/ContentType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tmc/network/ContentType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tmc/network/ContentType;->value:Ljava/lang/String;

    return-object v0
.end method
