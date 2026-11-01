.class Lcom/mbridge/msdk/foundation/db/middle/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/db/middle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:Lcom/mbridge/msdk/foundation/db/middle/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mbridge/msdk/foundation/db/middle/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/db/middle/b;-><init>(Lcom/mbridge/msdk/foundation/db/middle/b$a;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/db/middle/b$b;->a:Lcom/mbridge/msdk/foundation/db/middle/b;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/foundation/db/middle/b;
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/db/middle/b$b;->a:Lcom/mbridge/msdk/foundation/db/middle/b;

    return-object v0
.end method
