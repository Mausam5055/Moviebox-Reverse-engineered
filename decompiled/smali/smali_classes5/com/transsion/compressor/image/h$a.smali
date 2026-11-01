.class public Lcom/transsion/compressor/image/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/compressor/image/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Lcom/transsion/compressor/image/e;

.field private f:Lcom/transsion/compressor/image/a;

.field private final g:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/transsion/compressor/image/h$a;->d:I

    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->g:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic a(Lcom/transsion/compressor/image/h$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/compressor/image/h$a;->c:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->e:Lcom/transsion/compressor/image/e;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->f:Lcom/transsion/compressor/image/a;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/transsion/compressor/image/h$a;)I
    .locals 0

    iget p0, p0, Lcom/transsion/compressor/image/h$a;->d:I

    return p0
.end method

.method static bridge synthetic e(Lcom/transsion/compressor/image/h$a;)Lcom/transsion/compressor/image/f;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic f(Lcom/transsion/compressor/image/h$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->g:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/transsion/compressor/image/h$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/compressor/image/h$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method private h()Lcom/transsion/compressor/image/h;
    .locals 2

    new-instance v0, Lcom/transsion/compressor/image/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/compressor/image/h;-><init>(Lcom/transsion/compressor/image/h$a;Lcom/transsion/compressor/image/i;)V

    return-object v0
.end method


# virtual methods
.method public i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/transsion/compressor/image/h$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/compressor/image/j;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/compressor/image/h$a;->b:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/compressor/image/h$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/compressor/image/j;->d(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public j(Lcom/transsion/compressor/image/a;)Lcom/transsion/compressor/image/h$a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->f:Lcom/transsion/compressor/image/a;

    return-object p0
.end method

.method public k()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/compressor/image/h$a;->h()Lcom/transsion/compressor/image/h;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/compressor/image/h$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/transsion/compressor/image/h;->b(Lcom/transsion/compressor/image/h;Landroid/content/Context;)V

    return-void
.end method

.method public l(Ljava/lang/String;)Lcom/transsion/compressor/image/h$a;
    .locals 2

    iget-object v0, p0, Lcom/transsion/compressor/image/h$a;->g:Ljava/util/List;

    new-instance v1, Lcom/transsion/compressor/image/h$a$a;

    invoke-direct {v1, p0, p1}, Lcom/transsion/compressor/image/h$a$a;-><init>(Lcom/transsion/compressor/image/h$a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public m(Lcom/transsion/compressor/image/e;)Lcom/transsion/compressor/image/h$a;
    .locals 0

    iput-object p1, p0, Lcom/transsion/compressor/image/h$a;->e:Lcom/transsion/compressor/image/e;

    return-object p0
.end method
