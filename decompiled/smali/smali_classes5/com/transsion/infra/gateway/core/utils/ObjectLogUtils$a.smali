.class public Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->b:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->d:Z

    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->e:Z

    iput-boolean v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->f:Z

    iput-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->g:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->h:I

    iput v0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->i:I

    return-void
.end method

.method static synthetic a(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)I
    .locals 0

    iget p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->i:I

    return p0
.end method

.method static synthetic b(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->d:Z

    return p0
.end method

.method static synthetic c(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->a:Z

    return p0
.end method

.method static synthetic j(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->b:Z

    return p0
.end method

.method static synthetic k(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->f:Z

    return p0
.end method

.method static synthetic l(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;)I
    .locals 0

    iget p0, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->h:I

    return p0
.end method


# virtual methods
.method public m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;
    .locals 2

    new-instance v0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;-><init>(Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$1;)V

    return-object v0
.end method

.method public n(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->g:Z

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;
    .locals 1

    invoke-static {p1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->d:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->d:Z

    :goto_0
    return-object p0
.end method

.method public p(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->e:Z

    return-object p0
.end method

.method public q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->a:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "console: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->d:Z

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->c:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "head: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->j:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "border: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->c()[C

    move-result-object v1

    iget v2, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->h:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->c()[C

    move-result-object v1

    iget v2, p0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->i:I

    add-int/lit8 v2, v2, -0x2

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
