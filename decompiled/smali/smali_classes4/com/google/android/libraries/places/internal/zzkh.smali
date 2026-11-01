.class public final Lcom/google/android/libraries/places/internal/zzkh;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Lcom/google/android/libraries/places/internal/zzagi;)Lcom/google/android/libraries/places/internal/zzsm;
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzsm;->zza()Lcom/google/android/libraries/places/internal/zzsk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzsk;->zzb(I)Lcom/google/android/libraries/places/internal/zzsk;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzsk;->zza(Lcom/google/android/libraries/places/internal/zzagi;)Lcom/google/android/libraries/places/internal/zzsk;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzsm;

    return-object p0
.end method

.method public static zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzkb;->zzc()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzagi;->zza()Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object v2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzst;->zza()Lcom/google/android/libraries/places/internal/zzso;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzkb;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzso;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzso;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzkb;->zza()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/google/android/libraries/places/internal/zzso;->zzb(I)Lcom/google/android/libraries/places/internal/zzso;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/zzst;

    invoke-virtual {v2, p0}, Lcom/google/android/libraries/places/internal/zzagb;->zzb(Lcom/google/android/libraries/places/internal/zzst;)Lcom/google/android/libraries/places/internal/zzagb;

    if-eq p1, v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/zzagb;->zzf(Z)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzl(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/zzagb;->zzm(I)Lcom/google/android/libraries/places/internal/zzagb;

    const/4 p0, 0x3

    invoke-virtual {v2, p0}, Lcom/google/android/libraries/places/internal/zzagb;->zzk(I)Lcom/google/android/libraries/places/internal/zzagb;

    const-string p0, "3.5.0"

    invoke-virtual {v2, p0}, Lcom/google/android/libraries/places/internal/zzagb;->zzi(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzagb;

    return-object v2
.end method
