.class public final Ly/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly/m$a;
    }
.end annotation


# static fields
.field public static final b:Ly/m$a;

.field private static final c:J

.field private static final d:J


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ly/m;->b:Ly/m$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ly/m;->d(J)J

    move-result-wide v0

    sput-wide v0, Ly/m;->c:J

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v0, v1}, Ly/m;->d(J)J

    move-result-wide v0

    sput-wide v0, Ly/m;->d:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ly/m;->a:J

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Ly/m;->d:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    sget-wide v0, Ly/m;->c:J

    return-wide v0
.end method

.method public static final synthetic c(J)Ly/m;
    .locals 1

    new-instance v0, Ly/m;

    invoke-direct {v0, p0, p1}, Ly/m;-><init>(J)V

    return-object v0
.end method

.method public static d(J)J
    .locals 0

    return-wide p0
.end method

.method public static e(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Ly/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Ly/m;

    invoke-virtual {p2}, Ly/m;->m()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final f(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final g(J)F
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "Size is unspecified"

    invoke-static {v0}, Ly/d;->a(Ljava/lang/String;)V

    :cond_0
    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final h(J)F
    .locals 4

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "Size is unspecified"

    invoke-static {v0}, Ly/d;->a(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static final i(J)F
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "Size is unspecified"

    invoke-static {v0}, Ly/d;->a(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static j(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/collection/s;->a(J)I

    move-result p0

    return p0
.end method

.method public static final k(J)Z
    .locals 4

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "Size is unspecified"

    invoke-static {v0}, Ly/d;->a(Ljava/lang/String;)V

    :cond_0
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v0, p0

    const/16 v2, 0x1f

    ushr-long/2addr v0, v2

    const/4 v2, -0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    not-long v0, v0

    and-long/2addr p0, v0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(J)Ljava/lang/String;
    .locals 3

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ly/m;->i(J)F

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ly/m;->g(J)F

    move-result p0

    invoke-static {p0, v2}, Ly/c;->a(FI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "Size.Unspecified"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Ly/m;->a:J

    invoke-static {v0, v1, p1}, Ly/m;->e(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Ly/m;->a:J

    invoke-static {v0, v1}, Ly/m;->j(J)I

    move-result v0

    return v0
.end method

.method public final synthetic m()J
    .locals 2

    iget-wide v0, p0, Ly/m;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Ly/m;->a:J

    invoke-static {v0, v1}, Ly/m;->l(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
