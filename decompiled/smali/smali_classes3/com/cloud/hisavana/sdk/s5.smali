.class public abstract synthetic Lcom/cloud/hisavana/sdk/s5;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Landroid/content/pm/ShortcutManager;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
