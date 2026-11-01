.class public final Lcom/transsion/lib_web/zip/db/a$c;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/lib_web/zip/db/a;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/zip/db/a$c;->d(Lz3/e;Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `mb_web_res_db` SET `scene` = ?,`htmlUrl` = ?,`zipUrl` = ?,`zipMd5` = ?,`sourceType` = ?,`updateTime` = ? WHERE `scene` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getScene()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getHtmlUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getZipUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getZipMd5()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getSourceType()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x5

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getUpdateTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getScene()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    return-void
.end method
