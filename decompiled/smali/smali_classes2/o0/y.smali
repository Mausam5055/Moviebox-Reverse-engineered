.class public final Lo0/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/y$a;
    }
.end annotation


# static fields
.field public static final b:Lo0/y$a;

.field private static final c:J

.field private static final d:J

.field private static final e:J


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo0/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo0/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo0/y;->b:Lo0/y$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lo0/y;->e(J)J

    move-result-wide v0

    sput-wide v0, Lo0/y;->c:J

    const-wide v0, 0x100000000L

    invoke-static {v0, v1}, Lo0/y;->e(J)J

    move-result-wide v0

    sput-wide v0, Lo0/y;->d:J

    const-wide v0, 0x200000000L

    invoke-static {v0, v1}, Lo0/y;->e(J)J

    move-result-wide v0

    sput-wide v0, Lo0/y;->e:J

    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lo0/y;->a:J

    return-void
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lo0/y;->e:J

    return-wide v0
.end method

.method public static final synthetic b()J
    .locals 2

    sget-wide v0, Lo0/y;->d:J

    return-wide v0
.end method

.method public static final synthetic c()J
    .locals 2

    sget-wide v0, Lo0/y;->c:J

    return-wide v0
.end method

.method public static final synthetic d(J)Lo0/y;
    .locals 1

    new-instance v0, Lo0/y;

    invoke-direct {v0, p0, p1}, Lo0/y;-><init>(J)V

    return-object v0
.end method

.method public static e(J)J
    .locals 0

    return-wide p0
.end method

.method public static f(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lo0/y;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lo0/y;

    invoke-virtual {p2}, Lo0/y;->j()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final g(JJ)Z
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

.method public static h(J)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/collection/s;->a(J)I

    move-result p0

    return p0
.end method

.method public static i(J)Ljava/lang/String;
    .locals 2

    sget-wide v0, Lo0/y;->c:J

    invoke-static {p0, p1, v0, v1}, Lo0/y;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Unspecified"

    goto :goto_0

    :cond_0
    sget-wide v0, Lo0/y;->d:J

    invoke-static {p0, p1, v0, v1}, Lo0/y;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Sp"

    goto :goto_0

    :cond_1
    sget-wide v0, Lo0/y;->e:J

    invoke-static {p0, p1, v0, v1}, Lo0/y;->g(JJ)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Em"

    goto :goto_0

    :cond_2
    const-string p0, "Invalid"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lo0/y;->a:J

    invoke-static {v0, v1, p1}, Lo0/y;->f(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lo0/y;->a:J

    invoke-static {v0, v1}, Lo0/y;->h(J)I

    move-result v0

    return v0
.end method

.method public final synthetic j()J
    .locals 2

    iget-wide v0, p0, Lo0/y;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lo0/y;->a:J

    invoke-static {v0, v1}, Lo0/y;->i(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
