.class public final Lh2/d;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/t;
.implements Lh2/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/d$a;,
        Lh2/d$b;
    }
.end annotation


# static fields
.field public static final j:Lh2/d$b;

.field private static final k:Ll2/l0;


# instance fields
.field private final a:Ll2/r;

.field private final b:I

.field private final c:Landroidx/media3/common/r;

.field private final d:Landroid/util/SparseArray;

.field private e:Z

.field private f:Lh2/f$b;

.field private g:J

.field private h:Ll2/m0;

.field private i:[Landroidx/media3/common/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh2/d$b;

    invoke-direct {v0}, Lh2/d$b;-><init>()V

    sput-object v0, Lh2/d;->j:Lh2/d$b;

    new-instance v0, Ll2/l0;

    invoke-direct {v0}, Ll2/l0;-><init>()V

    sput-object v0, Lh2/d;->k:Ll2/l0;

    return-void
.end method

.method public constructor <init>(Ll2/r;ILandroidx/media3/common/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/d;->a:Ll2/r;

    iput p2, p0, Lh2/d;->b:I

    iput-object p3, p0, Lh2/d;->c:Landroidx/media3/common/r;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lh2/d;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Ll2/s;)Z
    .locals 3

    iget-object v0, p0, Lh2/d;->a:Ll2/r;

    sget-object v1, Lh2/d;->k:Ll2/l0;

    invoke-interface {v0, p1, v1}, Ll2/r;->c(Ll2/s;Ll2/l0;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/a;->g(Z)V

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public b()Ll2/h;
    .locals 2

    iget-object v0, p0, Lh2/d;->h:Ll2/m0;

    instance-of v1, v0, Ll2/h;

    if-eqz v1, :cond_0

    check-cast v0, Ll2/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public c()[Landroidx/media3/common/r;
    .locals 1

    iget-object v0, p0, Lh2/d;->i:[Landroidx/media3/common/r;

    return-object v0
.end method

.method public d(Lh2/f$b;JJ)V
    .locals 5

    iput-object p1, p0, Lh2/d;->f:Lh2/f$b;

    iput-wide p4, p0, Lh2/d;->g:J

    iget-boolean v0, p0, Lh2/d;->e:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Lh2/d;->a:Ll2/r;

    invoke-interface {p1, p0}, Ll2/r;->b(Ll2/t;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh2/d;->a:Ll2/r;

    invoke-interface {p1, v3, v4, p2, p3}, Ll2/r;->seek(JJ)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lh2/d;->e:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lh2/d;->a:Ll2/r;

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Ll2/r;->seek(JJ)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lh2/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Lh2/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh2/d$a;

    invoke-virtual {p3, p1, p4, p5}, Lh2/d$a;->h(Lh2/f$b;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public endTracks()V
    .locals 3

    iget-object v0, p0, Lh2/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/r;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lh2/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lh2/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh2/d$a;

    iget-object v2, v2, Lh2/d$a;->e:Landroidx/media3/common/r;

    invoke-static {v2}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/r;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lh2/d;->i:[Landroidx/media3/common/r;

    return-void
.end method

.method public f(Ll2/m0;)V
    .locals 0

    iput-object p1, p0, Lh2/d;->h:Ll2/m0;

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lh2/d;->a:Ll2/r;

    invoke-interface {v0}, Ll2/r;->release()V

    return-void
.end method

.method public track(II)Ll2/s0;
    .locals 3

    iget-object v0, p0, Lh2/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh2/d$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lh2/d;->i:[Landroidx/media3/common/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    new-instance v0, Lh2/d$a;

    iget v1, p0, Lh2/d;->b:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lh2/d;->c:Landroidx/media3/common/r;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lh2/d$a;-><init>(IILandroidx/media3/common/r;)V

    iget-object p2, p0, Lh2/d;->f:Lh2/f$b;

    iget-wide v1, p0, Lh2/d;->g:J

    invoke-virtual {v0, p2, v1, v2}, Lh2/d$a;->h(Lh2/f$b;J)V

    iget-object p2, p0, Lh2/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method
