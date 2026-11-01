.class Lcom/mbridge/msdk/foundation/same/image/d$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/image/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/image/d$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/image/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/image/d$a$a;->a:Lcom/mbridge/msdk/foundation/same/image/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/image/d$a$a;->a:Lcom/mbridge/msdk/foundation/same/image/d$a;

    iget-object v1, v0, Lcom/mbridge/msdk/foundation/same/image/d$a;->b:Lcom/mbridge/msdk/foundation/same/image/c;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/same/image/d$a;->a:Ljava/lang/String;

    const-string v2, "create download request error"

    invoke-interface {v1, v2, v0}, Lcom/mbridge/msdk/foundation/same/image/c;->onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
