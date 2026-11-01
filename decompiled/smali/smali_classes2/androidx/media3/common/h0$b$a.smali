.class public final Landroidx/media3/common/h0$b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/h0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/h0$b$a;->a:I

    iput-boolean v0, p0, Landroidx/media3/common/h0$b$a;->b:Z

    iput-boolean v0, p0, Landroidx/media3/common/h0$b$a;->c:Z

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/h0$b$a;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/h0$b$a;->a:I

    return p0
.end method

.method static synthetic b(Landroidx/media3/common/h0$b$a;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/h0$b$a;->b:Z

    return p0
.end method

.method static synthetic c(Landroidx/media3/common/h0$b$a;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/h0$b$a;->c:Z

    return p0
.end method


# virtual methods
.method public d()Landroidx/media3/common/h0$b;
    .locals 2

    new-instance v0, Landroidx/media3/common/h0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/h0$b;-><init>(Landroidx/media3/common/h0$b$a;Landroidx/media3/common/h0$a;)V

    return-object v0
.end method
