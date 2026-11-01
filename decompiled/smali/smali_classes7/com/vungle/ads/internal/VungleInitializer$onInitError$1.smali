.class final Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/VungleError;)V
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
.field final synthetic $exception:Lcom/vungle/ads/VungleError;

.field final synthetic this$0:Lcom/vungle/ads/internal/VungleInitializer;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/VungleError;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    iput-object p2, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;->$exception:Lcom/vungle/ads/VungleError;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    sget-object v0, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    const-string v1, "VungleInitializer"

    const-string v2, "onError"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInitializer;->access$getInitializationCallbackArray$p(Lcom/vungle/ads/internal/VungleInitializer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;->$exception:Lcom/vungle/ads/VungleError;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/ads/m;

    invoke-interface {v2, v1}, Lcom/vungle/ads/m;->onError(Lcom/vungle/ads/VungleError;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer$onInitError$1;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInitializer;->access$getInitializationCallbackArray$p(Lcom/vungle/ads/internal/VungleInitializer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
