.class public Lcom/mbridge/msdk/mbnative/controller/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.mbridge.msdk.mbnative.controller.e"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "m_download_end"

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/db/n;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/n;

    move-result-object p0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/db/n;->a()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v1, "2000021"

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/foundation/db/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/mbridge/msdk/foundation/db/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/report/o;->e(Ljava/util/List;)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/report/o;->a(Ljava/util/List;)V

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/report/o;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/mbridge/msdk/mbnative/controller/e;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
