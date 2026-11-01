.class public final Lcom/google/android/libraries/places/internal/zzes;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzjr;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzkg;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzkb;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzjs;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzkg;Lcom/google/android/libraries/places/internal/zzkb;Lcom/google/android/libraries/places/internal/zzjs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzkg;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    return-void
.end method

.method static final zzp(Lcom/google/android/gms/tasks/Task;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf

    if-eq p0, v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method private final zzq()Lcom/google/android/libraries/places/internal/zzahs;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzjs;->zzb()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzahu;->zza()Lcom/google/android/libraries/places/internal/zzahs;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzahs;->zze(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzahs;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzahs;

    :cond_0
    return-object v2
.end method

.method private final zzr(Lcom/google/android/libraries/places/internal/zzagi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzkg;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkh;->zza(Lcom/google/android/libraries/places/internal/zzagi;)Lcom/google/android/libraries/places/internal/zzsm;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzkg;->zza(Lcom/google/android/libraries/places/internal/zzsm;)V

    return-void
.end method

.method private final zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {v0, p2, p3}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    const/16 p3, 0x10

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zze(Lcom/google/android/libraries/places/internal/zzaez;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;I)V
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzahm;->zza()Lcom/google/android/libraries/places/internal/zzahk;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzahk;->zza(I)Lcom/google/android/libraries/places/internal/zzahk;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzahm;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzg(Lcom/google/android/libraries/places/internal/zzahm;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/tasks/Task;JJI)V
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaez;->zza()Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object p6

    const/16 v0, 0xf

    invoke-virtual {p6, v0}, Lcom/google/android/libraries/places/internal/zzaeu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzes;->zzp(Lcom/google/android/gms/tasks/Task;)I

    move-result p1

    invoke-virtual {p6, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzf(I)Lcom/google/android/libraries/places/internal/zzaeu;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {p6, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzd(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaez;

    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzes;->zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V

    return-void
.end method

.method public final zzc(Lcom/google/android/libraries/places/api/net/FetchResolvedPhotoUriRequest;I)V
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzahm;->zza()Lcom/google/android/libraries/places/internal/zzahk;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzahk;->zza(I)Lcom/google/android/libraries/places/internal/zzahk;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzahm;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzg(Lcom/google/android/libraries/places/internal/zzahm;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/tasks/Task;JJI)V
    .locals 1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaez;->zza()Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object p6

    const/16 v0, 0xf

    invoke-virtual {p6, v0}, Lcom/google/android/libraries/places/internal/zzaeu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzes;->zzp(Lcom/google/android/gms/tasks/Task;)I

    move-result p1

    invoke-virtual {p6, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzf(I)Lcom/google/android/libraries/places/internal/zzaeu;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {p6, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzd(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {p6}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaez;

    const/4 p2, 0x3

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzes;->zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V

    return-void
.end method

.method public final zze(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJI)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzagw;->zza()Lcom/google/android/libraries/places/internal/zzagu;

    move-result-object p7

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaho;->zza()Lcom/google/android/libraries/places/internal/zzahn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzjd;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzahn;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzahn;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaho;

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzagu;->zzb(Lcom/google/android/libraries/places/internal/zzaho;)Lcom/google/android/libraries/places/internal/zzagu;

    sub-long/2addr p5, p3

    long-to-int p1, p5

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzagu;->zza(I)Lcom/google/android/libraries/places/internal/zzagu;

    const/4 p1, 0x2

    const/4 p3, 0x1

    if-eq p3, p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    invoke-virtual {p7, p2}, Lcom/google/android/libraries/places/internal/zzagu;->zzc(I)Lcom/google/android/libraries/places/internal/zzagu;

    invoke-virtual {p7}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzagw;

    iget-object p4, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {p4, p1, p3}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p1

    const/4 p3, 0x6

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzagb;->zzd(Lcom/google/android/libraries/places/internal/zzagw;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/tasks/Task;JJI)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    invoke-virtual {p6}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaeb;->zza()Lcom/google/android/libraries/places/internal/zzaea;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/android/libraries/places/internal/zzaea;->zza(I)Lcom/google/android/libraries/places/internal/zzaea;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p6

    check-cast p6, Lcom/google/android/libraries/places/internal/zzaeb;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaez;->zza()Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {v0, p6}, Lcom/google/android/libraries/places/internal/zzaeu;->zza(Lcom/google/android/libraries/places/internal/zzaeb;)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzes;->zzp(Lcom/google/android/gms/tasks/Task;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzf(I)Lcom/google/android/libraries/places/internal/zzaeu;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzd(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaez;

    const/4 p2, 0x2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzes;->zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V

    return-void
.end method

.method public final zzg(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;I)V
    .locals 6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaid;->zza()Lcom/google/android/libraries/places/internal/zzaib;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isOpenNow()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaib;->zze(Z)Lcom/google/android/libraries/places/internal/zzaib;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaho;->zza()Lcom/google/android/libraries/places/internal/zzahn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzhg;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzahn;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzahn;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaho;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaib;->zzf(Lcom/google/android/libraries/places/internal/zzaho;)Lcom/google/android/libraries/places/internal/zzaib;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;->DISTANCE:Lcom/google/android/libraries/places/api/net/SearchByTextRequest$RankPreference;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaib;->zzh(I)Lcom/google/android/libraries/places/internal/zzaib;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->isStrictTypeFiltering()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaib;->zzg(Z)Lcom/google/android/libraries/places/internal/zzaib;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getIncludedType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaib;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzaib;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMinRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/libraries/places/internal/zzaib;->zzd(D)Lcom/google/android/libraries/places/internal/zzaib;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaib;->zzc(I)Lcom/google/android/libraries/places/internal/zzaib;

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getPriceLevels()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaib;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaib;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzes;->zzq()Lcom/google/android/libraries/places/internal/zzahs;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzahs;->zzh(I)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzaid;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzahs;->zzf(Lcom/google/android/libraries/places/internal/zzaid;)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzahu;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzh(Lcom/google/android/libraries/places/internal/zzahu;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/libraries/places/api/net/SearchByTextRequest;Lcom/google/android/gms/tasks/Task;JJI)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p7

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/libraries/places/api/net/SearchByTextResponse;

    invoke-virtual {p7}, Lcom/google/android/libraries/places/api/net/SearchByTextResponse;->getPlaces()Ljava/util/List;

    move-result-object p7

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p7

    goto :goto_0

    :cond_0
    move p7, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchByTextRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaiz;->zza()Lcom/google/android/libraries/places/internal/zzaiy;

    move-result-object v1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaiy;->zza(I)Lcom/google/android/libraries/places/internal/zzaiy;

    invoke-virtual {v1, p7}, Lcom/google/android/libraries/places/internal/zzaiy;->zzb(I)Lcom/google/android/libraries/places/internal/zzaiy;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaiz;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaez;->zza()Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object p7

    const/16 v0, 0xa

    invoke-virtual {p7, v0}, Lcom/google/android/libraries/places/internal/zzaeu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zze(Lcom/google/android/libraries/places/internal/zzaiz;)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzes;->zzp(Lcom/google/android/gms/tasks/Task;)I

    move-result p1

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzf(I)Lcom/google/android/libraries/places/internal/zzaeu;

    sub-long/2addr p5, p3

    long-to-int p1, p5

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzd(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {p7}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaez;

    const/4 p2, 0x3

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzes;->zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V

    return-void
.end method

.method public final zzi(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;I)V
    .locals 5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaig;->zza()Lcom/google/android/libraries/places/internal/zzaie;

    move-result-object p2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaho;->zza()Lcom/google/android/libraries/places/internal/zzahn;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzhg;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzahn;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzahn;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaho;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaie;->zzf(Lcom/google/android/libraries/places/internal/zzaho;)Lcom/google/android/libraries/places/internal/zzaie;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getRankPreference()Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;->DISTANCE:Lcom/google/android/libraries/places/api/net/SearchNearbyRequest$RankPreference;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v3, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaie;->zzg(I)Lcom/google/android/libraries/places/internal/zzaie;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getIncludedTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaie;->zzd(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaie;

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getExcludedTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaie;->zzb(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaie;

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getIncludedPrimaryTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaie;->zzc(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaie;

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getExcludedPrimaryTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzaie;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzaie;

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzaie;->zze(I)Lcom/google/android/libraries/places/internal/zzaie;

    :cond_6
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzes;->zzq()Lcom/google/android/libraries/places/internal/zzahs;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/libraries/places/internal/zzahs;->zzh(I)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/internal/zzaig;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzahs;->zzg(Lcom/google/android/libraries/places/internal/zzaig;)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzahu;

    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzh(Lcom/google/android/libraries/places/internal/zzahu;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;Lcom/google/android/gms/tasks/Task;JJI)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p7

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;

    invoke-virtual {p7}, Lcom/google/android/libraries/places/api/net/SearchNearbyResponse;->getPlaces()Ljava/util/List;

    move-result-object p7

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result p7

    goto :goto_0

    :cond_0
    move p7, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/SearchNearbyRequest;->getMaxResultCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaiz;->zza()Lcom/google/android/libraries/places/internal/zzaiy;

    move-result-object v1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaiy;->zza(I)Lcom/google/android/libraries/places/internal/zzaiy;

    invoke-virtual {v1, p7}, Lcom/google/android/libraries/places/internal/zzaiy;->zzb(I)Lcom/google/android/libraries/places/internal/zzaiy;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaiz;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaez;->zza()Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object p7

    const/16 v0, 0xa

    invoke-virtual {p7, v0}, Lcom/google/android/libraries/places/internal/zzaeu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zze(Lcom/google/android/libraries/places/internal/zzaiz;)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzes;->zzp(Lcom/google/android/gms/tasks/Task;)I

    move-result p1

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzf(I)Lcom/google/android/libraries/places/internal/zzaeu;

    sub-long/2addr p5, p3

    long-to-int p1, p5

    invoke-virtual {p7, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzd(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {p7}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaez;

    const/4 p2, 0x3

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzes;->zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V

    return-void
.end method

.method public final zzk(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V
    .locals 4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzagp;->zza()Lcom/google/android/libraries/places/internal/zzago;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzago;->zza(I)Lcom/google/android/libraries/places/internal/zzago;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaho;->zza()Lcom/google/android/libraries/places/internal/zzahn;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/zzjd;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzahn;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzahn;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzaho;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzago;->zzb(Lcom/google/android/libraries/places/internal/zzaho;)Lcom/google/android/libraries/places/internal/zzago;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzagp;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzes;->zzq()Lcom/google/android/libraries/places/internal/zzahs;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzahs;->zzh(I)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzahs;->zzc(Lcom/google/android/libraries/places/internal/zzagp;)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzahu;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {v2, p2, p3}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzagb;->zzh(Lcom/google/android/libraries/places/internal/zzahu;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzj(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/tasks/Task;JJII)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaen;->zza()Lcom/google/android/libraries/places/internal/zzaem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzaem;->zza(I)Lcom/google/android/libraries/places/internal/zzaem;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaem;->zzb(I)Lcom/google/android/libraries/places/internal/zzaem;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaen;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaez;->zza()Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzaeu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaeu;->zzc(Lcom/google/android/libraries/places/internal/zzaen;)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzes;->zzp(Lcom/google/android/gms/tasks/Task;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzf(I)Lcom/google/android/libraries/places/internal/zzaeu;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzd(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaez;

    invoke-direct {p0, p1, p6, p7}, Lcom/google/android/libraries/places/internal/zzes;->zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V

    return-void
.end method

.method public final zzm(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;II)V
    .locals 5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzafe;->zza()Lcom/google/android/libraries/places/internal/zzafd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypesFilter()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getInputOffset()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/places/internal/zzafd;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzafd;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzje;->zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafd;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzafd;

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafd;->zzb(I)Lcom/google/android/libraries/places/internal/zzafd;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzafe;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzafq;->zza()Lcom/google/android/libraries/places/internal/zzafp;

    move-result-object v1

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzafp;->zza(Lcom/google/android/libraries/places/internal/zzafe;)Lcom/google/android/libraries/places/internal/zzafp;

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzafq;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzes;->zzq()Lcom/google/android/libraries/places/internal/zzahs;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzahs;->zzh(I)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzahs;->zza(Lcom/google/android/libraries/places/internal/zzafq;)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzahu;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {v1, p2, p3}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzagb;->zzh(Lcom/google/android/libraries/places/internal/zzahu;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzj(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/tasks/Task;JJII)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaei;->zza()Lcom/google/android/libraries/places/internal/zzaeh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaeh;->zza(I)Lcom/google/android/libraries/places/internal/zzaeh;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzaei;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaez;->zza()Lcom/google/android/libraries/places/internal/zzaeu;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzaeu;->zzg(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzaeu;->zzb(Lcom/google/android/libraries/places/internal/zzaei;)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzes;->zzp(Lcom/google/android/gms/tasks/Task;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzf(I)Lcom/google/android/libraries/places/internal/zzaeu;

    sub-long/2addr p4, p2

    long-to-int p1, p4

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzaeu;->zzd(I)Lcom/google/android/libraries/places/internal/zzaeu;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaez;

    invoke-direct {p0, p1, p6, p7}, Lcom/google/android/libraries/places/internal/zzes;->zzs(Lcom/google/android/libraries/places/internal/zzaez;II)V

    return-void
.end method

.method public final zzo(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;II)V
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzagp;->zza()Lcom/google/android/libraries/places/internal/zzago;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/google/android/libraries/places/internal/zzago;->zza(I)Lcom/google/android/libraries/places/internal/zzago;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaho;->zza()Lcom/google/android/libraries/places/internal/zzahn;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzjd;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzahn;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzahn;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzaho;

    invoke-virtual {p3, p1}, Lcom/google/android/libraries/places/internal/zzago;->zzb(Lcom/google/android/libraries/places/internal/zzaho;)Lcom/google/android/libraries/places/internal/zzago;

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagp;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzes;->zzq()Lcom/google/android/libraries/places/internal/zzahs;

    move-result-object p3

    const/4 v1, 0x5

    invoke-virtual {p3, v1}, Lcom/google/android/libraries/places/internal/zzahs;->zzh(I)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {p3, p1}, Lcom/google/android/libraries/places/internal/zzahs;->zzd(Lcom/google/android/libraries/places/internal/zzagp;)Lcom/google/android/libraries/places/internal/zzahs;

    invoke-virtual {p3}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzahu;

    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {p3, p2, v0}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzh(Lcom/google/android/libraries/places/internal/zzahu;)Lcom/google/android/libraries/places/internal/zzagb;

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzjs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzjs;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zzr(Lcom/google/android/libraries/places/internal/zzagi;)V

    return-void
.end method
