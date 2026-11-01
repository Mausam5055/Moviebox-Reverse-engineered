.class public final Lcom/google/android/libraries/places/internal/zzatp;
.super Lcom/google/android/libraries/places/internal/zzarv;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzatu;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzatu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzarv;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzatp;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/libraries/places/internal/zzasq;Lcom/google/android/libraries/places/internal/zzatf;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/places/internal/zzauf;
        }
    .end annotation

    sget v0, Lcom/google/android/libraries/places/internal/zzatu;->zzd:I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzatp;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzat()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzasr;->zzq(Lcom/google/android/libraries/places/internal/zzasq;)Lcom/google/android/libraries/places/internal/zzasr;

    move-result-object p1

    invoke-interface {v1, v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzavt;->zzf(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/zzavs;Lcom/google/android/libraries/places/internal/zzatf;)V

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/zzavt;->zzd(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzauf; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/libraries/places/internal/zzawm; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/libraries/places/internal/zzauf;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzauf;

    throw p1

    :cond_0
    throw p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/libraries/places/internal/zzauf;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzauf;

    throw p1

    :cond_1
    new-instance p2, Lcom/google/android/libraries/places/internal/zzauf;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzauf;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzauf;->zzh(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzauf;

    throw p2

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzawm;->zza()Lcom/google/android/libraries/places/internal/zzauf;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzauf;->zzh(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzauf;

    throw p1

    :goto_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzauf;->zzl()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/android/libraries/places/internal/zzauf;

    invoke-direct {p2, p1}, Lcom/google/android/libraries/places/internal/zzauf;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzauf;->zzh(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzauf;

    throw p1
.end method
