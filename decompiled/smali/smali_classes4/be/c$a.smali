.class public Lbe/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbe/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lbe/c;


# direct methods
.method public constructor <init>(Lbe/c;)V
    .locals 0

    iput-object p1, p0, Lbe/c$a;->a:Lbe/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(Lcom/hisavana/common/interfacz/ICacheAd;)V
    .locals 2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "CacheHandler"

    const-string v1, "ad expired"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
