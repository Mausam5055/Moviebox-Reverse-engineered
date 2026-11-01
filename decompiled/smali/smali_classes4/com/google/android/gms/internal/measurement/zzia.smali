.class public final Lcom/google/android/gms/internal/measurement/zzia;
.super Ljava/lang/Object;


# static fields
.field public static final zza:Lcom/google/common/base/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/q;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzhz;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/q;)Lcom/google/common/base/q;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzia;->zza:Lcom/google/common/base/q;

    return-void
.end method

.method static synthetic zza()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 1

    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$a;->j()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method
