.class public final Landroidx/media3/common/m$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/m$b;->a:I

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/m$b;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/m$b;->a:I

    return p0
.end method

.method static synthetic b(Landroidx/media3/common/m$b;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/m$b;->b:I

    return p0
.end method

.method static synthetic c(Landroidx/media3/common/m$b;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/m$b;->c:I

    return p0
.end method

.method static synthetic d(Landroidx/media3/common/m$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/m$b;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public e()Landroidx/media3/common/m;
    .locals 2

    iget v0, p0, Landroidx/media3/common/m$b;->b:I

    iget v1, p0, Landroidx/media3/common/m$b;->c:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    new-instance v0, Landroidx/media3/common/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/m;-><init>(Landroidx/media3/common/m$b;Landroidx/media3/common/m$a;)V

    return-object v0
.end method

.method public f(I)Landroidx/media3/common/m$b;
    .locals 0

    iput p1, p0, Landroidx/media3/common/m$b;->c:I

    return-object p0
.end method

.method public g(I)Landroidx/media3/common/m$b;
    .locals 0

    iput p1, p0, Landroidx/media3/common/m$b;->b:I

    return-object p0
.end method
