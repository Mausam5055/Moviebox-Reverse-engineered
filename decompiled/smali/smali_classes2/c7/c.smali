.class public final synthetic Lc7/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc7/c;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iput-object p2, p0, Lc7/c;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iput-object p3, p0, Lc7/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc7/c;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iget-object v1, p0, Lc7/c;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object v2, p0, Lc7/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    return-void
.end method
