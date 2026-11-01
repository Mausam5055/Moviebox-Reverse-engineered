.class public final Lcom/google/android/exoplayer2/p3$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/p3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final f:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:I

.field private final b:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private final c:Z

.field private final d:[I

.field private final e:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/o3;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/o3;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/p3$a;->f:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    iput v0, p0, Lcom/google/android/exoplayer2/p3$a;->a:I

    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    array-length v1, p4

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/p3$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-eqz p2, :cond_1

    if-le v0, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/p3$a;->c:Z

    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/p3$a;->d:[I

    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/p3$a;->e:[Z

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/p3$a;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/p3$a;->g(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/p3$a;

    move-result-object p0

    return-object p0
.end method

.method private static f(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/p3$a;
    .locals 5

    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->f:Lcom/google/android/exoplayer2/k$a;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/k$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/k;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    new-array v3, v3, [I

    invoke-static {v2, v3}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->a:I

    new-array v4, v4, [Z

    invoke-static {v3, v4}, Lcom/google/common/base/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance v1, Lcom/google/android/exoplayer2/p3$a;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/google/android/exoplayer2/p3$a;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    return-object v1
.end method


# virtual methods
.method public b(I)Lcom/google/android/exoplayer2/o1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p3$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p3$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p3$a;->e:[Z

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->a([ZZ)Z

    move-result v0

    return v0
.end method

.method public e(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/p3$a;->e:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/p3$a;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/p3$a;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/p3$a;->c:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/p3$a;->c:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/p3$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/p3$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/p3$a;->d:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/p3$a;->d:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/p3$a;->e:[Z

    iget-object p1, p1, Lcom/google/android/exoplayer2/p3$a;->e:[Z

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/p3$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/p3$a;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/p3$a;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/p3$a;->e:[Z

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/p3$a;->b:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/p3$a;->d:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/p3$a;->e:[Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/p3$a;->f(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/p3$a;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
