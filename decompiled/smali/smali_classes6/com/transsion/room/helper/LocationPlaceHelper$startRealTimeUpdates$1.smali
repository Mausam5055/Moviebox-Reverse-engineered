.class public final Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;
.super Lcom/google/android/gms/location/LocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/room/helper/LocationPlaceHelper;->y(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/FusedLocationProviderClient;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p2, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/google/android/gms/location/LocationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationAvailability(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 3

    const-string v0, "availability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationAvailability;->isLocationAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string v0, "Location services unavailable"

    const/4 v1, 0x1

    const-string v2, "LocationP"

    invoke-virtual {p1, v2, v0, v1}, Llg/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 13

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iget-object v6, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->b:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/transsion/room/helper/LocationPlaceHelper;->j(I)V

    sget-object v1, Lcom/transsion/room/helper/LocationPlaceHelper;->a:Lcom/transsion/room/helper/LocationPlaceHelper;

    invoke-static {v1, v0}, Lcom/transsion/room/helper/LocationPlaceHelper;->k(Lcom/transsion/room/helper/LocationPlaceHelper;Lcom/google/android/gms/location/FusedLocationProviderClient;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    sget-object p1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location--update--------------1 success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v7, "LocationP"

    invoke-virtual {p1, v7, v0, v1}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    new-instance v10, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1;

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v7}, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$1$1;-><init>(DDLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$2$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, v0}, Lcom/transsion/room/helper/LocationPlaceHelper$startRealTimeUpdates$1$onLocationResult$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method
