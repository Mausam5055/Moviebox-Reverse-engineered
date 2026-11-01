.class Lcom/mbridge/msdk/foundation/same/net/utils/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/net/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/mbridge/msdk/foundation/same/net/utils/c$b;->c:J

    iput p3, p0, Lcom/mbridge/msdk/foundation/same/net/utils/c$b;->a:I

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/same/net/utils/c$b;->b:Ljava/lang/String;

    return-void
.end method
