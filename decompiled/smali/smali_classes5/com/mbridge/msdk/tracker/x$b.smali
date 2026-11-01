.class public final Lcom/mbridge/msdk/tracker/x$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/tracker/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Lcom/mbridge/msdk/tracker/p;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/mbridge/msdk/tracker/d;

.field private i:Lcom/mbridge/msdk/tracker/w;

.field private j:Lcom/mbridge/msdk/tracker/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/mbridge/msdk/tracker/x$b;->a:I

    const/16 v1, 0x3a98

    iput v1, p0, Lcom/mbridge/msdk/tracker/x$b;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/mbridge/msdk/tracker/x$b;->c:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/mbridge/msdk/tracker/x$b;->e:I

    iput v0, p0, Lcom/mbridge/msdk/tracker/x$b;->f:I

    const v0, 0x240c8400

    iput v0, p0, Lcom/mbridge/msdk/tracker/x$b;->g:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/tracker/x$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/tracker/x$b;->a:I

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/tracker/x$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/tracker/x$b;->b:I

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/tracker/x$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/tracker/x$b;->c:I

    return p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/tracker/x$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/tracker/x$b;->e:I

    return p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/tracker/x$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/tracker/x$b;->f:I

    return p0
.end method

.method static synthetic f(Lcom/mbridge/msdk/tracker/x$b;)I
    .locals 0

    iget p0, p0, Lcom/mbridge/msdk/tracker/x$b;->g:I

    return p0
.end method

.method static synthetic g(Lcom/mbridge/msdk/tracker/x$b;)Lcom/mbridge/msdk/tracker/p;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/x$b;->d:Lcom/mbridge/msdk/tracker/p;

    return-object p0
.end method

.method static synthetic h(Lcom/mbridge/msdk/tracker/x$b;)Lcom/mbridge/msdk/tracker/d;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/x$b;->h:Lcom/mbridge/msdk/tracker/d;

    return-object p0
.end method

.method static synthetic i(Lcom/mbridge/msdk/tracker/x$b;)Lcom/mbridge/msdk/tracker/w;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/x$b;->i:Lcom/mbridge/msdk/tracker/w;

    return-object p0
.end method

.method static synthetic j(Lcom/mbridge/msdk/tracker/x$b;)Lcom/mbridge/msdk/tracker/f;
    .locals 0

    iget-object p0, p0, Lcom/mbridge/msdk/tracker/x$b;->j:Lcom/mbridge/msdk/tracker/f;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    if-gez p1, :cond_0

    const p1, 0x240c8400

    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->g:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->g:I

    :goto_0
    return-object p0
.end method

.method public a(ILcom/mbridge/msdk/tracker/p;)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->c:I

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/x$b;->d:Lcom/mbridge/msdk/tracker/p;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/tracker/d;)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/x$b;->h:Lcom/mbridge/msdk/tracker/d;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/tracker/f;)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/x$b;->j:Lcom/mbridge/msdk/tracker/f;

    return-object p0
.end method

.method public a(Lcom/mbridge/msdk/tracker/w;)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/x$b;->i:Lcom/mbridge/msdk/tracker/w;

    return-object p0
.end method

.method public a()Lcom/mbridge/msdk/tracker/x;
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/x$b;->h:Lcom/mbridge/msdk/tracker/d;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "TrackManager"

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "decorate can not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/x$b;->i:Lcom/mbridge/msdk/tracker/w;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "responseHandler can not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/x$b;->d:Lcom/mbridge/msdk/tracker/p;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/x$b;->d:Lcom/mbridge/msdk/tracker/p;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/p;->b()Lcom/mbridge/msdk/tracker/network/toolbox/a;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "networkStackConfig or stack can not be null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/mbridge/msdk/tracker/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mbridge/msdk/tracker/x;-><init>(Lcom/mbridge/msdk/tracker/x$b;Lcom/mbridge/msdk/tracker/x$a;)V

    return-object v0
.end method

.method public b(I)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0x32

    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->a:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->a:I

    :goto_0
    return-object p0
.end method

.method public c(I)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0x3a98

    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->b:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->b:I

    :goto_0
    return-object p0
.end method

.method public d(I)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    if-gez p1, :cond_0

    const/16 p1, 0x32

    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->f:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->f:I

    :goto_0
    return-object p0
.end method

.method public e(I)Lcom/mbridge/msdk/tracker/x$b;
    .locals 0

    if-gtz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->e:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/mbridge/msdk/tracker/x$b;->e:I

    :goto_0
    return-object p0
.end method
