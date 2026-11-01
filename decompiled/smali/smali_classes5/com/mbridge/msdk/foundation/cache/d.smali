.class public Lcom/mbridge/msdk/foundation/cache/d;
.super Lcom/mbridge/msdk/foundation/cache/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/cache/a;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/db/c;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/c;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/cache/a;->a:Lcom/mbridge/msdk/foundation/db/c;

    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/foundation/cache/a;->a(Lorg/json/JSONArray;)V

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/cache/a;->e(Ljava/lang/String;)V

    return-void
.end method
