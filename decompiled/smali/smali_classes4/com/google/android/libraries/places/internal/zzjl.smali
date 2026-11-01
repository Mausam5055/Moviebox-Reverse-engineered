.class final Lcom/google/android/libraries/places/internal/zzjl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzjp;


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/libraries/places/internal/zzjs;

.field private zzc:Lcom/google/android/libraries/places/internal/zzkb;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzjk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/libraries/places/internal/zzjs;)Lcom/google/android/libraries/places/internal/zzjp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjl;->zzb:Lcom/google/android/libraries/places/internal/zzjs;

    return-object p0
.end method

.method public final synthetic zzb(Lcom/google/android/libraries/places/internal/zzkb;)Lcom/google/android/libraries/places/internal/zzjp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjl;->zzc:Lcom/google/android/libraries/places/internal/zzkb;

    return-object p0
.end method

.method public final synthetic zzc(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/zzjp;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzjl;->zza:Landroid/content/Context;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzjq;
    .locals 5

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjl;->zza:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzaxx;->zzb(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjl;->zzb:Lcom/google/android/libraries/places/internal/zzjs;

    const-class v1, Lcom/google/android/libraries/places/internal/zzjs;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzaxx;->zzb(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzjl;->zzc:Lcom/google/android/libraries/places/internal/zzkb;

    const-class v1, Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzaxx;->zzb(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/libraries/places/internal/zzjn;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzjl;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzjl;->zzb:Lcom/google/android/libraries/places/internal/zzjs;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzjl;->zzc:Lcom/google/android/libraries/places/internal/zzkb;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/libraries/places/internal/zzjn;-><init>(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzjs;Lcom/google/android/libraries/places/internal/zzkb;Lcom/google/android/libraries/places/internal/zzjm;)V

    return-object v0
.end method
