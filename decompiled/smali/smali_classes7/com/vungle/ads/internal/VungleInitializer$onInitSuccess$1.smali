.class final Lcom/vungle/ads/internal/VungleInitializer$onInitSuccess$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->onInitSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/VungleInitializer;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/VungleInitializer;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitSuccess$1;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/VungleInitializer$onInitSuccess$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitSuccess$1;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInitializer;->access$getInitializationCallbackArray$p(Lcom/vungle/ads/internal/VungleInitializer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/ads/m;

    invoke-interface {v1}, Lcom/vungle/ads/m;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitSuccess$1;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInitializer;->access$getInitializationCallbackArray$p(Lcom/vungle/ads/internal/VungleInitializer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
