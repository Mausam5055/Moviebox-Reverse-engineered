.class final Lcom/google/android/gms/internal/play_billing/zzad;
.super Lcom/google/android/gms/internal/play_billing/zzz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/play_billing/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzaf;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzz;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzad;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    return-void
.end method


# virtual methods
.method protected final zza(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzad;->zza:Lcom/google/android/gms/internal/play_billing/zzaf;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
