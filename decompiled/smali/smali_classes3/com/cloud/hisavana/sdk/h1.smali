.class public final synthetic Lcom/cloud/hisavana/sdk/h1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/h1;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/h1;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/h1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/h1;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/h1;->e:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/h1;->f:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/cloud/hisavana/sdk/h1;->g:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/h1;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/h1;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/h1;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/h1;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/h1;->e:Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/h1;->f:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/cloud/hisavana/sdk/h1;->g:Z

    move-object v7, p1

    check-cast v7, Ljava/lang/Integer;

    invoke-static/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/N0;->a(Landroid/os/Bundle;Ljava/util/ArrayList;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Landroid/os/Bundle;ZLjava/lang/Integer;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
