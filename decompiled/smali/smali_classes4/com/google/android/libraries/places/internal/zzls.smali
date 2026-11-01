.class public final Lcom/google/android/libraries/places/internal/zzls;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzlr;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzkg;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzkb;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzkg;Lcom/google/android/libraries/places/internal/zzkb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzls;->zza:Lcom/google/android/libraries/places/internal/zzkg;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzls;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzlq;)V
    .locals 5

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzafv;->zza()Lcom/google/android/libraries/places/internal/zzafs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzz()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzg(Z)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzx()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzd(Z)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzy()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zze(Z)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzd()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzj(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzc(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zza()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzb(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zze()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzk(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzh(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzg()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzl(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzc()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzf(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzi(Z)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzf()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zza(I)Lcom/google/android/libraries/places/internal/zzafs;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzi()Lcom/google/android/libraries/places/internal/zzkr;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzkr;->zza:Lcom/google/android/libraries/places/internal/zzkr;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzafs;->zzn(I)Lcom/google/android/libraries/places/internal/zzafs;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzi()Lcom/google/android/libraries/places/internal/zzkr;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzkr;->zzb:Lcom/google/android/libraries/places/internal/zzkr;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzafs;->zzn(I)Lcom/google/android/libraries/places/internal/zzafs;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzafs;->zzn(I)Lcom/google/android/libraries/places/internal/zzafs;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzj()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->FULLSCREEN:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/google/android/libraries/places/internal/zzafs;->zzm(I)Lcom/google/android/libraries/places/internal/zzafs;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzlq;->zzj()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object p1

    sget-object v1, Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;->OVERLAY:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    if-ne p1, v1, :cond_3

    invoke-virtual {v0, v3}, Lcom/google/android/libraries/places/internal/zzafs;->zzm(I)Lcom/google/android/libraries/places/internal/zzafs;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzafv;

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzls;->zzb:Lcom/google/android/libraries/places/internal/zzkb;

    invoke-static {v0, v4, v4}, Lcom/google/android/libraries/places/internal/zzkh;->zzb(Lcom/google/android/libraries/places/internal/zzkb;II)Lcom/google/android/libraries/places/internal/zzagb;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzagb;->zzn(I)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzagb;->zzc(Lcom/google/android/libraries/places/internal/zzafv;)Lcom/google/android/libraries/places/internal/zzagb;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzato;->zzr()Lcom/google/android/libraries/places/internal/zzatu;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzagi;

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkh;->zza(Lcom/google/android/libraries/places/internal/zzagi;)Lcom/google/android/libraries/places/internal/zzsm;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzls;->zza:Lcom/google/android/libraries/places/internal/zzkg;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzkg;->zza(Lcom/google/android/libraries/places/internal/zzsm;)V

    return-void
.end method
