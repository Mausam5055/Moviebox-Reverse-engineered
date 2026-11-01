.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzh;
.super Landroidx/fragment/app/h;


# instance fields
.field private final zza:I

.field private final zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzkt;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzlr;

.field private final zze:Lcom/google/android/libraries/places/internal/zzdv;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/google/android/libraries/places/internal/zzkt;)V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/h;-><init>()V

    iput p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zza:I

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzkb;->zzd(Landroid/content/Context;)Lcom/google/android/libraries/places/internal/zzka;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/libraries/places/internal/zzka;->zzd(I)Lcom/google/android/libraries/places/internal/zzka;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzka;->zze()Lcom/google/android/libraries/places/internal/zzkb;

    move-result-object p2

    new-instance v0, Lcom/google/android/libraries/places/internal/zzkf;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/places/internal/zzkf;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/api/Places;->zza(Landroid/content/Context;Lcom/google/android/libraries/places/internal/zzkb;)Lcom/google/android/libraries/places/api/net/PlacesClient;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    iput-object p3, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzc:Lcom/google/android/libraries/places/internal/zzkt;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzls;

    invoke-direct {p1, v0, p2}, Lcom/google/android/libraries/places/internal/zzls;-><init>(Lcom/google/android/libraries/places/internal/zzkg;Lcom/google/android/libraries/places/internal/zzkb;)V

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzd:Lcom/google/android/libraries/places/internal/zzlr;

    new-instance p1, Lcom/google/android/libraries/places/internal/zzdy;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/zzdy;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    return-void
.end method


# virtual methods
.method public final instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 9

    invoke-static {p1, p2}, Landroidx/fragment/app/h;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    if-ne v0, v1, :cond_0

    iget v3, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zza:I

    iget-object v4, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzb:Lcom/google/android/libraries/places/api/net/PlacesClient;

    iget-object v5, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzc:Lcom/google/android/libraries/places/internal/zzkt;

    iget-object v6, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zzd:Lcom/google/android/libraries/places/internal/zzlr;

    iget-object v7, p0, Lcom/google/android/libraries/places/widget/internal/ui/zzh;->zze:Lcom/google/android/libraries/places/internal/zzdv;

    new-instance p1, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/libraries/places/widget/internal/ui/AutocompleteImplFragment;-><init>(ILcom/google/android/libraries/places/api/net/PlacesClient;Lcom/google/android/libraries/places/internal/zzkt;Lcom/google/android/libraries/places/internal/zzlr;Lcom/google/android/libraries/places/internal/zzdv;Lcom/google/android/libraries/places/widget/internal/ui/zzm;)V

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/h;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method
