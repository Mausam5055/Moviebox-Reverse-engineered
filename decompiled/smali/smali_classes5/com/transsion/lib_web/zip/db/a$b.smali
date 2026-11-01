.class public final Lcom/transsion/lib_web/zip/db/a$b;
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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/lib_web/zip/db/a$b;->d(Lz3/e;Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM `mb_web_res_db` WHERE `scene` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/transsion/lib_web/zip/db/WebViewCacheConfigData;->getScene()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    return-void
.end method
