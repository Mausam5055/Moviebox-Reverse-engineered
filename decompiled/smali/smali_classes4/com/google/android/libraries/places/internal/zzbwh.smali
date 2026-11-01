.class public final Lcom/google/android/libraries/places/internal/zzbwh;
.super Ljava/lang/Object;


# direct methods
.method public static final zza(Lcom/google/android/libraries/places/internal/zzbwq;)Lcom/google/android/libraries/places/internal/zzbwc;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwk;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwk;-><init>(Lcom/google/android/libraries/places/internal/zzbwq;)V

    return-object v0
.end method

.method public static final zzb(Lcom/google/android/libraries/places/internal/zzbws;)Lcom/google/android/libraries/places/internal/zzbwd;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwl;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwl;-><init>(Lcom/google/android/libraries/places/internal/zzbws;)V

    return-object v0
.end method

.method public static final zzc(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbwq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/google/android/libraries/places/internal/zzbwi;->zza:I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwr;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwr;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbwj;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbwj;-><init>(Ljava/io/OutputStream;Lcom/google/android/libraries/places/internal/zzbwv;)V

    const-string p0, "sink"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/libraries/places/internal/zzbvx;

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbvx;-><init>(Lcom/google/android/libraries/places/internal/zzbvz;Lcom/google/android/libraries/places/internal/zzbwq;)V

    return-object p0
.end method

.method public static final zzd(Ljava/net/Socket;)Lcom/google/android/libraries/places/internal/zzbws;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Lcom/google/android/libraries/places/internal/zzbwi;->zza:I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwr;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/zzbwr;-><init>(Ljava/net/Socket;)V

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbwg;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzbwg;-><init>(Ljava/io/InputStream;Lcom/google/android/libraries/places/internal/zzbwv;)V

    const-string p0, "source"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/libraries/places/internal/zzbvy;

    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/places/internal/zzbvy;-><init>(Lcom/google/android/libraries/places/internal/zzbvz;Lcom/google/android/libraries/places/internal/zzbws;)V

    return-object p0
.end method
