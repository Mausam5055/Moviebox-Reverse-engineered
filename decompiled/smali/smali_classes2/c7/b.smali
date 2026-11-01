.class public final synthetic Lc7/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic c:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc7/b;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iput-object p2, p0, Lc7/b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iput-object p3, p0, Lc7/b;->c:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    iput-object p4, p0, Lc7/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    iget-object v0, p0, Lc7/b;->a:Lcom/cloud/hisavana/sdk/api/view/MediaView;

    iget-object v1, p0, Lc7/b;->b:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object v2, p0, Lc7/b;->c:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    iget-object v3, p0, Lc7/b;->d:Ljava/lang/String;

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->b(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;II)V

    return-void
.end method
