.class public final synthetic Le7/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le7/k;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iput-object p2, p0, Le7/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le7/k;->a:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object v1, p0, Le7/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->c(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    return-void
.end method
