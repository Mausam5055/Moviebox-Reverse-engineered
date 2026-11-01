.class public final Lcom/cloud/tmc/miniapp/debug/DebugManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/tmc/kernel/debug/IDebugManager;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field public final OooO00o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/cloud/tmc/kernel/debug/DebugCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/debug/DebugManager;->OooO00o:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/Object;Lcom/cloud/tmc/kernel/debug/DebugCallback;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/debug/DebugManager;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public notifyObserver()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/debug/DebugManager;->OooO00o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "\u5f53\u524d\u975e\u4e3b\u9875\uff0c\u4e0d\u652fchrome/inspect \u5237\u65b0"

    invoke-static {v0}, Lcom/cloud/tmc/miniapp/widget/OooO;->OooO00o(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/debug/DebugManager;->OooO00o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/kernel/debug/DebugCallback;

    invoke-interface {v1}, Lcom/cloud/tmc/kernel/debug/DebugCallback;->debugRefresh()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeObserver(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/debug/DebugManager;->OooO00o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
