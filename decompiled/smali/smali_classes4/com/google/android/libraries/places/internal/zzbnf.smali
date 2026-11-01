.class final Lcom/google/android/libraries/places/internal/zzbnf;
.super Lcom/google/android/libraries/places/internal/zzbbk;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbbe;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/zzbbe;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzbbk;-><init>()V

    const-string v0, "result"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnf;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/google/android/libraries/places/internal/zzbnf;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzmn;->zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "result"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbnf;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzbbf;)Lcom/google/android/libraries/places/internal/zzbbe;
    .locals 0

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbnf;->zza:Lcom/google/android/libraries/places/internal/zzbbe;

    return-object p1
.end method
