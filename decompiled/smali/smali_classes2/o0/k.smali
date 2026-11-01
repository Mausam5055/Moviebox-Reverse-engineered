.class public final Lo0/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/k$a;
    }
.end annotation


# static fields
.field public static final b:Lo0/k$a;

.field private static final c:J

.field private static final d:J


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo0/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo0/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo0/k;->b:Lo0/k$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lo0/k;->b(J)J

    move-result-wide v0

    sput-wide v0, Lo0/k;->c:J

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v0, v1}, Lo0/k;->b(J)J

    move-result-wide v0

    sput-wide v0, Lo0/k;->d:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo0/k;->a:J

    return-void
.end method

.method public static final synthetic a(J)Lo0/k;
    .locals 1

    new-instance v0, Lo0/k;

    invoke-direct {v0, p0, p1}, Lo0/k;-><init>(J)V

    return-object v0
.end method

.method public static b(J)J
    .locals 0

    return-wide p0
.end method

.method public static c(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lo0/k;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lo0/k;

    invoke-virtual {p2}, Lo0/k;->h()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final d(J)F
    .locals 1

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Lo0/i;->g(F)F

    move-result p0

    return p0
.end method

.method public static final e(J)F
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Lo0/i;->g(F)F

    move-result p0

    return p0
.end method

.method public static f(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/collection/s;->a(J)I

    move-result p0

    return p0
.end method

.method public static g(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lo0/k;->d(J)F

    move-result v1

    invoke-static {v1}, Lo0/i;->k(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lo0/k;->e(J)F

    move-result p0

    invoke-static {p0}, Lo0/i;->k(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "DpOffset.Unspecified"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lo0/k;->a:J

    invoke-static {v0, v1, p1}, Lo0/k;->c(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic h()J
    .locals 2

    iget-wide v0, p0, Lo0/k;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lo0/k;->a:J

    invoke-static {v0, v1}, Lo0/k;->f(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lo0/k;->a:J

    invoke-static {v0, v1}, Lo0/k;->g(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
