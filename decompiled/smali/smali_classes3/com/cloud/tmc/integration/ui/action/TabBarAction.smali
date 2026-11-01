.class public interface abstract Lcom/cloud/tmc/integration/ui/action/TabBarAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/ui/action/TabBarAction$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0010\u001a\u0004\u0018\u00010\rH&J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0013H&J \u0010\u0014\u001a\u00020\u00032\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00130\u0016j\u0008\u0012\u0004\u0012\u00020\u0013`\u0017H&J0\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0019\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\rH&J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J0\u0010\u001f\u001a\u00020 2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\r2\u0016\u0008\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020 \u0018\u00010#H&\u00a8\u0006$"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/ui/action/TabBarAction;",
        "",
        "hideTabBar",
        "",
        "animation",
        "hideTabBarRedDot",
        "index",
        "",
        "hideTabBarUnreadIcon",
        "loadTabBar",
        "tabBar",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "commonresId",
        "",
        "removeTabBarBadge",
        "setTabBarBadge",
        "badgeText",
        "setTabBarItem",
        "tab",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;",
        "setTabBarItems",
        "tabs",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "setTabBarStyle",
        "color",
        "selectedColor",
        "backgroundColor",
        "borderStyle",
        "showTabBar",
        "showTabBarRedDot",
        "showTabBarUnreadIcon",
        "",
        "iconPath",
        "block",
        "Lkotlin/Function1;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract hideTabBar(Z)Z
.end method

.method public abstract hideTabBarRedDot(I)Z
.end method

.method public abstract hideTabBarUnreadIcon(I)Z
.end method

.method public abstract loadTabBar(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Ljava/lang/String;)Z
.end method

.method public abstract removeTabBarBadge(I)Z
.end method

.method public abstract setTabBarBadge(ILjava/lang/String;)Z
.end method

.method public abstract setTabBarItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;)Z
.end method

.method public abstract setTabBarItems(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract showTabBar(Z)Z
.end method

.method public abstract showTabBarRedDot(I)Z
.end method

.method public abstract showTabBarUnreadIcon(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
