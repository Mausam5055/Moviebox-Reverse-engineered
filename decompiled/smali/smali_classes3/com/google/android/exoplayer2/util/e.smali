.class public interface abstract Lcom/google/android/exoplayer2/util/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/util/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/util/i0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/i0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/e;->a:Lcom/google/android/exoplayer2/util/e;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/o;
.end method

.method public abstract elapsedRealtime()J
.end method

.method public abstract uptimeMillis()J
.end method
