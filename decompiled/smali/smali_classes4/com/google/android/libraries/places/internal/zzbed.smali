.class final Lcom/google/android/libraries/places/internal/zzbed;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/libraries/places/internal/zzbdo;

.field final synthetic zzb:Lcom/google/android/libraries/places/internal/zzbfs;

.field final synthetic zzc:Lcom/google/android/libraries/places/internal/zzbcf;

.field final synthetic zzd:Lcom/google/android/libraries/places/internal/zzbee;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbed;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbed;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbed;->zzc:Lcom/google/android/libraries/places/internal/zzbcf;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbed;->zzd:Lcom/google/android/libraries/places/internal/zzbee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbed;->zzd:Lcom/google/android/libraries/places/internal/zzbee;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbed;->zza:Lcom/google/android/libraries/places/internal/zzbdo;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbed;->zzb:Lcom/google/android/libraries/places/internal/zzbfs;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbed;->zzc:Lcom/google/android/libraries/places/internal/zzbcf;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzbee;->zzb(Lcom/google/android/libraries/places/internal/zzbee;Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbfs;Lcom/google/android/libraries/places/internal/zzbcf;)V

    return-void
.end method
