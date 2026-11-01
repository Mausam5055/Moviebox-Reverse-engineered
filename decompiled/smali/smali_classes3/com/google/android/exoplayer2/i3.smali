.class public final Lcom/google/android/exoplayer2/i3;
.super Lcom/google/android/exoplayer2/v2;


# static fields
.field public static final d:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field private final b:Z

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/h3;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/h3;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/i3;->d:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/v2;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i3;->b:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i3;->c:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/v2;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/i3;->b:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/i3;->c:Z

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/i3;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i3;

    move-result-object p0

    return-object p0
.end method

.method private static e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/i3;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/i3;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    invoke-static {v3}, Lcom/google/android/exoplayer2/i3;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/exoplayer2/i3;

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/exoplayer2/i3;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/i3;-><init>(Z)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/exoplayer2/i3;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/i3;-><init>()V

    :goto_1
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/exoplayer2/i3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/exoplayer2/i3;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i3;->c:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/i3;->c:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i3;->b:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/i3;->b:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/i3;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/i3;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lcom/google/common/base/j;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/i3;->c(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/i3;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/i3;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/i3;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/i3;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
