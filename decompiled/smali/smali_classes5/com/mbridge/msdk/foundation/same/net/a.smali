.class public Lcom/mbridge/msdk/foundation/same/net/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/same/net/a$b;
    }
.end annotation


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/foundation/same/net/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/a;-><init>()V

    return-void
.end method

.method public static b()Lcom/mbridge/msdk/foundation/same/net/a;
    .locals 1

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/a$b;->a()Lcom/mbridge/msdk/foundation/same/net/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    sget-wide v0, Lcom/mbridge/msdk/foundation/same/net/a;->a:J

    return-wide v0
.end method
