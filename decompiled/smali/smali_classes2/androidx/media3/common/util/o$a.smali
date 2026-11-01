.class final Landroidx/media3/common/util/o$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/o$a;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/common/util/o$a;->b:I

    return-void
.end method

.method public static a(II)Landroidx/media3/common/util/o$a;
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b8a

    const/4 v11, 0x0

    invoke-static {p0, v2, v1, v11}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v2, v1, v11

    new-array v12, v2, [B

    new-array v3, v0, [I

    new-array v5, v0, [I

    new-array v7, v0, [I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v9, v12

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    new-instance v0, Ljava/lang/String;

    invoke-static {v12}, Landroidx/media3/common/util/o;->a([B)I

    move-result v1

    invoke-direct {v0, v12, v11, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0}, Landroidx/media3/common/util/o;->b(ILjava/lang/String;)I

    move-result v1

    new-instance v2, Landroidx/media3/common/util/o$a;

    invoke-direct {v2, v0, v1}, Landroidx/media3/common/util/o$a;-><init>(Ljava/lang/String;I)V

    return-object v2
.end method
