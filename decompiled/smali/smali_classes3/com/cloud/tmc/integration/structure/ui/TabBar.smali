.class public interface abstract Lcom/cloud/tmc/integration/structure/ui/TabBar;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/structure/ui/TabBar$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u001a\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J0\u0010\u000c\u001a\u00020\u00032\u0008\u0010\r\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bH&J&\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u000bH&J\u0018\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u0003H&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J8\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00162\u0016\u0008\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u001fH&J\u0012\u0010 \u001a\u00020\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\u000bH&J\u001e\u0010\"\u001a\u00020\u00032\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0006\u0010\u0015\u001a\u00020\u0016H&J \u0010&\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020%2\u0006\u0010\u0015\u001a\u00020\u0016H&\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/integration/structure/ui/TabBar;",
        "",
        "hideTabBar",
        "",
        "animation",
        "isShow",
        "removeTabBarBadge",
        "index",
        "",
        "setTabBarBadge",
        "badgeText",
        "",
        "setTabBarStyle",
        "color",
        "selectedColor",
        "backgroundColor",
        "borderStyle",
        "setTabs",
        "",
        "tabBarConfig",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;",
        "page",
        "Lcom/cloud/tmc/integration/structure/Page;",
        "commonResId",
        "setUnreadIconVisible",
        "visible",
        "setUnreadVisible",
        "showTabBar",
        "showTabBarUnreadIcon",
        "iconPath",
        "block",
        "Lkotlin/Function1;",
        "switchCurrentTab",
        "pagePath",
        "updateAllTabs",
        "tabs",
        "",
        "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;",
        "updateTabItem",
        "tab",
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

.method public abstract isShow()Z
.end method

.method public abstract removeTabBarBadge(I)Z
.end method

.method public abstract setTabBarBadge(ILjava/lang/String;)Z
.end method

.method public abstract setTabBarStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setTabs(Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean;Lcom/cloud/tmc/integration/structure/Page;Ljava/lang/String;)V
.end method

.method public abstract setUnreadIconVisible(IZ)Z
.end method

.method public abstract setUnreadVisible(IZ)Z
.end method

.method public abstract showTabBar(Z)Z
.end method

.method public abstract showTabBarUnreadIcon(ILjava/lang/String;Lcom/cloud/tmc/integration/structure/Page;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/structure/Page;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract switchCurrentTab(Ljava/lang/String;)V
.end method

.method public abstract updateAllTabs(Ljava/util/List;Lcom/cloud/tmc/integration/structure/Page;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;",
            ">;",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract updateTabItem(ILcom/cloud/tmc/integration/model/MiniAppConfigModel$TabBarBean$ListBean;Lcom/cloud/tmc/integration/structure/Page;)Z
.end method
