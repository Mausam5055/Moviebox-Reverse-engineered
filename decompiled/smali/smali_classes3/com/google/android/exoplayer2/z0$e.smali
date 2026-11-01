.class final Lcom/google/android/exoplayer2/z0$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/f2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/k3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/z0$e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/exoplayer2/z0$e;->b:Lcom/google/android/exoplayer2/k3;

    return-void
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/z0$e;Lcom/google/android/exoplayer2/k3;)Lcom/google/android/exoplayer2/k3;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/z0$e;->b:Lcom/google/android/exoplayer2/k3;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$e;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/google/android/exoplayer2/k3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/z0$e;->b:Lcom/google/android/exoplayer2/k3;

    return-object v0
.end method
