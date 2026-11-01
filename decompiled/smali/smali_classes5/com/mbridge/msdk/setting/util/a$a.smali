.class Lcom/mbridge/msdk/setting/util/a$a;
.super Lcom/mbridge/msdk/foundation/same/net/handler/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/setting/util/a;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/setting/util/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/setting/util/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/setting/util/a$a;->c:Lcom/mbridge/msdk/setting/util/a;

    iput-object p2, p0, Lcom/mbridge/msdk/setting/util/a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/handler/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail request mraid js. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MraidJSController"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request mraid js success, content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MraidJSController"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/setting/util/a$a;->c:Lcom/mbridge/msdk/setting/util/a;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/setting/util/a;->a(Lcom/mbridge/msdk/setting/util/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/mbridge/msdk/setting/util/a$a;->c:Lcom/mbridge/msdk/setting/util/a;

    iget-object v1, p0, Lcom/mbridge/msdk/setting/util/a$a;->b:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/mbridge/msdk/setting/util/a;->a(Lcom/mbridge/msdk/setting/util/a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
