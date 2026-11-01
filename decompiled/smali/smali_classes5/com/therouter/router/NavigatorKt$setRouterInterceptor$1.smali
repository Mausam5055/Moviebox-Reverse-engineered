.class final Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/therouter/router/NavigatorKt;->l(Lbg/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/therouter/router/RouteItem;",
        "Lkotlin/jvm/functions/Function1<",
        "-",
        "Lcom/therouter/router/RouteItem;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "route",
        "Lcom/therouter/router/RouteItem;",
        "callback",
        "Lkotlin/Function1;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $interceptor:Lbg/f;


# direct methods
.method constructor <init>(Lbg/f;)V
    .locals 0

    iput-object p1, p0, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;->$interceptor:Lbg/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/therouter/router/RouteItem;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, p1, p2}, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;->invoke(Lcom/therouter/router/RouteItem;Lkotlin/jvm/functions/Function1;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/therouter/router/RouteItem;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/therouter/router/RouteItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/therouter/router/RouteItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1;->$interceptor:Lbg/f;

    new-instance v1, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1$a;

    invoke-direct {v1, p2}, Lcom/therouter/router/NavigatorKt$setRouterInterceptor$1$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1, v1}, Lbg/f;->a(Lcom/therouter/router/RouteItem;Lbg/b;)V

    return-void
.end method
