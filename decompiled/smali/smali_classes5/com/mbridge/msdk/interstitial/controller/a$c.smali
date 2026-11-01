.class public Lcom/mbridge/msdk/interstitial/controller/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/interstitial/controller/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/interstitial/adapter/a;

.field final synthetic b:Lcom/mbridge/msdk/interstitial/controller/a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/interstitial/controller/a;Lcom/mbridge/msdk/interstitial/adapter/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/adapter/a;->f()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "load timeout"

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/controller/a;->a(Lcom/mbridge/msdk/interstitial/controller/a;)Lcom/mbridge/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->b:Lcom/mbridge/msdk/interstitial/controller/a;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/controller/a;->b(Lcom/mbridge/msdk/interstitial/controller/a;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/interstitial/adapter/a;->a(Lcom/mbridge/msdk/interstitial/controller/a$b;)V

    iput-object v1, p0, Lcom/mbridge/msdk/interstitial/controller/a$c;->a:Lcom/mbridge/msdk/interstitial/adapter/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
