.class Lcom/mbridge/msdk/foundation/same/net/utils/c$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/mbridge/msdk/foundation/same/net/utils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/utils/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/utils/c;-><init>(Lcom/mbridge/msdk/foundation/same/net/utils/c$a;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/net/utils/c$c;->a:Lcom/mbridge/msdk/foundation/same/net/utils/c;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/foundation/same/net/utils/c;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/utils/c$c;->a:Lcom/mbridge/msdk/foundation/same/net/utils/c;

    return-object v0
.end method
