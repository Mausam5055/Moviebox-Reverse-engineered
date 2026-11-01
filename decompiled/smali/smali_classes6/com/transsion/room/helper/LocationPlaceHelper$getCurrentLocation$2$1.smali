.class final Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/helper/LocationPlaceHelper;->n(Landroidx/fragment/app/FragmentActivity;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.room.helper.LocationPlaceHelper$getCurrentLocation$2$1"
    f = "LocationPlaceHelper.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $latitude:D

.field final synthetic $longitude:D

.field label:I


# direct methods
.method constructor <init>(DDLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/transsion/room/api/bean/LocationPlace;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$latitude:D

    iput-wide p3, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$longitude:D

    iput-object p5, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;

    iget-wide v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$latitude:D

    iget-wide v3, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$longitude:D

    iget-object v5, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;-><init>(DDLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v3, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    iget-wide v4, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$latitude:D

    iget-wide v6, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$longitude:D

    invoke-static {v3, v4, v5, v6, v7}, Lcom/transsion/room/helper/LocationPlaceHelper;->h(Lcom/transsion/room/helper/LocationPlaceHelper;DD)Landroid/location/Address;

    move-result-object v8

    sget-object p1, Llg/a;->a:Llg/a$a;

    iget-wide v4, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$longitude:D

    iget-wide v6, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$latitude:D

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Location--------------2 success "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", address:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "LocationP"

    invoke-virtual {p1, v4, v1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v4, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$latitude:D

    iget-wide v6, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$longitude:D

    invoke-static/range {v3 .. v8}, Lcom/transsion/room/helper/LocationPlaceHelper;->g(Lcom/transsion/room/helper/LocationPlaceHelper;DDLandroid/location/Address;)Lcom/transsion/room/api/bean/LocationPlace;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v3, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1$1;

    iget-object v4, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p1, v5}, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/transsion/room/api/bean/LocationPlace;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$getCurrentLocation$2$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
