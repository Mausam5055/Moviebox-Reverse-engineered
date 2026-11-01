.class public final enum Lcom/transsion/api/gateway/sercurity/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/api/gateway/sercurity/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/transsion/api/gateway/sercurity/d;

.field public static final enum b:Lcom/transsion/api/gateway/sercurity/d;

.field public static final enum c:Lcom/transsion/api/gateway/sercurity/d;

.field public static final synthetic d:[Lcom/transsion/api/gateway/sercurity/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/transsion/api/gateway/sercurity/d;

    const-string v1, "HmacSHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/api/gateway/sercurity/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/api/gateway/sercurity/d;->a:Lcom/transsion/api/gateway/sercurity/d;

    new-instance v1, Lcom/transsion/api/gateway/sercurity/d;

    const-string v3, "HmacSHA256"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/api/gateway/sercurity/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/api/gateway/sercurity/d;->b:Lcom/transsion/api/gateway/sercurity/d;

    new-instance v3, Lcom/transsion/api/gateway/sercurity/d;

    const-string v5, "HmacMD5"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/api/gateway/sercurity/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/api/gateway/sercurity/d;->c:Lcom/transsion/api/gateway/sercurity/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/api/gateway/sercurity/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/transsion/api/gateway/sercurity/d;->d:[Lcom/transsion/api/gateway/sercurity/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/api/gateway/sercurity/d;
    .locals 1

    const-class v0, Lcom/transsion/api/gateway/sercurity/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/api/gateway/sercurity/d;

    return-object p0
.end method

.method public static values()[Lcom/transsion/api/gateway/sercurity/d;
    .locals 1

    sget-object v0, Lcom/transsion/api/gateway/sercurity/d;->d:[Lcom/transsion/api/gateway/sercurity/d;

    invoke-virtual {v0}, [Lcom/transsion/api/gateway/sercurity/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/api/gateway/sercurity/d;

    return-object v0
.end method
