.class public final La7/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La7/c$b;->a:Z

    iput-boolean v0, p0, La7/c$b;->b:Z

    const/16 v1, 0xc8

    iput v1, p0, La7/c$b;->d:I

    iput-boolean v0, p0, La7/c$b;->e:Z

    iput-boolean v0, p0, La7/c$b;->f:Z

    return-void
.end method

.method static synthetic a(La7/c$b;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$b;->f:Z

    return p0
.end method

.method static synthetic b(La7/c$b;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$b;->a:Z

    return p0
.end method

.method static synthetic d(La7/c$b;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$b;->b:Z

    return p0
.end method

.method static synthetic e(La7/c$b;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$b;->c:Z

    return p0
.end method

.method static synthetic f(La7/c$b;)I
    .locals 0

    iget p0, p0, La7/c$b;->d:I

    return p0
.end method

.method static synthetic g(La7/c$b;)Z
    .locals 0

    iget-boolean p0, p0, La7/c$b;->e:Z

    return p0
.end method


# virtual methods
.method public c()La7/c$a;
    .locals 1

    new-instance v0, La7/c$a;

    invoke-direct {v0, p0}, La7/c$a;-><init>(La7/c$b;)V

    return-object v0
.end method

.method public h(Ljava/lang/String;)La7/c$b;
    .locals 0

    sput-object p1, La7/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)La7/c$b;
    .locals 1

    iput-boolean p1, p0, La7/c$b;->a:Z

    iput-boolean p1, p0, La7/c$b;->b:Z

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->j(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    iget-boolean v0, p0, La7/c$b;->a:Z

    invoke-virtual {p1, v0}, Lcom/cloud/sdk/commonutil/util/c;->setLogSwitch(Z)V

    sget-object p1, Lcom/cloud/sdk/commonutil/util/c;->NET_LOG:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    invoke-virtual {p1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->m()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    move-result-object p1

    iget-boolean v0, p0, La7/c$b;->a:Z

    invoke-virtual {p1, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;->q(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$a;

    return-object p0
.end method

.method public j(I)La7/c$b;
    .locals 0

    iput p1, p0, La7/c$b;->d:I

    return-object p0
.end method

.method public k(Z)La7/c$b;
    .locals 0

    invoke-static {p1}, La7/c;->i(Z)Z

    return-object p0
.end method

.method public l(Z)La7/c$b;
    .locals 0

    invoke-static {p1}, La7/c;->g(Z)Z

    return-object p0
.end method

.method public m(J)La7/c$b;
    .locals 1

    invoke-static {}, La7/c;->c()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-object p0
.end method

.method public n(Z)La7/c$b;
    .locals 0

    invoke-static {p1}, La7/c;->e(Z)Z

    return-object p0
.end method

.method public o(Z)La7/c$b;
    .locals 0

    iput-boolean p1, p0, La7/c$b;->e:Z

    return-object p0
.end method

.method public p(Z)La7/c$b;
    .locals 0

    iput-boolean p1, p0, La7/c$b;->c:Z

    return-object p0
.end method
