.class final Landroidx/media3/common/util/o$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:[F

.field private final e:[I

.field private f:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/o$b;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/common/util/o$b;->b:I

    iput p3, p0, Landroidx/media3/common/util/o$b;->c:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Landroidx/media3/common/util/o$b;->d:[F

    const/4 p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/media3/common/util/o$b;->e:[I

    const/16 p1, 0x2601

    iput p1, p0, Landroidx/media3/common/util/o$b;->f:I

    return-void
.end method

.method public static a(II)Landroidx/media3/common/util/o$b;
    .locals 15

    move v11, p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b87

    const/4 v12, 0x0

    invoke-static {p0, v2, v1, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v13, v0, [I

    aget v2, v1, v12

    new-array v14, v2, [B

    new-array v3, v0, [I

    new-array v5, v0, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move/from16 v1, p1

    move-object v7, v13

    move-object v9, v14

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    new-instance v0, Ljava/lang/String;

    invoke-static {v14}, Landroidx/media3/common/util/o;->a([B)I

    move-result v1

    invoke-direct {v0, v14, v12, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0}, Landroidx/media3/common/util/o;->c(ILjava/lang/String;)I

    move-result v1

    new-instance v2, Landroidx/media3/common/util/o$b;

    aget v3, v13, v12

    invoke-direct {v2, v0, v1, v3}, Landroidx/media3/common/util/o$b;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method
