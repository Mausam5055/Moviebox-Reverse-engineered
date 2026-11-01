.class final Landroidx/media3/exoplayer/dash/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:[I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Lcom/google/common/collect/ImmutableList;


# direct methods
.method private constructor <init>(II[IIIIILcom/google/common/collect/ImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/dash/c$a;->b:I

    iput-object p3, p0, Landroidx/media3/exoplayer/dash/c$a;->a:[I

    iput p2, p0, Landroidx/media3/exoplayer/dash/c$a;->c:I

    iput p4, p0, Landroidx/media3/exoplayer/dash/c$a;->e:I

    iput p5, p0, Landroidx/media3/exoplayer/dash/c$a;->f:I

    iput p6, p0, Landroidx/media3/exoplayer/dash/c$a;->g:I

    iput p7, p0, Landroidx/media3/exoplayer/dash/c$a;->d:I

    iput-object p8, p0, Landroidx/media3/exoplayer/dash/c$a;->h:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static a([IILcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/dash/c$a;
    .locals 10

    new-instance v9, Landroidx/media3/exoplayer/dash/c$a;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v5, -0x1

    move-object v0, v9

    move-object v3, p0

    move v4, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/c$a;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v9
.end method

.method public static b([II)Landroidx/media3/exoplayer/dash/c$a;
    .locals 10

    new-instance v9, Landroidx/media3/exoplayer/dash/c$a;

    const/4 v7, -0x1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v9

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/c$a;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v9
.end method

.method public static c(I)Landroidx/media3/exoplayer/dash/c$a;
    .locals 10

    new-instance v9, Landroidx/media3/exoplayer/dash/c$a;

    const/4 v0, 0x0

    new-array v3, v0, [I

    const/4 v6, -0x1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v9

    move v7, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/c$a;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v9
.end method

.method public static d(I[IIII)Landroidx/media3/exoplayer/dash/c$a;
    .locals 10

    new-instance v9, Landroidx/media3/exoplayer/dash/c$a;

    const/4 v7, -0x1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    const/4 v2, 0x0

    move-object v0, v9

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/dash/c$a;-><init>(II[IIIIILcom/google/common/collect/ImmutableList;)V

    return-object v9
.end method
