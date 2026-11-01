.class final Lcom/mbridge/msdk/foundation/same/net/f$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/foundation/same/net/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/f;-><init>(Lcom/mbridge/msdk/foundation/same/net/f$a;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/net/f$d;->a:Lcom/mbridge/msdk/foundation/same/net/f;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/foundation/same/net/f;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/f$d;->a:Lcom/mbridge/msdk/foundation/same/net/f;

    return-object v0
.end method
