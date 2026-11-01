.class final Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;->a:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/publish/api/bean/LocationPlaceBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;->a:Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;

    invoke-static {p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;->e(Lcom/transsion/publish/viewmodel/LocationPlaceViewModel;)Landroidx/lifecycle/b0;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/publish/api/bean/LocationPlaceBean;->getItems()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/publish/api/bean/LocationPlaceBean;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/publish/viewmodel/LocationPlaceViewModel$getLocationPlaceList$1$a;->a(Lcom/transsion/publish/api/bean/LocationPlaceBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
