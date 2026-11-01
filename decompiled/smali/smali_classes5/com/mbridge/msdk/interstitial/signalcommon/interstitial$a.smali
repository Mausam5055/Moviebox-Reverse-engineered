.class Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;->a(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->c:Lcom/mbridge/msdk/interstitial/signalcommon/interstitial;

    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/mbridge/msdk/interstitial/cache/a;->a()Lcom/mbridge/msdk/interstitial/cache/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/signalcommon/interstitial$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/interstitial/cache/a;->a(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
