.class Lcom/google/android/exoplayer2/trackselection/e$f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/trackselection/e$f;->b(Lcom/google/android/exoplayer2/trackselection/e;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/trackselection/e;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/trackselection/e$f;Lcom/google/android/exoplayer2/trackselection/e;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/e$f$a;->a:Lcom/google/android/exoplayer2/trackselection/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$f$a;->a:Lcom/google/android/exoplayer2/trackselection/e;

    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/e;->z(Lcom/google/android/exoplayer2/trackselection/e;)V

    return-void
.end method

.method public onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/e$f$a;->a:Lcom/google/android/exoplayer2/trackselection/e;

    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/e;->z(Lcom/google/android/exoplayer2/trackselection/e;)V

    return-void
.end method
