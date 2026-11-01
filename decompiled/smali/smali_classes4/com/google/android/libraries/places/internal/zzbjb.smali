.class public final enum Lcom/google/android/libraries/places/internal/zzbjb;
.super Ljava/lang/Enum;


# static fields
.field public static final enum zza:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzb:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzc:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzd:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zze:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzf:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzg:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzh:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzi:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzj:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzk:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzl:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzm:Lcom/google/android/libraries/places/internal/zzbjb;

.field public static final enum zzn:Lcom/google/android/libraries/places/internal/zzbjb;

.field private static final zzo:[Lcom/google/android/libraries/places/internal/zzbjb;

.field private static final synthetic zzp:[Lcom/google/android/libraries/places/internal/zzbjb;


# instance fields
.field private final zzq:I

.field private final zzr:Lcom/google/android/libraries/places/internal/zzbdo;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbjb;

    sget-object v1, Lcom/google/android/libraries/places/internal/zzbdo;->zzp:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zza:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v2, Lcom/google/android/libraries/places/internal/zzbjb;

    sget-object v4, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v5, "PROTOCOL_ERROR"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v6, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzb:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v5, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v7, "INTERNAL_ERROR"

    const/4 v8, 0x2

    invoke-direct {v5, v7, v8, v8, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v5, Lcom/google/android/libraries/places/internal/zzbjb;->zzc:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v7, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v10, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v7, Lcom/google/android/libraries/places/internal/zzbjb;->zzd:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v9, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v11, "SETTINGS_TIMEOUT"

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12, v12, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v9, Lcom/google/android/libraries/places/internal/zzbjb;->zze:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v11, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v13, "STREAM_CLOSED"

    const/4 v14, 0x5

    invoke-direct {v11, v13, v14, v14, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v11, Lcom/google/android/libraries/places/internal/zzbjb;->zzf:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v13, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v15, "FRAME_SIZE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v13, v15, v14, v14, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v13, Lcom/google/android/libraries/places/internal/zzbjb;->zzg:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v15, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v14, "REFUSED_STREAM"

    const/4 v12, 0x7

    invoke-direct {v15, v14, v12, v12, v1}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v15, Lcom/google/android/libraries/places/internal/zzbjb;->zzh:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbjb;

    const/16 v14, 0x8

    sget-object v12, Lcom/google/android/libraries/places/internal/zzbdo;->zzb:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v10, "CANCEL"

    invoke-direct {v1, v10, v14, v14, v12}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v1, Lcom/google/android/libraries/places/internal/zzbjb;->zzi:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v10, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v12, "COMPRESSION_ERROR"

    const/16 v14, 0x9

    invoke-direct {v10, v12, v14, v14, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v10, Lcom/google/android/libraries/places/internal/zzbjb;->zzj:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v12, Lcom/google/android/libraries/places/internal/zzbjb;

    const-string v14, "CONNECT_ERROR"

    const/16 v8, 0xa

    invoke-direct {v12, v14, v8, v8, v4}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v12, Lcom/google/android/libraries/places/internal/zzbjb;->zzk:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v4, Lcom/google/android/libraries/places/internal/zzbjb;

    sget-object v14, Lcom/google/android/libraries/places/internal/zzbdo;->zzj:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v8, "Bandwidth exhausted"

    invoke-virtual {v14, v8}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v8

    const-string v14, "ENHANCE_YOUR_CALM"

    const/16 v6, 0xb

    invoke-direct {v4, v14, v6, v6, v8}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v4, Lcom/google/android/libraries/places/internal/zzbjb;->zzl:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v8, Lcom/google/android/libraries/places/internal/zzbjb;

    sget-object v14, Lcom/google/android/libraries/places/internal/zzbdo;->zzh:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v6, "Permission denied as protocol is not secure enough to call"

    invoke-virtual {v14, v6}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v6

    const-string v14, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    invoke-direct {v8, v14, v3, v3, v6}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v8, Lcom/google/android/libraries/places/internal/zzbjb;->zzm:Lcom/google/android/libraries/places/internal/zzbjb;

    new-instance v6, Lcom/google/android/libraries/places/internal/zzbjb;

    const/16 v14, 0xd

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbdo;->zzc:Lcom/google/android/libraries/places/internal/zzbdo;

    move-object/from16 v16, v8

    const-string v8, "HTTP_1_1_REQUIRED"

    invoke-direct {v6, v8, v14, v14, v3}, Lcom/google/android/libraries/places/internal/zzbjb;-><init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V

    sput-object v6, Lcom/google/android/libraries/places/internal/zzbjb;->zzn:Lcom/google/android/libraries/places/internal/zzbjb;

    const/16 v3, 0xe

    new-array v3, v3, [Lcom/google/android/libraries/places/internal/zzbjb;

    const/4 v8, 0x0

    aput-object v0, v3, v8

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    const/4 v0, 0x7

    aput-object v15, v3, v0

    const/16 v0, 0x8

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aput-object v10, v3, v0

    const/16 v0, 0xa

    aput-object v12, v3, v0

    const/16 v0, 0xb

    aput-object v4, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v6, v3, v14

    sput-object v3, Lcom/google/android/libraries/places/internal/zzbjb;->zzp:[Lcom/google/android/libraries/places/internal/zzbjb;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzbjb;->values()[Lcom/google/android/libraries/places/internal/zzbjb;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    iget v2, v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzq:I

    int-to-long v2, v2

    long-to-int v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/google/android/libraries/places/internal/zzbjb;

    :goto_0
    if-ge v8, v1, :cond_0

    aget-object v4, v0, v8

    iget v5, v4, Lcom/google/android/libraries/places/internal/zzbjb;->zzq:I

    int-to-long v5, v5

    long-to-int v5, v5

    aput-object v4, v2, v5

    add-int/2addr v8, v3

    goto :goto_0

    :cond_0
    sput-object v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzo:[Lcom/google/android/libraries/places/internal/zzbjb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/google/android/libraries/places/internal/zzbdo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/libraries/places/internal/zzbjb;->zzq:I

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "HTTP/2 error code: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p4}, Lcom/google/android/libraries/places/internal/zzbdo;->zzi()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p4, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbjb;->zzr:Lcom/google/android/libraries/places/internal/zzbdo;

    return-void
.end method

.method public static values()[Lcom/google/android/libraries/places/internal/zzbjb;
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzp:[Lcom/google/android/libraries/places/internal/zzbjb;

    invoke-virtual {v0}, [Lcom/google/android/libraries/places/internal/zzbjb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/libraries/places/internal/zzbjb;

    return-object v0
.end method

.method public static zza(J)Lcom/google/android/libraries/places/internal/zzbdo;
    .locals 5

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzo:[Lcom/google/android/libraries/places/internal/zzbjb;

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, p0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p0, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v1, p0

    aget-object v2, v0, v1

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzc:Lcom/google/android/libraries/places/internal/zzbjb;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzbjb;->zzr:Lcom/google/android/libraries/places/internal/zzbdo;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zza()Lcom/google/android/libraries/places/internal/zzbdj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbdj;->zza()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzd(I)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized HTTP/2 error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, v2, Lcom/google/android/libraries/places/internal/zzbjb;->zzr:Lcom/google/android/libraries/places/internal/zzbdo;

    return-object p0
.end method
