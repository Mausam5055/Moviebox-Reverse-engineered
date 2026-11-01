.class public final synthetic Lcom/cloud/hisavana/sdk/z4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/e5;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/e5;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/z4;->a:Lcom/cloud/hisavana/sdk/e5;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/z4;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/z4;->a:Lcom/cloud/hisavana/sdk/e5;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/z4;->b:Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/a5;->a(Lcom/cloud/hisavana/sdk/e5;Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;)V

    return-void
.end method
