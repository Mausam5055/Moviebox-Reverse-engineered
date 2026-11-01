.class public final Lv9/e;
.super Ljava/lang/Object;

# interfaces
.implements Lg9/n;
.implements Lv9/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv9/e$a;
    }
.end annotation


# static fields
.field public static final j:Lv9/g$a;

.field private static final k:Lg9/a0;


# instance fields
.field private final a:Lg9/l;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/o1;

.field private final d:Landroid/util/SparseArray;

.field private e:Z

.field private f:Lv9/g$b;

.field private g:J

.field private h:Lg9/b0;

.field private i:[Lcom/google/android/exoplayer2/o1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/d;

    invoke-direct {v0}, Lv9/d;-><init>()V

    sput-object v0, Lv9/e;->j:Lv9/g$a;

    new-instance v0, Lg9/a0;

    invoke-direct {v0}, Lg9/a0;-><init>()V

    sput-object v0, Lv9/e;->k:Lg9/a0;

    return-void
.end method

.method public constructor <init>(Lg9/l;ILcom/google/android/exoplayer2/o1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv9/e;->a:Lg9/l;

    iput p2, p0, Lv9/e;->b:I

    iput-object p3, p0, Lv9/e;->c:Lcom/google/android/exoplayer2/o1;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lv9/e;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic f(ILcom/google/android/exoplayer2/o1;ZLjava/util/List;Lg9/e0;Le9/u1;)Lv9/g;
    .locals 0

    invoke-static/range {p0 .. p5}, Lv9/e;->g(ILcom/google/android/exoplayer2/o1;ZLjava/util/List;Lg9/e0;Le9/u1;)Lv9/g;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic g(ILcom/google/android/exoplayer2/o1;ZLjava/util/List;Lg9/e0;Le9/u1;)Lv9/g;
    .locals 6

    iget-object p5, p1, Lcom/google/android/exoplayer2/o1;->k:Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/exoplayer2/util/w;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/w;->r(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    new-instance p2, Lm9/e;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lm9/e;-><init>(I)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x4

    :goto_0
    move v1, p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    new-instance p2, Lo9/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lo9/g;-><init>(ILcom/google/android/exoplayer2/util/l0;Lo9/o;Ljava/util/List;Lg9/e0;)V

    :goto_2
    new-instance p3, Lv9/e;

    invoke-direct {p3, p2, p0, p1}, Lv9/e;-><init>(Lg9/l;ILcom/google/android/exoplayer2/o1;)V

    return-object p3
.end method


# virtual methods
.method public a(Lg9/m;)Z
    .locals 3

    iget-object v0, p0, Lv9/e;->a:Lg9/l;

    sget-object v1, Lv9/e;->k:Lg9/a0;

    invoke-interface {v0, p1, v1}, Lg9/l;->c(Lg9/m;Lg9/a0;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public b()Lg9/d;
    .locals 2

    iget-object v0, p0, Lv9/e;->h:Lg9/b0;

    instance-of v1, v0, Lg9/d;

    if-eqz v1, :cond_0

    check-cast v0, Lg9/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()[Lcom/google/android/exoplayer2/o1;
    .locals 1

    iget-object v0, p0, Lv9/e;->i:[Lcom/google/android/exoplayer2/o1;

    return-object v0
.end method

.method public d(Lg9/b0;)V
    .locals 0

    iput-object p1, p0, Lv9/e;->h:Lg9/b0;

    return-void
.end method

.method public e(Lv9/g$b;JJ)V
    .locals 5

    iput-object p1, p0, Lv9/e;->f:Lv9/g$b;

    iput-wide p4, p0, Lv9/e;->g:J

    iget-boolean v0, p0, Lv9/e;->e:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lv9/e;->a:Lg9/l;

    invoke-interface {p1, p0}, Lg9/l;->b(Lg9/n;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lv9/e;->a:Lg9/l;

    invoke-interface {p1, v3, v4, p2, p3}, Lg9/l;->seek(JJ)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lv9/e;->e:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lv9/e;->a:Lg9/l;

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lg9/l;->seek(JJ)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lv9/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Lv9/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv9/e$a;

    invoke-virtual {p3, p1, p4, p5}, Lv9/e$a;->g(Lv9/g$b;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public endTracks()V
    .locals 3

    iget-object v0, p0, Lv9/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/o1;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lv9/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lv9/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/e$a;

    iget-object v2, v2, Lv9/e$a;->e:Lcom/google/android/exoplayer2/o1;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/o1;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lv9/e;->i:[Lcom/google/android/exoplayer2/o1;

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lv9/e;->a:Lg9/l;

    invoke-interface {v0}, Lg9/l;->release()V

    return-void
.end method

.method public track(II)Lg9/e0;
    .locals 3

    iget-object v0, p0, Lv9/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv9/e$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lv9/e;->i:[Lcom/google/android/exoplayer2/o1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    new-instance v0, Lv9/e$a;

    iget v1, p0, Lv9/e;->b:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lv9/e;->c:Lcom/google/android/exoplayer2/o1;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lv9/e$a;-><init>(IILcom/google/android/exoplayer2/o1;)V

    iget-object p2, p0, Lv9/e;->f:Lv9/g$b;

    iget-wide v1, p0, Lv9/e;->g:J

    invoke-virtual {v0, p2, v1, v2}, Lv9/e$a;->g(Lv9/g$b;J)V

    iget-object p2, p0, Lv9/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method
