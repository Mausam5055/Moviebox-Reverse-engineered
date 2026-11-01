.class public interface abstract Lcom/cloud/tmc/kernel/node/TabBarNode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/node/TabBarNode$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J.\u0010\r\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000cH&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J0\u0010\u0014\u001a\u00020\u00032\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000cH&J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J0\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000c2\u0016\u0008\u0002\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001eH&\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/node/TabBarNode;",
        "",
        "hideTabBar",
        "",
        "animation",
        "hideTabBarRedDot",
        "index",
        "",
        "hideTabBarUnreadIcon",
        "removeTabBarBadge",
        "setTabBarBadge",
        "badgeText",
        "",
        "setTabBarItem",
        "text",
        "iconPath",
        "selectedIconPath",
        "setTabBarItems",
        "tabs",
        "Lcom/google/gson/JsonArray;",
        "setTabBarStyle",
        "color",
        "selectedColor",
        "backgroundColor",
        "borderStyle",
        "showTabBar",
        "showTabBarRedDot",
        "showTabBarUnreadIcon",
        "",
        "block",
        "Lkotlin/Function1;",
        "com.cloud.tmc.kernel"
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

.method public abstract removeTabBarBadge(I)Z
.end method

.method public abstract setTabBarBadge(ILjava/lang/String;)Z
.end method

.method public abstract setTabBarItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setTabBarItems(Lcom/google/gson/JsonArray;)Z
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
