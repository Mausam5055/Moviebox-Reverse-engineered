.class public abstract synthetic Lcom/bytedance/sdk/openadsdk/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a()Landroid/content/pm/PackageInfo;
    .locals 1

    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
