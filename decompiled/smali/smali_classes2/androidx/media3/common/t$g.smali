.class public final Landroidx/media3/common/t$g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/t$g$a;
    }
.end annotation


# static fields
.field public static final f:Landroidx/media3/common/t$g;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:F

.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/media3/common/t$g$a;

    invoke-direct {v0}, Landroidx/media3/common/t$g$a;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/t$g$a;->f()Landroidx/media3/common/t$g;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$g;->f:Landroidx/media3/common/t$g;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$g;->g:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$g;->h:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$g;->i:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$g;->j:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/a1;->C0(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/t$g;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/common/t$g;->a:J

    iput-wide p3, p0, Landroidx/media3/common/t$g;->b:J

    iput-wide p5, p0, Landroidx/media3/common/t$g;->c:J

    iput p7, p0, Landroidx/media3/common/t$g;->d:F

    iput p8, p0, Landroidx/media3/common/t$g;->e:F

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t$g$a;)V
    .locals 9

    invoke-static {p1}, Landroidx/media3/common/t$g$a;->a(Landroidx/media3/common/t$g$a;)J

    move-result-wide v1

    invoke-static {p1}, Landroidx/media3/common/t$g$a;->b(Landroidx/media3/common/t$g$a;)J

    move-result-wide v3

    invoke-static {p1}, Landroidx/media3/common/t$g$a;->c(Landroidx/media3/common/t$g$a;)J

    move-result-wide v5

    invoke-static {p1}, Landroidx/media3/common/t$g$a;->d(Landroidx/media3/common/t$g$a;)F

    move-result v7

    invoke-static {p1}, Landroidx/media3/common/t$g$a;->e(Landroidx/media3/common/t$g$a;)F

    move-result v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/media3/common/t$g;-><init>(JJJFF)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$g$a;Landroidx/media3/common/t$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/t$g;-><init>(Landroidx/media3/common/t$g$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/t$g$a;
    .locals 2

    new-instance v0, Landroidx/media3/common/t$g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/t$g$a;-><init>(Landroidx/media3/common/t$g;Landroidx/media3/common/t$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/t$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/t$g;

    iget-wide v3, p0, Landroidx/media3/common/t$g;->a:J

    iget-wide v5, p1, Landroidx/media3/common/t$g;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/t$g;->b:J

    iget-wide v5, p1, Landroidx/media3/common/t$g;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/t$g;->c:J

    iget-wide v5, p1, Landroidx/media3/common/t$g;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/media3/common/t$g;->d:F

    iget v3, p1, Landroidx/media3/common/t$g;->d:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/media3/common/t$g;->e:F

    iget p1, p1, Landroidx/media3/common/t$g;->e:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Landroidx/media3/common/t$g;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/t$g;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/t$g;->c:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/t$g;->d:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/t$g;->e:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_1
    add-int/2addr v0, v4

    return v0
.end method
