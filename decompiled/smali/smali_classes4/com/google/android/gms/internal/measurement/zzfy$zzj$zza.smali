.class public final Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;
.super Lcom/google/android/gms/internal/measurement/zzjt$zzb;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfy$zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzjt$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzj;",
        "Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzle;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzc()Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzjt;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzge;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzfy$zzk$zza;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzai()Lcom/google/android/gms/internal/measurement/zzlc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;Lcom/google/android/gms/internal/measurement/zzfy$zzk;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzk;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza(Lcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zza(I)Lcom/google/android/gms/internal/measurement/zzfy$zzk;

    move-result-object p1

    return-object p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzj;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfy$zzj$zza;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zzak()V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzb(Lcom/google/android/gms/internal/measurement/zzfy$zzj;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzfy$zzk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjt$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzjt;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfy$zzj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfy$zzj;->zzf()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
