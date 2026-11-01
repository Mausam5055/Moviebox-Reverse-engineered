.class final Lt3/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt3/d$a;->a:I

    iput-wide p2, p0, Lt3/d$a;->b:J

    return-void
.end method

.method public static a(Ll2/s;Landroidx/media3/common/util/j0;)Lt3/d$a;
    .locals 3

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->e()[B

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Ll2/s;->peekFully([BII)V

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    move-result p0

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->x()J

    move-result-wide v0

    new-instance p1, Lt3/d$a;

    invoke-direct {p1, p0, v0, v1}, Lt3/d$a;-><init>(IJ)V

    return-object p1
.end method
