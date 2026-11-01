.class Lcom/mbridge/msdk/reward/controller/a$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/reward/controller/a$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/mbridge/msdk/reward/controller/a$d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/reward/controller/a$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iput-object p2, p0, Lcom/mbridge/msdk/reward/controller/a$d$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mbridge/msdk/reward/controller/a$d$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/reward/controller/a$d$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    invoke-static {}, Lcom/mbridge/msdk/reward/adapter/b;->b()Lcom/mbridge/msdk/reward/adapter/b;

    move-result-object v1

    iget-object v2, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v2, v2, Lcom/mbridge/msdk/reward/controller/a$d;->g:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v2}, Lcom/mbridge/msdk/reward/controller/a;->g(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v2

    iget-object v3, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v3, v3, Lcom/mbridge/msdk/reward/controller/a$d;->g:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v3}, Lcom/mbridge/msdk/reward/controller/a;->e(Lcom/mbridge/msdk/reward/controller/a;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v4, v4, Lcom/mbridge/msdk/reward/controller/a$d;->g:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v4}, Lcom/mbridge/msdk/reward/controller/a;->f(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v4

    iget-object v5, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v5, v5, Lcom/mbridge/msdk/reward/controller/a$d;->g:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v5}, Lcom/mbridge/msdk/reward/controller/a;->x(Lcom/mbridge/msdk/reward/controller/a;)Z

    move-result v5

    iget-object v6, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v7, v7, Lcom/mbridge/msdk/reward/controller/a$d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v7}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->b:Ljava/lang/String;

    iget-object v9, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->c:Ljava/lang/String;

    iget-object v10, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v10, v10, Lcom/mbridge/msdk/reward/controller/a$d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v10}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v11, v11, Lcom/mbridge/msdk/reward/controller/a$d;->g:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v11}, Lcom/mbridge/msdk/reward/controller/a;->h(Lcom/mbridge/msdk/reward/controller/a;)I

    move-result v11

    iget-object v13, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v12, v13, Lcom/mbridge/msdk/reward/controller/a$d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v13, v13, Lcom/mbridge/msdk/reward/controller/a$d;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;

    move-result-object v14

    iget-object v15, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v15, v15, Lcom/mbridge/msdk/reward/controller/a$d;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v15}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCMPTEntryUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager;->getH5ResAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->c:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/mbridge/msdk/reward/controller/a$d$a;->d:Lcom/mbridge/msdk/reward/controller/a$d;

    iget-object v1, v1, Lcom/mbridge/msdk/reward/controller/a$d;->g:Lcom/mbridge/msdk/reward/controller/a;

    invoke-static {v1}, Lcom/mbridge/msdk/reward/controller/a;->c(Lcom/mbridge/msdk/reward/controller/a;)Lcom/mbridge/msdk/videocommon/setting/c;

    move-result-object v16

    new-instance v1, Lcom/mbridge/msdk/reward/controller/a$d$a$a;

    move-object/from16 v17, v1

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/reward/controller/a$d$a$a;-><init>(Lcom/mbridge/msdk/reward/controller/a$d$a;)V

    const/16 v18, 0x1

    move-object/from16 v1, v19

    invoke-virtual/range {v1 .. v18}, Lcom/mbridge/msdk/reward/adapter/b;->a(ZLandroid/os/Handler;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/videocommon/setting/c;Lcom/mbridge/msdk/reward/adapter/b$o;Z)V

    return-void
.end method
