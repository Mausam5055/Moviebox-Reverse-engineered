.class final Lcom/mbridge/msdk/foundation/same/image/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/image/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/mbridge/msdk/foundation/same/image/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/foundation/same/image/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/image/d;-><init>(Lcom/mbridge/msdk/foundation/same/image/d$a;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/image/d$b;->a:Lcom/mbridge/msdk/foundation/same/image/d;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/foundation/same/image/d;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/image/d$b;->a:Lcom/mbridge/msdk/foundation/same/image/d;

    return-object v0
.end method
