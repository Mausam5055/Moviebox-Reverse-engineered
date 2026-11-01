.class public final synthetic Lcom/google/android/libraries/places/internal/zzis;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zziu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zziu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzis;->zza:Lcom/google/android/libraries/places/internal/zziu;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zziu;->zzi(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    move-result-object p1

    return-object p1
.end method
