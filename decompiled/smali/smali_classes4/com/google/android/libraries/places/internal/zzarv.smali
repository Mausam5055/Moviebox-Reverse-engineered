.class public abstract Lcom/google/android/libraries/places/internal/zzarv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavn;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzatf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzatf;->zza:Lcom/google/android/libraries/places/internal/zzatf;

    sput-object v0, Lcom/google/android/libraries/places/internal/zzarv;->zza:Lcom/google/android/libraries/places/internal/zzatf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzasq;Lcom/google/android/libraries/places/internal/zzatf;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/zzauf;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavn;->zzb(Lcom/google/android/libraries/places/internal/zzasq;Lcom/google/android/libraries/places/internal/zzatf;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzavg;->zzaM()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/libraries/places/internal/zzawm;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzawm;-><init>(Lcom/google/android/libraries/places/internal/zzavf;)V

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzawm;->zza()Lcom/google/android/libraries/places/internal/zzauf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzauf;->zzh(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzauf;

    throw p2

    :cond_1
    :goto_0
    return-object p1
.end method
