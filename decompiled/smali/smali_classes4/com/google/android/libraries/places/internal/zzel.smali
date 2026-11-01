.class public final Lcom/google/android/libraries/places/internal/zzel;
.super Ljava/lang/Object;


# static fields
.field private static final zza:J


# instance fields
.field private final zzb:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzjj;

.field private final zzd:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzel;->zza:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/zzjj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzel;->zzd:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzel;->zzb:Lcom/google/android/gms/location/FusedLocationProviderClient;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzel;->zzc:Lcom/google/android/libraries/places/internal/zzjj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
    .locals 5

    new-instance v0, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;-><init>()V

    sget-wide v1, Lcom/google/android/libraries/places/internal/zzel;->zza:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setDurationMillis(J)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzel;->zzd:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v4}, Landroidx/core/content/b;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    goto :goto_0

    :cond_0
    const/16 v3, 0x66

    invoke-virtual {v0, v3}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->setPriority(I)Lcom/google/android/gms/location/CurrentLocationRequest$Builder;

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzel;->zzc:Lcom/google/android/libraries/places/internal/zzjj;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzel;->zzb:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {v0}, Lcom/google/android/gms/location/CurrentLocationRequest$Builder;->build()Lcom/google/android/gms/location/CurrentLocationRequest;

    move-result-object v0

    invoke-interface {v4, v0, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->getCurrentLocation(Lcom/google/android/gms/location/CurrentLocationRequest;Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    move-object p1, v4

    :goto_1
    const-string v4, "Location timeout."

    invoke-virtual {v3, p1, v1, v2, v4}, Lcom/google/android/libraries/places/internal/zzjj;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;JLjava/lang/String;)Z

    new-instance v1, Lcom/google/android/libraries/places/internal/zzjh;

    invoke-direct {v1, v3, p1}, Lcom/google/android/libraries/places/internal/zzjh;-><init>(Lcom/google/android/libraries/places/internal/zzjj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzji;

    invoke-direct {v1, v3, p1}, Lcom/google/android/libraries/places/internal/zzji;-><init>(Lcom/google/android/libraries/places/internal/zzjj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzek;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzek;-><init>(Lcom/google/android/libraries/places/internal/zzel;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
