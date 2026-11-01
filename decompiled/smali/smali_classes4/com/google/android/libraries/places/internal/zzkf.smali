.class public final Lcom/google/android/libraries/places/internal/zzkf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzkg;


# static fields
.field private static final zza:Ljava/lang/Integer;


# instance fields
.field private final zzb:Lr8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x4bd334b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzkf;->zza:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/t;->f(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/datatransport/runtime/t;->c()Lcom/google/android/datatransport/runtime/t;

    move-result-object p1

    const-string v0, "cct"

    invoke-virtual {p1, v0}, Lcom/google/android/datatransport/runtime/t;->h(Ljava/lang/String;)Lr8/i;

    move-result-object p1

    new-instance v0, Lcom/google/android/libraries/places/internal/zzke;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzke;-><init>()V

    const-string v1, "LE"

    const-class v2, Lcom/google/android/libraries/places/internal/zzsm;

    invoke-interface {p1, v1, v2, v0}, Lr8/i;->a(Ljava/lang/String;Ljava/lang/Class;Lr8/g;)Lr8/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzkf;->zzb:Lr8/h;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzsm;)V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzkf;->zza:Ljava/lang/Integer;

    invoke-static {v0}, Lr8/f;->b(Ljava/lang/Integer;)Lr8/f;

    move-result-object v0

    invoke-static {p1, v0}, Lr8/d;->g(Ljava/lang/Object;Lr8/f;)Lr8/d;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzkf;->zzb:Lr8/h;

    invoke-interface {v0, p1}, Lr8/h;->b(Lr8/d;)V

    return-void
.end method
