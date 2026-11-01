.class public final Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/integration/ui/fragment/IFragmentManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;

.field private static final KEY_EXIT_PAGE:Ljava/lang/String; = "exitPage"

.field private static final STACK_MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "TmcFragmentManager"


# instance fields
.field private final activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

.field private firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

.field private fragmentMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutId:I

.field private final tabCacheFragmentManager:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->Companion:Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->layoutId:I

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    new-instance p1, Landroid/util/ArrayMap;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment$lambda$14(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    return-void
.end method

.method private final exitPage(Ljava/lang/String;ZZ)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_18

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_13

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    const-string v2, "ArrayList<Map.Entry<Stri\u2026terator(fragmentMap.size)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, ""

    move v4, v0

    move-object v5, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-nez v4, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "iterator.previous()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Map$Entry;

    iget-object v6, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v6

    move v4, v7

    goto :goto_0

    :cond_1
    move-object v5, v6

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    const-string v1, "isStateSaved is true , cant popBackStack"

    const-string v6, "Tmcintegration"

    const-string v8, "TmcFragmentManager"

    if-lez p1, :cond_c

    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p3}, Ljava/util/AbstractMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const-string p3, "ArrayList<Map.Entry<Stri\u2026entMap.size\n            )"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->hide()V

    :cond_3
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->onStop()V

    :cond_4
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p3, "exitPage"

    invoke-interface {p1, p3}, Lcom/cloud/tmc/kernel/node/ValueStore;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p1, :cond_9

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3, p1}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroidx/fragment/app/w;->l()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p3

    if-nez p3, :cond_7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    const-string v2, "view"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->toVisible(Landroid/view/View;)V

    :cond_7
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-interface {p3}, Lcom/cloud/tmc/integration/structure/Page;->show()V

    :cond_8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    const-string p3, "last page resume failed!"

    invoke-static {v8, p3, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    :try_start_1
    invoke-virtual {p0, v5, p2}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result p2

    if-nez p2, :cond_a

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->g0()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :cond_a
    :try_start_2
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_12

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_b
    :goto_5
    move v0, v4

    goto/16 :goto_12

    :goto_6
    move v0, v4

    :goto_7
    const-string p2, "remove fragment failed!"

    invoke-static {v8, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    :cond_c
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    if-nez p1, :cond_11

    if-eqz p3, :cond_11

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    :try_start_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    if-eqz p3, :cond_f

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->L0()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p2

    goto :goto_9

    :catchall_3
    move-exception p2

    goto :goto_b

    :cond_d
    move-object p2, v2

    :goto_9
    invoke-virtual {p3, p2, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->g0()Z

    goto :goto_a

    :cond_e
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    :cond_f
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_8

    :goto_b
    const-string p3, "fragment manager error"

    invoke-static {v8, p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_10
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->release()V

    goto :goto_5

    :cond_11
    iput-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    :try_start_4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {p2}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-interface {p2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    :catchall_4
    move-exception p2

    goto :goto_f

    :cond_12
    move-object p2, v2

    :goto_d
    invoke-virtual {p3, p2, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->g0()Z

    goto :goto_e

    :cond_13
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    :cond_14
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_c

    :goto_f
    const-string p3, "remove tab fragment failed!"

    invoke-static {v8, p3, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :cond_15
    :try_start_5
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result p1

    if-nez p1, :cond_16

    move p1, v7

    goto :goto_10

    :catchall_5
    move-exception p1

    goto :goto_11

    :cond_16
    move p1, v0

    :goto_10
    if-eqz p1, :cond_17

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_b

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v7}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_17
    invoke-static {v6, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_12

    :goto_11
    const-string p2, "remove fragment popBackStack failed!"

    invoke-static {v8, p2, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :goto_12
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->hideAddHomeTips()V

    :cond_18
    :goto_13
    return v0
.end method

.method public static synthetic exitPage$default(Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->exitPage(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method private final findFragmentForPage(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final hideAddHomeTips()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/App;->getAppContext()Lcom/cloud/tmc/integration/structure/AppContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->hideAddHomeTips()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v1, "TmcFragmentManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private final noticeTmcFragmentUpdate(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 2

    const-string v0, "TmcFragmentManager"

    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getActivePage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    const-string v1, "ArrayList<Map.Entry<Stri\u2026ize\n                    )"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "iterator.previous()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    move-result-object p1

    instance-of v1, p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/w;->l()V

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/Page;->show()V

    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :goto_2
    :try_start_2
    const-string v1, "notice fragment update failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    const-string v1, "noticeTmcFragmentUpdate is failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-void
.end method

.method private final pushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V
    .locals 5

    if-eqz p1, :cond_e

    if-nez p2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p4, :cond_1

    sget p4, Lcom/cloud/tmc/integration/R$anim;->in_from_right:I

    sget v2, Lcom/cloud/tmc/integration/R$anim;->out_from_left:I

    sget v3, Lcom/cloud/tmc/integration/R$anim;->in_from_left:I

    sget v4, Lcom/cloud/tmc/integration/R$anim;->out_from_right:I

    invoke-virtual {v0, p4, v2, v3, v4}, Landroidx/fragment/app/w;->u(IIII)Landroidx/fragment/app/w;

    :cond_1
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p4, :cond_3

    if-eqz p5, :cond_2

    invoke-virtual {p4}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p5

    if-eqz p5, :cond_3

    invoke-interface {p5}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result p5

    if-ne p5, v1, :cond_3

    :cond_2
    invoke-virtual {v0, p4}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->onStop()V

    :cond_3
    :try_start_0
    invoke-virtual {v0, p3, p2, p1}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/w;->g(Ljava/lang/String;)Landroidx/fragment/app/w;

    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    const-string p4, "TmcFragmentManager"

    const-string p5, "push fragment failed!"

    invoke-static {p4, p5, p3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    const/16 p2, 0xa

    if-le p1, p2, :cond_d

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move-object p4, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8

    if-eqz p1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isHomePage()Z

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->isTabPage()Z

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-nez p4, :cond_7

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    :cond_7
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p1

    goto :goto_2

    :cond_9
    move-object p1, p3

    :goto_2
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-interface {p2}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_3
    const/4 p4, -0x1

    if-ge p4, p2, :cond_d

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object p4

    if-eqz p4, :cond_a

    invoke-interface {p4, p2}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object p4

    goto :goto_4

    :cond_a
    move-object p4, p3

    :goto_4
    if-eqz p4, :cond_b

    const-string p5, "prePageId"

    invoke-interface {p4, p5}, Lcom/cloud/tmc/kernel/node/ValueStore;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto :goto_5

    :cond_b
    move-object p5, p3

    :goto_5
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c

    if-eqz p4, :cond_d

    const-string p1, "exitPage"

    invoke-interface {p4, p1, v1}, Lcom/cloud/tmc/kernel/node/ValueStore;->putBooleanValue(Ljava/lang/String;Z)V

    goto :goto_6

    :cond_c
    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->hideAddHomeTips()V

    :cond_e
    :goto_7
    return-void
.end method

.method private static final removeFragment$lambda$14(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 2

    const-string v0, "TmcFragmentManager"

    const-string v1, "$fm"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->L0()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "remove fragment after animation"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "remove fragment after animation failed"

    invoke-static {v0, p1, p0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public attachFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    sget p2, Lcom/cloud/tmc/integration/R$anim;->in_from_right:I

    sget v2, Lcom/cloud/tmc/integration/R$anim;->out_from_left:I

    sget v3, Lcom/cloud/tmc/integration/R$anim;->in_from_left:I

    sget v4, Lcom/cloud/tmc/integration/R$anim;->out_from_right:I

    invoke-virtual {v1, p2, v2, v3, v4}, Landroidx/fragment/app/w;->u(IIII)Landroidx/fragment/app/w;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/w;->h(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {v1}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :goto_1
    const-string p2, "TmcFragmentManager"

    const-string v1, "attach fragment error"

    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public declared-synchronized checkInvalidPage()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "TmcFragmentManager"

    const-string v2, "clear invalid page and remove fragment from fragment manager"

    invoke-static {v1, v2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->g0()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-nez v1, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->firstRemoveFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_5

    monitor-exit p0

    return-void

    :cond_5
    :try_start_4
    invoke-interface {v4}, Lcom/cloud/tmc/kernel/node/Node;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    move v6, v5

    :goto_2
    const/4 v7, -0x1

    if-ge v7, v6, :cond_8

    invoke-interface {v4, v6}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v8

    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_6

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_6
    move-object v8, v1

    :goto_3
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v6, v2

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_8
    move v6, v3

    :goto_4
    if-nez v6, :cond_9

    invoke-direct {p0, v4}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->noticeTmcFragmentUpdate(Lcom/cloud/tmc/integration/structure/App;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    if-ge v7, v5, :cond_f

    invoke-interface {v4, v5}, Lcom/cloud/tmc/integration/structure/App;->getPageByIndex(I)Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v8

    if-eqz v8, :cond_a

    const-class v9, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-interface {v8, v9, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    goto :goto_6

    :cond_a
    move-object v9, v1

    :goto_6
    if-nez v9, :cond_b

    goto :goto_7

    :cond_b
    iput-boolean v2, v9, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    :goto_7
    if-eqz v8, :cond_c

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-interface {v0}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v9

    if-eqz v8, :cond_d

    invoke-interface {v8}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_d
    move-object v8, v1

    :goto_8
    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_f
    :goto_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v5, v3}, Lcom/cloud/tmc/integration/structure/Page;->exit(Z)V

    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getPageContext()Lcom/cloud/tmc/integration/structure/PageContext;

    move-result-object v6

    instance-of v7, v6, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v7, :cond_10

    check-cast v6, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    goto :goto_b

    :cond_10
    move-object v6, v1

    :goto_b
    invoke-interface {v5}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-interface {v7}, Lcom/cloud/tmc/integration/structure/App;->isExited()Z

    move-result v7

    if-ne v7, v2, :cond_11

    move v7, v2

    goto :goto_c

    :cond_11
    move v7, v3

    :goto_c
    if-nez v7, :cond_12

    const-class v7, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    invoke-interface {v5, v7, v2}, Lcom/cloud/tmc/kernel/node/DataNode;->getData(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;

    iget-boolean v5, v5, Lcom/cloud/tmc/integration/structure/Page$AnimStore;->disableExit:Z

    if-nez v5, :cond_12

    move v5, v2

    goto :goto_d

    :cond_12
    move v5, v3

    :goto_d
    invoke-virtual {p0, v6, v5}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z

    goto :goto_a

    :cond_13
    invoke-direct {p0, v4}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->noticeTmcFragmentUpdate(Lcom/cloud/tmc/integration/structure/App;)V

    goto :goto_f

    :cond_14
    const-string v0, "Tmcintegration"

    const-string v1, "isStateSaved is true , cant popBackStack"

    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :goto_e
    :try_start_6
    const-string v1, "TmcFragmentManager"

    const-string v2, "checkInvalidPage is failed!"

    invoke-static {v1, v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_f
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_11

    :cond_15
    :goto_10
    monitor-exit p0

    return-void

    :goto_11
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public createFragment(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 2

    sget-object v0, Lcom/cloud/tmc/integration/utils/AppPrepareUtils;->INSTANCE:Lcom/cloud/tmc/integration/utils/AppPrepareUtils;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppModel()Lcom/cloud/tmc/integration/model/AppModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/integration/utils/BaseAppPrepareUtils;->isShellType(Lcom/cloud/tmc/integration/model/AppModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniShellFragment;-><init>()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getApp()Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/cloud/tmc/integration/structure/App;->getPageType(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniFragment;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniFragment;-><init>()V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;

    invoke-direct {p1}, Lcom/cloud/tmc/miniapp/ui/MiniH5Fragment;-><init>()V

    :goto_1
    return-object p1
.end method

.method public detachFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    sget p2, Lcom/cloud/tmc/integration/R$anim;->in_from_right:I

    sget v2, Lcom/cloud/tmc/integration/R$anim;->out_from_left:I

    sget v3, Lcom/cloud/tmc/integration/R$anim;->in_from_left:I

    sget v4, Lcom/cloud/tmc/integration/R$anim;->out_from_right:I

    invoke-virtual {v1, p2, v2, v3, v4}, Landroidx/fragment/app/w;->u(IIII)Landroidx/fragment/app/w;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroidx/fragment/app/w;->m(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {v1}, Landroidx/fragment/app/w;->j()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :goto_1
    const-string p2, "TmcFragmentManager"

    const-string v1, "detach fragment error"

    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v0
.end method

.method public exitPage(Lcom/cloud/tmc/integration/structure/Page;ZZ)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->exitPage(Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public exitTabCachePage(Lcom/cloud/tmc/integration/structure/Page;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-nez p1, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->L0()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2, v0, v2}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->g0()Z

    goto :goto_1

    :catchall_0
    move-exception p2

    move v1, p1

    goto :goto_2

    :cond_5
    const-string p2, "Tmcintegration"

    const-string v0, "isStateSaved is true , cant popBackStack"

    invoke-static {p2, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_6
    :goto_1
    move v1, p1

    goto :goto_3

    :catchall_1
    move-exception p2

    move v1, v2

    :goto_2
    const-string p1, "TmcFragmentManager"

    const-string v0, "fragment manager error"

    invoke-static {p1, v0, p2}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return v1
.end method

.method public findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->findFragmentForPage(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object p1

    return-object p1
.end method

.method public findFragmentPreForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-object p1

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public findHeaderFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTabFragmentByPath(Ljava/lang/String;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getActivity()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getFragmentSize()I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public getFragments()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "fragmentMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->W0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInnerManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getReadyFragment()Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-object v0
.end method

.method public isRootFragment(Lcom/cloud/tmc/integration/structure/Page;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->findFragmentForPage(Lcom/cloud/tmc/integration/structure/Page;)Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getFragmentSize()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public moveTabPageToCache(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/structure/Page;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tabPages"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/structure/Page;

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {v3}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->getPage()Lcom/cloud/tmc/integration/structure/Page;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->r0()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    const-string v3, "ArrayList<Map.Entry<Stri\u2026ap.size\n                )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v2

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->g1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TmcFragmentManager"

    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method public pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;->setPage(Lcom/cloud/tmc/integration/structure/Page;)V

    :cond_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->pushPage(Ljava/lang/String;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V

    return-void
.end method

.method public pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;ZZ)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->layoutId:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->pushPage(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;IZZ)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    return-void
.end method

.method public removeFragment(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;Z)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ViewUtils;->isLayoutRtl()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    neg-float p2, p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v4, 0x12c

    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v2, Lcom/cloud/tmc/miniapp/ui/q1;

    invoke-direct {v2, v1, p1}, Lcom/cloud/tmc/miniapp/ui/q1;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :goto_1
    const-string p2, "TmcFragmentManager"

    const-string v1, "remove fragment with animation error"

    invoke-static {p2, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_4
    :goto_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/fragment/app/w;->r(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/w;->j()I

    return v3
.end method

.method public resetFragmentToTop(Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 7

    const-string v0, "Tmcintegration"

    if-nez p1, :cond_0

    const-string p1, "resetFragment can not null"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    const-string v3, "ArrayList<Map.Entry<Stri\u2026terator(fragmentMap.size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "iterator.previous()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->T0()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroidx/fragment/app/FragmentManager;->i1(Ljava/lang/String;I)V

    :cond_1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "isStateSaved is true , cant popBackStack"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string p1, "reset fragment is not exist"

    invoke-static {v0, p1}, Lcom/cloud/tmc/kernel/utils/TraceLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public switchTab(Lcom/cloud/tmc/integration/structure/Page;Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;)V
    .locals 2

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->tabCacheFragmentManager:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/Page;->getPageId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->fragmentMap:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->getInnerManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    invoke-virtual {p1}, Landroidx/fragment/app/w;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    const-string v0, "TmcFragmentManager"

    const-string v1, "switch tab fragment failed!"

    invoke-static {v0, v1, p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onStop()V

    :cond_3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->currentFragment:Lcom/cloud/tmc/integration/ui/fragment/TmcFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->onStart()V

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->onResume()V

    goto :goto_4

    :cond_4
    :goto_3
    return-void

    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/TmcFragmentManager;->hideAddHomeTips()V

    return-void
.end method
