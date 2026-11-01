.class final Lf3/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:J

.field private final e:Z

.field private final f:Landroidx/media3/common/util/j0;

.field private final g:Landroidx/media3/common/util/j0;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/j0;Landroidx/media3/common/util/j0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/b$b;->g:Landroidx/media3/common/util/j0;

    iput-object p2, p0, Lf3/b$b;->f:Landroidx/media3/common/util/j0;

    iput-boolean p3, p0, Lf3/b$b;->e:Z

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p2}, Landroidx/media3/common/util/j0;->L()I

    move-result p2

    iput p2, p0, Lf3/b$b;->a:I

    invoke-virtual {p1, p3}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->L()I

    move-result p2

    iput p2, p0, Lf3/b$b;->i:I

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->q()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p1, "first_chunk must be 1"

    invoke-static {p2, p1}, Ll2/u;->a(ZLjava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lf3/b$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget v0, p0, Lf3/b$b;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lf3/b$b;->b:I

    iget v2, p0, Lf3/b$b;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lf3/b$b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf3/b$b;->f:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->O()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lf3/b$b;->f:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lf3/b$b;->d:J

    iget v0, p0, Lf3/b$b;->b:I

    iget v2, p0, Lf3/b$b;->h:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lf3/b$b;->g:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v0

    iput v0, p0, Lf3/b$b;->c:I

    iget-object v0, p0, Lf3/b$b;->g:Landroidx/media3/common/util/j0;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/j0;->X(I)V

    iget v0, p0, Lf3/b$b;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lf3/b$b;->i:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lf3/b$b;->g:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lf3/b$b;->h:I

    :cond_3
    return v1
.end method
