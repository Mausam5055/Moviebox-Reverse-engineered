.class public final Ll2/e$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final d:Ll2/e$e;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Ll2/e$e;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, -0x1

    const/4 v1, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ll2/e$e;-><init>(IJJ)V

    sput-object v6, Ll2/e$e;->d:Ll2/e$e;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll2/e$e;->a:I

    iput-wide p2, p0, Ll2/e$e;->b:J

    iput-wide p4, p0, Ll2/e$e;->c:J

    return-void
.end method

.method static synthetic a(Ll2/e$e;)I
    .locals 0

    iget p0, p0, Ll2/e$e;->a:I

    return p0
.end method

.method static synthetic b(Ll2/e$e;)J
    .locals 2

    iget-wide v0, p0, Ll2/e$e;->b:J

    return-wide v0
.end method

.method static synthetic c(Ll2/e$e;)J
    .locals 2

    iget-wide v0, p0, Ll2/e$e;->c:J

    return-wide v0
.end method

.method public static d(JJ)Ll2/e$e;
    .locals 7

    new-instance v6, Ll2/e$e;

    const/4 v1, -0x1

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Ll2/e$e;-><init>(IJJ)V

    return-object v6
.end method

.method public static e(J)Ll2/e$e;
    .locals 7

    new-instance v6, Ll2/e$e;

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, v6

    move-wide v4, p0

    invoke-direct/range {v0 .. v5}, Ll2/e$e;-><init>(IJJ)V

    return-object v6
.end method

.method public static f(JJ)Ll2/e$e;
    .locals 7

    new-instance v6, Ll2/e$e;

    const/4 v1, -0x2

    move-object v0, v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Ll2/e$e;-><init>(IJJ)V

    return-object v6
.end method
