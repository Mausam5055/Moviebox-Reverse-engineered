.class public abstract Lcom/google/android/exoplayer2/v2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/u2;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/u2;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/v2;->a:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v2;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/v2;->b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v2;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/v2;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/v2;->c(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/android/exoplayer2/i3;->d:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v2;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown RatingType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Lcom/google/android/exoplayer2/e3;->d:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v2;

    return-object p0

    :cond_2
    sget-object v0, Lcom/google/android/exoplayer2/j2;->c:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v2;

    return-object p0

    :cond_3
    sget-object v0, Lcom/google/android/exoplayer2/r1;->d:Lcom/google/android/exoplayer2/k$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/v2;

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
