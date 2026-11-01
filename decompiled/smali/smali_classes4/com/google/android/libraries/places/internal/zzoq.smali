.class final Lcom/google/android/libraries/places/internal/zzoq;
.super Lcom/google/android/libraries/places/internal/zznx;


# instance fields
.field private final transient zza:[Ljava/lang/Object;

.field private final transient zzb:I

.field private final transient zzc:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zznx;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzoq;->zza:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzoq;->zzb:I

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzoq;->zzc:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzoq;->zzc:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzmt;->zza(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzoq;->zza:[Ljava/lang/Object;

    add-int/2addr p1, p1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzoq;->zzb:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzoq;->zzc:I

    return v0
.end method

.method final zzf()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
