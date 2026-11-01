.class public final Lcom/google/android/gms/internal/measurement/zzow;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/q;"
    }
.end annotation


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzow;


# instance fields
.field private final zzb:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzow;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzow;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzow;->zza:Lcom/google/android/gms/internal/measurement/zzow;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoy;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->b(Ljava/lang/Object;)Lcom/google/common/base/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzow;->zzb:Lcom/google/common/base/q;

    return-void
.end method

.method public static zza()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzow;->zza:Lcom/google/android/gms/internal/measurement/zzow;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzow;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoz;->zza()Z

    move-result v0

    return v0
.end method

.method public static zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzow;->zza:Lcom/google/android/gms/internal/measurement/zzow;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzow;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoz;->zzb()Z

    move-result v0

    return v0
.end method

.method public static zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzow;->zza:Lcom/google/android/gms/internal/measurement/zzow;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzow;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzoz;->zzc()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzow;->zzb:Lcom/google/common/base/q;

    invoke-interface {v0}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzoz;

    return-object v0
.end method
