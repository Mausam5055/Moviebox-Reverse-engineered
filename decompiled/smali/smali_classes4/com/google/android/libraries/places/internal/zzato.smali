.class public Lcom/google/android/libraries/places/internal/zzato;
.super Lcom/google/android/libraries/places/internal/zzars;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/zzatu<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/libraries/places/internal/zzato<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/libraries/places/internal/zzars<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/libraries/places/internal/zzatu;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzatu;


# direct methods
.method protected constructor <init>(Lcom/google/android/libraries/places/internal/zzatu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzars;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzato;->zzb:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzatu;->zzat()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzavp;->zza()Lcom/google/android/libraries/places/internal/zzavp;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzavp;->zzb(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/zzavt;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzavt;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzp()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzaL()Lcom/google/android/libraries/places/internal/zzavf;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzaM()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzatu;->zzaG(Lcom/google/android/libraries/places/internal/zzatu;Z)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/libraries/places/internal/zzars;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzp()Lcom/google/android/libraries/places/internal/zzato;

    move-result-object v0

    return-object v0
.end method

.method public final zzp()Lcom/google/android/libraries/places/internal/zzato;
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zzb:Lcom/google/android/libraries/places/internal/zzatu;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/libraries/places/internal/zzatu;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzato;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzs()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    return-object v0
.end method

.method public final zzq(Lcom/google/android/libraries/places/internal/zzatu;)Lcom/google/android/libraries/places/internal/zzato;
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zzb:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzatu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzx()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzato;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method public final zzr()Lcom/google/android/libraries/places/internal/zzatu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzs()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaM()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/libraries/places/internal/zzawm;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/zzawm;-><init>(Lcom/google/android/libraries/places/internal/zzavf;)V

    throw v1
.end method

.method public zzs()Lcom/google/android/libraries/places/internal/zzatu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaC()V

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    return-object v0
.end method

.method public bridge synthetic zzt()Lcom/google/android/libraries/places/internal/zzavf;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzu()Lcom/google/android/libraries/places/internal/zzavf;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzs()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    return-object v0
.end method

.method protected final zzw()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzaH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzato;->zzx()V

    :cond_0
    return-void
.end method

.method protected zzx()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zzb:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzatu;->zzat()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzato;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzato;->zza:Lcom/google/android/libraries/places/internal/zzatu;

    return-void
.end method
