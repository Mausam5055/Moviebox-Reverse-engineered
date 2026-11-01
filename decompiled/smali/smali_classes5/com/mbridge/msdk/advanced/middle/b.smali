.class public Lcom/mbridge/msdk/advanced/middle/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

.field private b:Lcom/mbridge/msdk/advanced/middle/c;

.field private c:Lcom/mbridge/msdk/out/MBridgeIds;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/advanced/middle/c;Lcom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/middle/b;->b:Lcom/mbridge/msdk/advanced/middle/c;

    iput-object p2, p0, Lcom/mbridge/msdk/advanced/middle/b;->c:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/MBridgeIds;->getUnitId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/middle/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadSuccessed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeAdvancedLoadManager"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/b;->b:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mbridge/msdk/advanced/middle/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/b;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/middle/b;->b:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/middle/b;->c:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->onLoadSuccessed(Lcom/mbridge/msdk/out/MBridgeIds;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/b;->b:Lcom/mbridge/msdk/advanced/middle/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/middle/c;->a(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/middle/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Z)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/middle/b;->b:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/advanced/middle/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Z)V

    :cond_1
    return-void
.end method

.method public a(Lcom/mbridge/msdk/foundation/error/b;I)V
    .locals 3

    iget-object p2, p0, Lcom/mbridge/msdk/advanced/middle/b;->b:Lcom/mbridge/msdk/advanced/middle/c;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/mbridge/msdk/advanced/middle/c;->g()Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/error/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/b;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/middle/b;->c:Lcom/mbridge/msdk/out/MBridgeIds;

    invoke-interface {v0, v1, p2}, Lcom/mbridge/msdk/out/NativeAdvancedAdListener;->onLoadFailed(Lcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/middle/b;->b:Lcom/mbridge/msdk/advanced/middle/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/advanced/middle/c;->a(Z)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/advanced/middle/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/mbridge/msdk/advanced/middle/b;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/error/b;->a()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-static {v0, p2, v1, v2, p1}, Lcom/mbridge/msdk/foundation/same/report/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    :cond_4
    return-void
.end method

.method public a(Lcom/mbridge/msdk/out/NativeAdvancedAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/middle/b;->a:Lcom/mbridge/msdk/out/NativeAdvancedAdListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/advanced/middle/b;->e:Ljava/lang/String;

    return-void
.end method
