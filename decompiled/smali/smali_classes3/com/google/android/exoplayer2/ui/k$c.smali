.class final Lcom/google/android/exoplayer2/ui/k$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final e:Ljava/util/Comparator;

.field private static final f:Ljava/util/Comparator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/ui/l;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/l;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ui/k$c;->e:Ljava/util/Comparator;

    new-instance v0, Lcom/google/android/exoplayer2/ui/m;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/ui/m;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/ui/k$c;->f:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/ui/k$c;->a:I

    iput p2, p0, Lcom/google/android/exoplayer2/ui/k$c;->b:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/ui/k$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/k$c;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/k$c;->e(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ui/k$c;->f(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I

    move-result p0

    return p0
.end method

.method static synthetic c()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/ui/k$c;->f:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic d()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/ui/k$c;->e:Ljava/util/Comparator;

    return-object v0
.end method

.method private static synthetic e(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/ui/k$c;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/k$c;->b:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic f(Lcom/google/android/exoplayer2/ui/k$c;Lcom/google/android/exoplayer2/ui/k$c;)I
    .locals 2

    iget v0, p1, Lcom/google/android/exoplayer2/ui/k$c;->a:I

    iget v1, p0, Lcom/google/android/exoplayer2/ui/k$c;->a:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/k$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/k$c;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
