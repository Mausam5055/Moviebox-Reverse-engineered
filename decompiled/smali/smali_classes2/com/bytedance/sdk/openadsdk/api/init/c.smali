.class public abstract synthetic Lcom/bytedance/sdk/openadsdk/api/init/c;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/content/pm/ShortcutManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result p0

    return p0
.end method
