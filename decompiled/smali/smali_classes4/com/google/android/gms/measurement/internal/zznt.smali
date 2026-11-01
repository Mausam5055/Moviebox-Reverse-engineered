.class public final enum Lcom/google/android/gms/measurement/internal/zznt;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zznt;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zznt;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zznt;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zznt;

.field private static final synthetic zzd:[Lcom/google/android/gms/measurement/internal/zznt;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v1, "GOOGLE_ANALYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zznt;->zza:Lcom/google/android/gms/measurement/internal/zznt;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v3, "GOOGLE_SIGNAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zznt;->zzb:Lcom/google/android/gms/measurement/internal/zznt;

    new-instance v3, Lcom/google/android/gms/measurement/internal/zznt;

    const-string v5, "SGTM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/measurement/internal/zznt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zznt;->zzc:Lcom/google/android/gms/measurement/internal/zznt;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/measurement/internal/zznt;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/measurement/internal/zznt;->zzd:[Lcom/google/android/gms/measurement/internal/zznt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zznt;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zznt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/measurement/internal/zznt;->zzd:[Lcom/google/android/gms/measurement/internal/zznt;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zznt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zznt;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zznt;->zze:I

    return v0
.end method
