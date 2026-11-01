.class Lcom/mbridge/msdk/foundation/controller/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/controller/a;->b(Lcom/mbridge/msdk/foundation/controller/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/controller/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/controller/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/a$a;->a:Lcom/mbridge/msdk/foundation/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/a$a;->a:Lcom/mbridge/msdk/foundation/controller/a;

    iget-object v0, v0, Lcom/mbridge/msdk/foundation/controller/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/e;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/report/crashreport/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/report/crashreport/e;->a()V

    return-void
.end method
