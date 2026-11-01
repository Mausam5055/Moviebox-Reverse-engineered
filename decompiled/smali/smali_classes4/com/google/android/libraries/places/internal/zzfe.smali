.class public final synthetic Lcom/google/android/libraries/places/internal/zzfe;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field public final synthetic zza:Lcom/android/volley/toolbox/i;


# direct methods
.method public synthetic constructor <init>(Lcom/android/volley/toolbox/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzfe;->zza:Lcom/android/volley/toolbox/i;

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzfe;->zza:Lcom/android/volley/toolbox/i;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/i;->cancel()V

    return-void
.end method
