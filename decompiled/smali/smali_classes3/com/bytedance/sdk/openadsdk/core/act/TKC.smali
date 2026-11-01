.class public Lcom/bytedance/sdk/openadsdk/core/act/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/act/sP;


# direct methods
.method public static Sj(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/d;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p2, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p0, p3}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public Sj(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
