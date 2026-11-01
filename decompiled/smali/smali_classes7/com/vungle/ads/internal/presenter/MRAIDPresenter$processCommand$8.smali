.class final Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->processCommand(Ljava/lang/String;Lkotlinx/serialization/json/JsonObject;)Z
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
.field final synthetic $exception:Lcom/vungle/ads/MraidTemplateError;

.field final synthetic $isFatal:Z

.field final synthetic $message:Ljava/lang/String;

.field final synthetic this$0:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/MraidTemplateError;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->this$0:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    iput-object p2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->$exception:Lcom/vungle/ads/MraidTemplateError;

    iput-boolean p3, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->$isFatal:Z

    iput-object p4, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->$message:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->this$0:Lcom/vungle/ads/internal/presenter/MRAIDPresenter;

    iget-object v1, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->$exception:Lcom/vungle/ads/MraidTemplateError;

    iget-boolean v2, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->$isFatal:Z

    iget-object v3, p0, Lcom/vungle/ads/internal/presenter/MRAIDPresenter$processCommand$8;->$message:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/ads/internal/presenter/MRAIDPresenter;->access$handleWebViewException(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;Lcom/vungle/ads/VungleError;ZLjava/lang/String;)V

    return-void
.end method
