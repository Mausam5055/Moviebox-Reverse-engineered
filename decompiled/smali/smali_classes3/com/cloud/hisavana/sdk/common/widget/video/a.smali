.class public final synthetic Lcom/cloud/hisavana/sdk/common/widget/video/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/m4;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/m4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->b:Lcom/cloud/hisavana/sdk/m4;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->e:Z

    iput-boolean p6, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->b:Lcom/cloud/hisavana/sdk/m4;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->e:Z

    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/common/widget/video/a;->f:Z

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;Lcom/cloud/hisavana/sdk/m4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ZZ)V

    return-void
.end method
