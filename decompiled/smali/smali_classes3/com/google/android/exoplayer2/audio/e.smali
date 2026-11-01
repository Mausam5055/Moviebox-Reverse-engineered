.class public final Lcom/google/android/exoplayer2/audio/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/e$c;,
        Lcom/google/android/exoplayer2/audio/e$b;,
        Lcom/google/android/exoplayer2/audio/e$e;,
        Lcom/google/android/exoplayer2/audio/e$d;
    }
.end annotation


# static fields
.field public static final g:Lcom/google/android/exoplayer2/audio/e;

.field public static final h:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field private f:Lcom/google/android/exoplayer2/audio/e$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/audio/e$e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/e$e;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/e$e;->a()Lcom/google/android/exoplayer2/audio/e;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/audio/e;->g:Lcom/google/android/exoplayer2/audio/e;

    new-instance v0, Lcom/google/android/exoplayer2/audio/d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/d;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/audio/e;->h:Lcom/google/android/exoplayer2/k$a;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/audio/e;->a:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/e;->c:I

    iput p4, p0, Lcom/google/android/exoplayer2/audio/e;->d:I

    iput p5, p0, Lcom/google/android/exoplayer2/audio/e;->e:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILcom/google/android/exoplayer2/audio/e$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/audio/e;-><init>(IIIII)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/audio/e;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/e;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/audio/e;

    move-result-object p0

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/audio/e;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/audio/e$e;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/e$e;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/e$e;->c(I)Lcom/google/android/exoplayer2/audio/e$e;

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/e$e;->d(I)Lcom/google/android/exoplayer2/audio/e$e;

    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/e$e;->f(I)Lcom/google/android/exoplayer2/audio/e$e;

    :cond_2
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/e$e;->b(I)Lcom/google/android/exoplayer2/audio/e$e;

    :cond_3
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/audio/e$e;->e(I)Lcom/google/android/exoplayer2/audio/e$e;

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/e$e;->a()Lcom/google/android/exoplayer2/audio/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/audio/e$d;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e;->f:Lcom/google/android/exoplayer2/audio/e$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/audio/e$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/audio/e$d;-><init>(Lcom/google/android/exoplayer2/audio/e;Lcom/google/android/exoplayer2/audio/e$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/e;->f:Lcom/google/android/exoplayer2/audio/e$d;

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/e;->f:Lcom/google/android/exoplayer2/audio/e$d;

    return-object v0
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

    const-class v3, Lcom/google/android/exoplayer2/audio/e;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/audio/e;

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->a:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/e;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/e;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->c:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/e;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->d:I

    iget v3, p1, Lcom/google/android/exoplayer2/audio/e;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->e:I

    iget p1, p1, Lcom/google/android/exoplayer2/audio/e;->e:I

    if-ne v2, p1, :cond_2

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

    const/16 v0, 0x20f

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/audio/e;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/e;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/e;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
