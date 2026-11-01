.class public final Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/ImpressionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VisibilityRunnable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0081\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;",
        "Ljava/lang/Runnable;",
        "(Lcom/vungle/ads/internal/ImpressionTracker;)V",
        "invisibleViews",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "visibleViews",
        "run",
        "",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final invisibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/vungle/ads/internal/ImpressionTracker;

.field private final visibleViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/ImpressionTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/ImpressionTracker;->access$setVisibilityScheduled$p(Lcom/vungle/ads/internal/ImpressionTracker;Z)V

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/internal/ImpressionTracker$c;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/ImpressionTracker$c;->getMinViewablePercent()I

    move-result v1

    iget-object v3, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-static {v3, v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker;->access$isVisible(Lcom/vungle/ads/internal/ImpressionTracker;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-static {v2}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/ImpressionTracker$c;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/vungle/ads/internal/ImpressionTracker$c;->getImpressionListener()Lcom/vungle/ads/internal/ImpressionTracker$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker$b;->onImpression(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    const-string v3, "view"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->visibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-static {v2}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/internal/ImpressionTracker$c;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/vungle/ads/internal/ImpressionTracker$c;->getImpressionListener()Lcom/vungle/ads/internal/ImpressionTracker$b;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Lcom/vungle/ads/internal/ImpressionTracker$b;->onViewInvisible(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->invisibleViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getTrackedViews$p(Lcom/vungle/ads/internal/ImpressionTracker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$getSetViewTreeObserverSucceed$p(Lcom/vungle/ads/internal/ImpressionTracker;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;->this$0:Lcom/vungle/ads/internal/ImpressionTracker;

    invoke-static {v0}, Lcom/vungle/ads/internal/ImpressionTracker;->access$scheduleVisibilityCheck(Lcom/vungle/ads/internal/ImpressionTracker;)V

    :cond_6
    return-void
.end method
