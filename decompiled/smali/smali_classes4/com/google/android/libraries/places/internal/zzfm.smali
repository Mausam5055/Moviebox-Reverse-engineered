.class public final synthetic Lcom/google/android/libraries/places/internal/zzfm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/api/model/Place;

.field public final synthetic zzb:J

.field public final synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/api/model/Place;JLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfm;->zza:Lcom/google/android/libraries/places/api/model/Place;

    iput-wide p2, p0, Lcom/google/android/libraries/places/internal/zzfm;->zzb:J

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzfm;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 7

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getCurrentOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzfm;->zza:Lcom/google/android/libraries/places/api/model/Place;

    if-eqz v3, :cond_3

    if-nez p1, :cond_0

    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-result-object v0

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/Place;->getCurrentOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v1

    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v2

    :cond_3
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzfm;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-wide v4, p0, Lcom/google/android/libraries/places/internal/zzfm;->zzb:J

    invoke-static {}, Lcom/google/android/libraries/places/api/model/Place;->builder()Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setBusinessStatus(Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v6, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setCurrentOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v6, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v6, p1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setUtcOffsetMinutes(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    invoke-virtual {v6}, Lcom/google/android/libraries/places/api/model/Place$Builder;->build()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/api/model/zzce;->zza(Lcom/google/android/libraries/places/api/model/Place;J)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/IsOpenResponse;->newInstance(Ljava/lang/Boolean;)Lcom/google/android/libraries/places/api/net/IsOpenResponse;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
