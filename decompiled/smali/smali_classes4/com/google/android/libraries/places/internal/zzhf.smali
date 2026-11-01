.class public final Lcom/google/android/libraries/places/internal/zzhf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzaxy;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbvt;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbvt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzhf;->zza:Lcom/google/android/libraries/places/internal/zzbvt;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzhf;->zza:Lcom/google/android/libraries/places/internal/zzbvt;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzbvt;->zzb()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzhe;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzhh;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zzhe;-><init>(Lcom/google/android/libraries/places/internal/zzhh;)V

    return-object v1
.end method
