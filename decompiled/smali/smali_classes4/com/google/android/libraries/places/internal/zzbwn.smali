.class public final Lcom/google/android/libraries/places/internal/zzbwn;
.super Ljava/lang/Object;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final zza:Lcom/google/android/libraries/places/internal/zzbwm;


# instance fields
.field public final zzb:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public zzc:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public zzd:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public zze:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final zzf:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public zzg:Lcom/google/android/libraries/places/internal/zzbwn;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public zzh:Lcom/google/android/libraries/places/internal/zzbwn;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzbwm;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbwn;->zza:Lcom/google/android/libraries/places/internal/zzbwm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 0

    const-string p5, "data"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iput p2, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iput-boolean p4, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v3, v2, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object v0, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzg:Lcom/google/android/libraries/places/internal/zzbwn;

    return-object p1
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbwn;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v3, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzbwn;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final zzd(I)Lcom/google/android/libraries/places/internal/zzbwn;
    .locals 8

    iget v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzbwn;->zzc()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbwo;->zza()Lcom/google/android/libraries/places/internal/zzbwn;

    move-result-object v0

    iget-object v2, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v4, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int v5, v4, p1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->o([B[BIIIILjava/lang/Object;)[B

    :goto_0
    iget v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzh:Lcom/google/android/libraries/places/internal/zzbwn;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzbwn;->zzb(Lcom/google/android/libraries/places/internal/zzbwn;)Lcom/google/android/libraries/places/internal/zzbwn;

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byteCount out of range"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zze(Lcom/google/android/libraries/places/internal/zzbwn;I)V
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzf:Z

    if-eqz v0, :cond_3

    iget v5, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int v0, v5, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    iget-boolean v2, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zze:Z

    if-nez v2, :cond_1

    iget v4, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int/2addr v0, v4

    if-gt v0, v1, :cond_0

    iget-object v2, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v2

    invoke-static/range {v1 .. v7}, Lkotlin/collections/ArraysKt;->o([B[BIIIILjava/lang/Object;)[B

    iget v0, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget v1, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    sub-int v5, v0, v1

    iput v5, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzb:[B

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int v3, v2, p2

    invoke-static {v0, v1, v5, v2, v3}, Lkotlin/collections/ArraysKt;->j([B[BIII)[B

    iget v0, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/google/android/libraries/places/internal/zzbwn;->zzd:I

    iget p1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzbwn;->zzc:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
