.class final Lcom/google/android/libraries/places/internal/zzaux;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzavu;


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzavd;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzavd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzauv;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzauv;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzaux;->zza:Lcom/google/android/libraries/places/internal/zzavd;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    new-instance v0, Lcom/google/android/libraries/places/internal/zzauw;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzatn;->zza()Lcom/google/android/libraries/places/internal/zzatn;

    move-result-object v1

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/zzavd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/google/android/libraries/places/internal/zzaux;->zza:Lcom/google/android/libraries/places/internal/zzavd;

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/libraries/places/internal/zzavd;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/zzauw;-><init>([Lcom/google/android/libraries/places/internal/zzavd;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/google/android/libraries/places/internal/zzaud;->zzd:[B

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzaux;->zzb:Lcom/google/android/libraries/places/internal/zzavd;

    return-void
.end method

.method private static zzb(Lcom/google/android/libraries/places/internal/zzavc;)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/zzavc;->zzc()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;
    .locals 8

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzavv;->zzs(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaux;->zzb:Lcom/google/android/libraries/places/internal/zzavd;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzavd;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavc;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzavc;->zzb()Z

    move-result v0

    const-class v1, Lcom/google/android/libraries/places/internal/zzatu;

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavv;->zzn()Lcom/google/android/libraries/places/internal/zzawn;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzati;->zzb()Lcom/google/android/libraries/places/internal/zzatg;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzavc;->zza()Lcom/google/android/libraries/places/internal/zzavf;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzavj;->zzi(Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzavj;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavv;->zzm()Lcom/google/android/libraries/places/internal/zzawn;

    move-result-object p1

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzati;->zza()Lcom/google/android/libraries/places/internal/zzatg;

    move-result-object v0

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/zzavc;->zza()Lcom/google/android/libraries/places/internal/zzavf;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/zzavj;->zzi(Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzavj;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaux;->zzb(Lcom/google/android/libraries/places/internal/zzavc;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavm;->zzb()Lcom/google/android/libraries/places/internal/zzavl;

    move-result-object v3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaut;->zze()Lcom/google/android/libraries/places/internal/zzaut;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavv;->zzn()Lcom/google/android/libraries/places/internal/zzawn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzati;->zzb()Lcom/google/android/libraries/places/internal/zzatg;

    move-result-object v6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavb;->zzb()Lcom/google/android/libraries/places/internal/zzava;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzavi;->zzi(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzavc;Lcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)Lcom/google/android/libraries/places/internal/zzavi;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavm;->zzb()Lcom/google/android/libraries/places/internal/zzavl;

    move-result-object v3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaut;->zze()Lcom/google/android/libraries/places/internal/zzaut;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavv;->zzn()Lcom/google/android/libraries/places/internal/zzawn;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavb;->zzb()Lcom/google/android/libraries/places/internal/zzava;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzavi;->zzi(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzavc;Lcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)Lcom/google/android/libraries/places/internal/zzavi;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzaux;->zzb(Lcom/google/android/libraries/places/internal/zzavc;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavm;->zza()Lcom/google/android/libraries/places/internal/zzavl;

    move-result-object v3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaut;->zzd()Lcom/google/android/libraries/places/internal/zzaut;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavv;->zzm()Lcom/google/android/libraries/places/internal/zzawn;

    move-result-object v5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzati;->zza()Lcom/google/android/libraries/places/internal/zzatg;

    move-result-object v6

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavb;->zza()Lcom/google/android/libraries/places/internal/zzava;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzavi;->zzi(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzavc;Lcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)Lcom/google/android/libraries/places/internal/zzavi;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavm;->zza()Lcom/google/android/libraries/places/internal/zzavl;

    move-result-object v3

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzaut;->zzd()Lcom/google/android/libraries/places/internal/zzaut;

    move-result-object v4

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavv;->zzm()Lcom/google/android/libraries/places/internal/zzawn;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavb;->zza()Lcom/google/android/libraries/places/internal/zzava;

    move-result-object v7

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzavi;->zzi(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/zzavc;Lcom/google/android/libraries/places/internal/zzavl;Lcom/google/android/libraries/places/internal/zzaut;Lcom/google/android/libraries/places/internal/zzawn;Lcom/google/android/libraries/places/internal/zzatg;Lcom/google/android/libraries/places/internal/zzava;)Lcom/google/android/libraries/places/internal/zzavi;

    move-result-object p1

    :goto_0
    return-object p1
.end method
