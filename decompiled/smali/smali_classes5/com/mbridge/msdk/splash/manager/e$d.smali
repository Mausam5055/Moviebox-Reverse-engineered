.class Lcom/mbridge/msdk/splash/manager/e$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/splash/manager/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/manager/e;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/manager/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/manager/e$d;->a:Lcom/mbridge/msdk/splash/manager/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6d8a

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/manager/e$d;->a:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/splash/manager/e$d;->a:Lcom/mbridge/msdk/splash/manager/e;

    invoke-static {v3}, Lcom/mbridge/msdk/splash/manager/e;->e(Lcom/mbridge/msdk/splash/manager/e;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mbridge/msdk/splash/manager/e;->a(Lcom/mbridge/msdk/splash/manager/e;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method
