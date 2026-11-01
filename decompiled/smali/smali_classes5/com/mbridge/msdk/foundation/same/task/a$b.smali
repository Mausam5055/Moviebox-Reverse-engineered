.class public final enum Lcom/mbridge/msdk/foundation/same/task/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/task/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/foundation/same/task/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mbridge/msdk/foundation/same/task/a$b;

.field public static final enum b:Lcom/mbridge/msdk/foundation/same/task/a$b;

.field public static final enum c:Lcom/mbridge/msdk/foundation/same/task/a$b;

.field public static final enum d:Lcom/mbridge/msdk/foundation/same/task/a$b;

.field public static final enum e:Lcom/mbridge/msdk/foundation/same/task/a$b;

.field private static final synthetic f:[Lcom/mbridge/msdk/foundation/same/task/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/a$b;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/task/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->a:Lcom/mbridge/msdk/foundation/same/task/a$b;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/a$b;

    const-string v1, "RUNNING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/task/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->b:Lcom/mbridge/msdk/foundation/same/task/a$b;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/a$b;

    const-string v1, "PAUSE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/task/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->c:Lcom/mbridge/msdk/foundation/same/task/a$b;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/a$b;

    const-string v1, "CANCEL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/task/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->d:Lcom/mbridge/msdk/foundation/same/task/a$b;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/task/a$b;

    const-string v1, "FINISH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/task/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->e:Lcom/mbridge/msdk/foundation/same/task/a$b;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/task/a$b;->a()[Lcom/mbridge/msdk/foundation/same/task/a$b;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->f:[Lcom/mbridge/msdk/foundation/same/task/a$b;

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

.method private static synthetic a()[Lcom/mbridge/msdk/foundation/same/task/a$b;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mbridge/msdk/foundation/same/task/a$b;

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->a:Lcom/mbridge/msdk/foundation/same/task/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->b:Lcom/mbridge/msdk/foundation/same/task/a$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->c:Lcom/mbridge/msdk/foundation/same/task/a$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->d:Lcom/mbridge/msdk/foundation/same/task/a$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mbridge/msdk/foundation/same/task/a$b;->e:Lcom/mbridge/msdk/foundation/same/task/a$b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/task/a$b;
    .locals 1

    const-class v0, Lcom/mbridge/msdk/foundation/same/task/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mbridge/msdk/foundation/same/task/a$b;

    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/foundation/same/task/a$b;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->f:[Lcom/mbridge/msdk/foundation/same/task/a$b;

    invoke-virtual {v0}, [Lcom/mbridge/msdk/foundation/same/task/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mbridge/msdk/foundation/same/task/a$b;

    return-object v0
.end method
