.class final Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->showTabBarUnreadIcon(ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $block:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $iconPath:Ljava/lang/String;

.field public final synthetic $index:I

.field public final synthetic this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;ILjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    iput p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->$index:I

    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->$iconPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->this$0:Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;->access$getPage$p$s-387525749(Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment;)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v3, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    invoke-interface {v0, v3, v1}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/model/TabBarMessageStore;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->$index:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->$iconPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setUnreadIcon(Ljava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/model/TabBarMessageStore;->getRedDotMessageHashMap()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->$index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;

    :cond_3
    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v1}, Lcom/cloud/tmc/integration/model/TabBarRedDotMessage;->setShowUnreadIcon(Z)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppBaseFragment$showTabBarUnreadIcon$1$1;->$block:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method
