.class public final synthetic Lcom/google/android/libraries/places/internal/zzlb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/libraries/places/internal/zzle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzlb;->zza:Lcom/google/android/libraries/places/internal/zzle;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/google/android/libraries/places/internal/zzlh;->zza:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzlb;->zza:Lcom/google/android/libraries/places/internal/zzle;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzlg;->zza()Lcom/google/android/gms/tasks/CancellationTokenSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationTokenSource;->getToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tasks/Tasks;->forCanceled()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :cond_0
    return-object p1
.end method
