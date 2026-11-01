.class Lcom/mbridge/msdk/advanced/manager/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/advanced/manager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/advanced/manager/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/advanced/manager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/manager/b$f;->a:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/mbridge/msdk/foundation/error/b;

    const v1, 0xd6d8a

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/error/b;-><init>(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/manager/b$f;->a:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v1}, Lcom/mbridge/msdk/advanced/manager/b;->g(Lcom/mbridge/msdk/advanced/manager/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/advanced/manager/b$f;->a:Lcom/mbridge/msdk/advanced/manager/b;

    invoke-static {v3}, Lcom/mbridge/msdk/advanced/manager/b;->f(Lcom/mbridge/msdk/advanced/manager/b;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/mbridge/msdk/advanced/manager/b;->a(Lcom/mbridge/msdk/advanced/manager/b;Lcom/mbridge/msdk/foundation/error/b;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    return-void
.end method
