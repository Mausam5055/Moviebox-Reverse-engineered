.class public final Lcom/google/android/libraries/places/internal/zzqq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzqr;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzpu;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzpv;->zzb:Lcom/google/android/libraries/places/internal/zzpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzqq;->zza:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzqq;->zzb:Lcom/google/android/libraries/places/internal/zzpu;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzpw;
    .locals 8

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzqq;->zzb:Lcom/google/android/libraries/places/internal/zzpu;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzqz;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzqq;->zza:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/libraries/places/internal/zzqz;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzpu;ZZ)V

    return-object v7
.end method
