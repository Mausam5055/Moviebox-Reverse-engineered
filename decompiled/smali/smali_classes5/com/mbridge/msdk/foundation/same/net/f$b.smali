.class Lcom/mbridge/msdk/foundation/same/net/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/net/f;->a(Ljava/lang/String;ILjava/lang/String;ZLcom/mbridge/msdk/foundation/same/net/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/net/f$c;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/net/f;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/f;Lcom/mbridge/msdk/foundation/same/net/f$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/f$b;->b:Lcom/mbridge/msdk/foundation/same/net/f;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/f$b;->a:Lcom/mbridge/msdk/foundation/same/net/f$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/f$b;->a:Lcom/mbridge/msdk/foundation/same/net/f$c;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/net/f$c;->a()V

    return-void
.end method
