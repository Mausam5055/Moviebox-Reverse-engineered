.class public final Landroidx/media3/common/t$k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/media3/common/t$k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/t$k;->a:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/t$k$a;->a:Landroid/net/Uri;

    iget-object v0, p1, Landroidx/media3/common/t$k;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$k$a;->b:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/t$k;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$k$a;->c:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/t$k;->d:I

    iput v0, p0, Landroidx/media3/common/t$k$a;->d:I

    iget v0, p1, Landroidx/media3/common/t$k;->e:I

    iput v0, p0, Landroidx/media3/common/t$k$a;->e:I

    iget-object v0, p1, Landroidx/media3/common/t$k;->f:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$k$a;->f:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/t$k;->g:Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/common/t$k$a;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t$k;Landroidx/media3/common/t$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/t$k$a;-><init>(Landroidx/media3/common/t$k;)V

    return-void
.end method

.method static synthetic a(Landroidx/media3/common/t$k$a;)Landroidx/media3/common/t$j;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/common/t$k$a;->i()Landroidx/media3/common/t$j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Landroidx/media3/common/t$k$a;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/t$k$a;->a:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic c(Landroidx/media3/common/t$k$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/t$k$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Landroidx/media3/common/t$k$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/t$k$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Landroidx/media3/common/t$k$a;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/t$k$a;->d:I

    return p0
.end method

.method static synthetic f(Landroidx/media3/common/t$k$a;)I
    .locals 0

    iget p0, p0, Landroidx/media3/common/t$k$a;->e:I

    return p0
.end method

.method static synthetic g(Landroidx/media3/common/t$k$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/t$k$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Landroidx/media3/common/t$k$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/t$k$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method private i()Landroidx/media3/common/t$j;
    .locals 2

    new-instance v0, Landroidx/media3/common/t$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/t$j;-><init>(Landroidx/media3/common/t$k$a;Landroidx/media3/common/t$a;)V

    return-object v0
.end method
