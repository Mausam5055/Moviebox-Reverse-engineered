.class public Lcom/mbridge/msdk/tracker/network/i;
.super Lcom/mbridge/msdk/tracker/network/h;

# interfaces
.implements Lcom/mbridge/msdk/tracker/network/v$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mbridge/msdk/tracker/network/h<",
        "Lorg/json/JSONObject;",
        ">;",
        "Lcom/mbridge/msdk/tracker/network/v$a;"
    }
.end annotation


# instance fields
.field private final C:Lcom/mbridge/msdk/tracker/network/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mbridge/msdk/tracker/network/j<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;JLcom/mbridge/msdk/tracker/network/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/mbridge/msdk/tracker/network/j<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/tracker/network/h;-><init>(ILjava/lang/String;ILjava/lang/String;J)V

    iput-object p6, p0, Lcom/mbridge/msdk/tracker/network/i;->C:Lcom/mbridge/msdk/tracker/network/j;

    invoke-virtual {p0, p0}, Lcom/mbridge/msdk/tracker/network/t;->a(Lcom/mbridge/msdk/tracker/network/v$a;)V

    return-void
.end method

.method private a(Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/v<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/mbridge/msdk/tracker/network/q;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/i;->C:Lcom/mbridge/msdk/tracker/network/j;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/mbridge/msdk/tracker/network/j;->a(Lcom/mbridge/msdk/tracker/network/h;Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/mbridge/msdk/tracker/network/h;->B:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private b(Lcom/mbridge/msdk/tracker/network/v;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/v<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/network/i;->C:Lcom/mbridge/msdk/tracker/network/j;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/mbridge/msdk/tracker/network/v;->c:Lcom/mbridge/msdk/tracker/network/b0;

    iget-object v1, v1, Lcom/mbridge/msdk/tracker/network/b0;->a:Lcom/mbridge/msdk/tracker/network/q;

    invoke-interface {v0, p0, p1, v1}, Lcom/mbridge/msdk/tracker/network/j;->b(Lcom/mbridge/msdk/tracker/network/h;Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mbridge/msdk/tracker/network/h;->B:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/tracker/network/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/q;",
            ")",
            "Lcom/mbridge/msdk/tracker/network/v<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/mbridge/msdk/tracker/network/q;->b:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget v1, p1, Lcom/mbridge/msdk/tracker/network/q;->a:I

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->a(Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/tracker/network/b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/tracker/network/v;->a(Ljava/lang/Object;Lcom/mbridge/msdk/tracker/network/b$a;)Lcom/mbridge/msdk/tracker/network/v;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/tracker/network/i;->a(Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->a(Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/tracker/network/b$a;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mbridge/msdk/tracker/network/v;->a(Ljava/lang/Object;Lcom/mbridge/msdk/tracker/network/b$a;)Lcom/mbridge/msdk/tracker/network/v;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mbridge/msdk/tracker/network/i;->a(Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_0
    new-instance v0, Lcom/mbridge/msdk/tracker/network/a0;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/tracker/network/a0;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/network/v;->a(Lcom/mbridge/msdk/tracker/network/b0;)Lcom/mbridge/msdk/tracker/network/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/i;->b(Lcom/mbridge/msdk/tracker/network/v;)V

    return-object p1

    :goto_1
    sget-object v0, Lcom/mbridge/msdk/tracker/network/h;->B:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mbridge/msdk/tracker/network/s;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/tracker/network/s;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/network/v;->a(Lcom/mbridge/msdk/tracker/network/b0;)Lcom/mbridge/msdk/tracker/network/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/i;->b(Lcom/mbridge/msdk/tracker/network/v;)V

    return-object p1
.end method

.method public a(Lcom/mbridge/msdk/tracker/network/b0;)V
    .locals 0

    invoke-static {p1}, Lcom/mbridge/msdk/tracker/network/v;->a(Lcom/mbridge/msdk/tracker/network/b0;)Lcom/mbridge/msdk/tracker/network/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/tracker/network/i;->b(Lcom/mbridge/msdk/tracker/network/v;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/tracker/network/i;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
