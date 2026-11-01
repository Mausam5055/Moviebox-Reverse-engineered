.class final Lcom/google/android/libraries/places/internal/zzbun;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzbci;


# static fields
.field private static final zza:Ljava/lang/ThreadLocal;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zzavn;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzavf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzbun;->zza:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Lcom/google/android/libraries/places/internal/zzavf;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "defaultInstance cannot be null"

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbun;->zzc:Lcom/google/android/libraries/places/internal/zzavf;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzavf;->zzaz()Lcom/google/android/libraries/places/internal/zzavn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbun;->zzb:Lcom/google/android/libraries/places/internal/zzavn;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbun;->zzb:Lcom/google/android/libraries/places/internal/zzavn;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzbum;

    invoke-direct {v1, p1, v0}, Lcom/google/android/libraries/places/internal/zzbum;-><init>(Lcom/google/android/libraries/places/internal/zzavf;Lcom/google/android/libraries/places/internal/zzavn;)V

    return-object v1
.end method

.method public final bridge synthetic zzb(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbum;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/zzbum;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbum;->zzc()Lcom/google/android/libraries/places/internal/zzavn;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbun;->zzb:Lcom/google/android/libraries/places/internal/zzavn;

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzbum;->zzb()Lcom/google/android/libraries/places/internal/zzavf;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    :cond_0
    :try_start_1
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/zzbav;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_6

    const/high16 v3, 0x400000

    if-gt v0, v3, :cond_6

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbun;->zza:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_1

    array-length v5, v4

    if-ge v5, v0, :cond_2

    goto :goto_0

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_1
    :goto_0
    new-array v4, v0, [B

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_2
    move v3, v0

    :goto_1
    if-lez v3, :cond_4

    sub-int v5, v0, v3

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v5

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    invoke-static {v4, v1, v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzJ([BII)Lcom/google/android/libraries/places/internal/zzasq;

    move-result-object v0

    goto :goto_3

    :cond_5
    sub-int p1, v0, v3

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size inaccurate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v0, :cond_7

    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbun;->zzc:Lcom/google/android/libraries/places/internal/zzavf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_8

    const/16 v0, 0x1000

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzasq;->zzI(Ljava/io/InputStream;I)Lcom/google/android/libraries/places/internal/zzasq;

    move-result-object v0

    :cond_8
    const p1, 0x7fffffff

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzasq;->zzG(I)I

    :try_start_2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzbun;->zzb:Lcom/google/android/libraries/places/internal/zzavn;

    sget-object v3, Lcom/google/android/libraries/places/internal/zzbuo;->zza:Lcom/google/android/libraries/places/internal/zzatf;

    invoke-interface {p1, v0, v3}, Lcom/google/android/libraries/places/internal/zzavn;->zza(Lcom/google/android/libraries/places/internal/zzasq;Lcom/google/android/libraries/places/internal/zzatf;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Lcom/google/android/libraries/places/internal/zzauf; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzasq;->zzz(I)V
    :try_end_3
    .catch Lcom/google/android/libraries/places/internal/zzauf; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    return-object p1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzauf;->zzh(Lcom/google/android/libraries/places/internal/zzavf;)Lcom/google/android/libraries/places/internal/zzauf;

    throw v0
    :try_end_4
    .catch Lcom/google/android/libraries/places/internal/zzauf; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzbdo;->zzo:Lcom/google/android/libraries/places/internal/zzbdo;

    const-string v1, "Invalid protobuf byte sequence"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzg(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzbdo;->zzf(Ljava/lang/Throwable;)Lcom/google/android/libraries/places/internal/zzbdo;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzbdq;

    invoke-direct {v0, p1, v2}, Lcom/google/android/libraries/places/internal/zzbdq;-><init>(Lcom/google/android/libraries/places/internal/zzbdo;Lcom/google/android/libraries/places/internal/zzbcf;)V

    throw v0

    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
