.class public final Landroidx/media3/exoplayer/source/p$b;
.super Landroidx/media3/common/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final e:Landroidx/media3/common/t;


# direct methods
.method public constructor <init>(Landroidx/media3/common/t;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/e0;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/p$b;->e:Landroidx/media3/common/t;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/p$a;->h:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILandroidx/media3/common/e0$b;Z)Landroidx/media3/common/e0$b;
    .locals 11

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz p3, :cond_1

    sget-object p1, Landroidx/media3/exoplayer/source/p$a;->h:Ljava/lang/Object;

    :cond_1
    move-object v3, p1

    sget-object v9, Landroidx/media3/common/b;->g:Landroidx/media3/common/b;

    const/4 v10, 0x1

    const/4 v4, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/e0$b;->u(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/b;Z)Landroidx/media3/common/e0$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 0

    sget-object p1, Landroidx/media3/exoplayer/source/p$a;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public o(ILandroidx/media3/common/e0$c;J)Landroidx/media3/common/e0$c;
    .locals 21

    move-object/from16 v0, p2

    sget-object v1, Landroidx/media3/common/e0$c;->q:Ljava/lang/Object;

    move-object/from16 v15, p0

    iget-object v2, v15, Landroidx/media3/exoplayer/source/p$b;->e:Landroidx/media3/common/t;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/e0$c;->g(Ljava/lang/Object;Landroidx/media3/common/t;Ljava/lang/Object;JJJZZLandroidx/media3/common/t$g;JJIIJ)Landroidx/media3/common/e0$c;

    const/4 v0, 0x1

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroidx/media3/common/e0$c;->k:Z

    return-object v1
.end method

.method public p()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
