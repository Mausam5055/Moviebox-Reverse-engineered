.class final Lf3/b$i;
.super Ljava/lang/Object;

# interfaces
.implements Lf3/b$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroidx/media3/common/util/j0;


# direct methods
.method public constructor <init>(Landroidx/media3/container/d$c;Landroidx/media3/common/r;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Landroidx/media3/container/d$c;->b:Landroidx/media3/common/util/j0;

    iput-object p1, p0, Lf3/b$i;->c:Landroidx/media3/common/util/j0;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/j0;->W(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->L()I

    move-result v0

    iget-object v1, p2, Landroidx/media3/common/r;->o:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p2, Landroidx/media3/common/r;->G:I

    iget p2, p2, Landroidx/media3/common/r;->E:I

    invoke-static {v1, p2}, Landroidx/media3/common/util/a1;->k0(II)I

    move-result p2

    if-eqz v0, :cond_0

    rem-int v1, v0, p2

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio sample size mismatch. stsd sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", stsz sample size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoxParsers"

    invoke-static {v1, v0}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p2

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :cond_2
    iput v0, p0, Lf3/b$i;->a:I

    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->L()I

    move-result p1

    iput p1, p0, Lf3/b$i;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lf3/b$i;->a:I

    return v0
.end method

.method public getSampleCount()I
    .locals 1

    iget v0, p0, Lf3/b$i;->b:I

    return v0
.end method

.method public readNextSampleSize()I
    .locals 2

    iget v0, p0, Lf3/b$i;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf3/b$i;->c:Landroidx/media3/common/util/j0;

    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->L()I

    move-result v0

    :cond_0
    return v0
.end method
