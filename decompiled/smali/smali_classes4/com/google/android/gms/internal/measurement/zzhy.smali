.class public final Lcom/google/android/gms/internal/measurement/zzhy;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/zzhx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BuildInfo must be non-null"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzhx;->zza()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "flagName must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzhy;->zza:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zza:Lcom/google/common/base/q;

    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
