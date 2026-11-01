.class public final synthetic Lcom/cloud/hisavana/sdk/api/listener/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/api/listener/d;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->b:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->a:Lcom/cloud/hisavana/sdk/api/listener/d;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/listener/b;->b:Lcom/cloud/hisavana/sdk/api/adx/TBannerView;

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->a(Lcom/cloud/hisavana/sdk/api/listener/d;Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    return-void
.end method
