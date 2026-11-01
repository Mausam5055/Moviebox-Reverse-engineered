.class Lcom/mbridge/msdk/foundation/db/middle/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/db/middle/b;->a(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/buffer/a;

.field final synthetic c:Lcom/mbridge/msdk/foundation/db/middle/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/db/middle/b;ZLcom/mbridge/msdk/foundation/same/buffer/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->c:Lcom/mbridge/msdk/foundation/db/middle/b;

    iput-boolean p2, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->a:Z

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->b:Lcom/mbridge/msdk/foundation/same/buffer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->c:Lcom/mbridge/msdk/foundation/db/middle/b;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/middle/b;->a(Lcom/mbridge/msdk/foundation/db/middle/b;)Lcom/mbridge/msdk/foundation/db/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->b:Lcom/mbridge/msdk/foundation/same/buffer/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/same/buffer/a;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->c:Lcom/mbridge/msdk/foundation/db/middle/b;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/db/middle/b;->a(Lcom/mbridge/msdk/foundation/db/middle/b;)Lcom/mbridge/msdk/foundation/db/k;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/db/middle/b$a;->c:Lcom/mbridge/msdk/foundation/db/middle/b;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/db/middle/b;->b(Lcom/mbridge/msdk/foundation/db/middle/b;)Lcom/mbridge/msdk/foundation/same/buffer/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/foundation/same/buffer/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/mbridge/msdk/foundation/db/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    return-void
.end method
