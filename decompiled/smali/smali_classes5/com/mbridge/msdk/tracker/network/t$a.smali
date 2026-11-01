.class public final enum Lcom/mbridge/msdk/tracker/network/t$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/network/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/tracker/network/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mbridge/msdk/tracker/network/t$a;

.field public static final enum b:Lcom/mbridge/msdk/tracker/network/t$a;

.field public static final enum c:Lcom/mbridge/msdk/tracker/network/t$a;

.field public static final enum d:Lcom/mbridge/msdk/tracker/network/t$a;

.field private static final synthetic e:[Lcom/mbridge/msdk/tracker/network/t$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/tracker/network/t$a;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/tracker/network/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/tracker/network/t$a;->a:Lcom/mbridge/msdk/tracker/network/t$a;

    new-instance v0, Lcom/mbridge/msdk/tracker/network/t$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/tracker/network/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/tracker/network/t$a;->b:Lcom/mbridge/msdk/tracker/network/t$a;

    new-instance v0, Lcom/mbridge/msdk/tracker/network/t$a;

    const-string v1, "HIGH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/tracker/network/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/tracker/network/t$a;->c:Lcom/mbridge/msdk/tracker/network/t$a;

    new-instance v0, Lcom/mbridge/msdk/tracker/network/t$a;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/tracker/network/t$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/tracker/network/t$a;->d:Lcom/mbridge/msdk/tracker/network/t$a;

    invoke-static {}, Lcom/mbridge/msdk/tracker/network/t$a;->a()[Lcom/mbridge/msdk/tracker/network/t$a;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/tracker/network/t$a;->e:[Lcom/mbridge/msdk/tracker/network/t$a;

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

.method private static synthetic a()[Lcom/mbridge/msdk/tracker/network/t$a;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mbridge/msdk/tracker/network/t$a;

    sget-object v1, Lcom/mbridge/msdk/tracker/network/t$a;->a:Lcom/mbridge/msdk/tracker/network/t$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/tracker/network/t$a;->b:Lcom/mbridge/msdk/tracker/network/t$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/tracker/network/t$a;->c:Lcom/mbridge/msdk/tracker/network/t$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/tracker/network/t$a;->d:Lcom/mbridge/msdk/tracker/network/t$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/tracker/network/t$a;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/tracker/network/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/tracker/network/t$a;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/tracker/network/t$a;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/tracker/network/t$a;->e:[Lcom/mbridge/msdk/tracker/network/t$a;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/tracker/network/t$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/tracker/network/t$a;

    return-object v0
.end method
