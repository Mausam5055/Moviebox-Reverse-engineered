.class public Lcom/mbridge/msdk/foundation/same/net/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/mbridge/msdk/foundation/same/net/exception/a;

.field public b:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/toolbox/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/mbridge/msdk/foundation/same/net/toolbox/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/e;->a:Lcom/mbridge/msdk/foundation/same/net/exception/a;

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/e;->b:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    return-void
.end method

.method public static a(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/toolbox/a;)Lcom/mbridge/msdk/foundation/same/net/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/mbridge/msdk/foundation/same/net/toolbox/a;",
            ")",
            "Lcom/mbridge/msdk/foundation/same/net/e<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/e;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/foundation/same/net/e;-><init>(Ljava/lang/Object;Lcom/mbridge/msdk/foundation/same/net/toolbox/a;)V

    return-object v0
.end method
