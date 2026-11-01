.class public final Lcom/google/android/libraries/places/internal/zzbcl;
.super Ljava/lang/Object;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbcj;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzbci;

.field private final zze:Lcom/google/android/libraries/places/internal/zzbci;

.field private final zzf:Z

.field private final zzg:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzbcj;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;Ljava/lang/Object;ZZZLcom/google/android/libraries/places/internal/zzbck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 p6, 0x2

    invoke-direct {p5, p6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzg:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string p5, "type"

    invoke-static {p1, p5}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    const-string p1, "fullMethodName"

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzb:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x2f

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 p5, -0x1

    if-ne p1, p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    invoke-virtual {p2, p5, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzc:Ljava/lang/String;

    const-string p1, "requestMarshaller"

    invoke-static {p3, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzd:Lcom/google/android/libraries/places/internal/zzbci;

    const-string p1, "responseMarshaller"

    invoke-static {p4, p1}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zze:Lcom/google/android/libraries/places/internal/zzbci;

    iput-boolean p8, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzf:Z

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzbci;Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;
    .locals 0

    new-instance p0, Lcom/google/android/libraries/places/internal/zzbch;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzbch;-><init>(Lcom/google/android/libraries/places/internal/zzbcg;)V

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbch;->zzb(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzbch;->zzc(Lcom/google/android/libraries/places/internal/zzbci;)Lcom/google/android/libraries/places/internal/zzbch;

    return-object p0
.end method

.method public static zze(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "fullServiceName"

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzmt;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzmn;->zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    move-result-object v0

    const-string v1, "fullMethodName"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "type"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "idempotent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "safe"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "sampledToLocalTracing"

    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzf:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zze(Ljava/lang/String;Z)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "requestMarshaller"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzd:Lcom/google/android/libraries/places/internal/zzbci;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "responseMarshaller"

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zze:Lcom/google/android/libraries/places/internal/zzbci;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    const-string v1, "schemaDescriptor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzmm;->zzd(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->zzg()Lcom/google/android/libraries/places/internal/zzmm;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzmm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzbcj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zza:Lcom/google/android/libraries/places/internal/zzbcj;

    return-object v0
.end method

.method public final zzc(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzd:Lcom/google/android/libraries/places/internal/zzbci;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbci;->zza(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final zzd(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zze:Lcom/google/android/libraries/places/internal/zzbci;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzbci;->zzb(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzbcl;->zzc:Ljava/lang/String;

    return-object v0
.end method
