.class public Lcom/mbridge/msdk/foundation/same/net/exception/a;
.super Ljava/lang/Exception;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;


# direct methods
.method public constructor <init>(ILcom/mbridge/msdk/foundation/same/net/toolbox/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->a:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->c:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    return-void
.end method

.method public constructor <init>(ILcom/mbridge/msdk/foundation/same/net/toolbox/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->a:I

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->c:Lcom/mbridge/msdk/foundation/same/net/toolbox/a;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/net/exception/a;->b:Ljava/lang/String;

    return-void
.end method
