.class public final Landroidx/media3/exoplayer/dash/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/dash/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/a$a;

.field private final b:I

.field private final c:Lh2/f$a;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/dash/d$a;-><init>(Landroidx/media3/datasource/a$a;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;I)V
    .locals 1

    new-instance v0, Lh2/d$b;

    invoke-direct {v0}, Lh2/d$b;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/dash/d$a;-><init>(Lh2/f$a;Landroidx/media3/datasource/a$a;I)V

    return-void
.end method

.method public constructor <init>(Lh2/f$a;Landroidx/media3/datasource/a$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lh2/f$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/dash/d$a;->a:Landroidx/media3/datasource/a$a;

    iput p3, p0, Landroidx/media3/exoplayer/dash/d$a;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Li3/s$a;)Landroidx/media3/exoplayer/dash/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/d$a;->h(Li3/s$a;)Landroidx/media3/exoplayer/dash/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/dash/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/d$a;->g(I)Landroidx/media3/exoplayer/dash/d$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/dash/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/d$a;->f(Z)Landroidx/media3/exoplayer/dash/d$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lh2/f$a;

    invoke-interface {v0, p1}, Lh2/f$a;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroidx/media3/exoplayer/upstream/p;La2/c;Lz1/b;I[ILj2/z;IJZLjava/util/List;Landroidx/media3/exoplayer/dash/f$c;Lw1/n;Ly1/f4;Landroidx/media3/exoplayer/upstream/f;)Landroidx/media3/exoplayer/dash/a;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p13

    iget-object v2, v0, Landroidx/media3/exoplayer/dash/d$a;->a:Landroidx/media3/datasource/a$a;

    invoke-interface {v2}, Landroidx/media3/datasource/a$a;->createDataSource()Landroidx/media3/datasource/a;

    move-result-object v12

    if-eqz v1, :cond_0

    invoke-interface {v12, v1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/dash/d;

    move-object v3, v1

    iget-object v4, v0, Landroidx/media3/exoplayer/dash/d$a;->c:Lh2/f$a;

    iget v15, v0, Landroidx/media3/exoplayer/dash/d$a;->b:I

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v13, p8

    move/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p14

    move-object/from16 v20, p15

    invoke-direct/range {v3 .. v20}, Landroidx/media3/exoplayer/dash/d;-><init>(Lh2/f$a;Landroidx/media3/exoplayer/upstream/p;La2/c;Lz1/b;I[ILj2/z;ILandroidx/media3/datasource/a;JIZLjava/util/List;Landroidx/media3/exoplayer/dash/f$c;Ly1/f4;Landroidx/media3/exoplayer/upstream/f;)V

    return-object v1
.end method

.method public f(Z)Landroidx/media3/exoplayer/dash/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lh2/f$a;

    invoke-interface {v0, p1}, Lh2/f$a;->c(Z)Lh2/f$a;

    return-object p0
.end method

.method public g(I)Landroidx/media3/exoplayer/dash/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lh2/f$a;

    invoke-interface {v0, p1}, Lh2/f$a;->b(I)Lh2/f$a;

    return-object p0
.end method

.method public h(Li3/s$a;)Landroidx/media3/exoplayer/dash/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lh2/f$a;

    invoke-interface {v0, p1}, Lh2/f$a;->a(Li3/s$a;)Lh2/f$a;

    return-object p0
.end method
