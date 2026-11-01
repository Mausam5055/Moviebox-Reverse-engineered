.class public Lq4/n;
.super Ljava/lang/Object;

# interfaces
.implements Lr4/c;


# instance fields
.field private final a:Lq4/e;

.field private final b:Lq4/o;

.field private final c:Lq4/g;

.field private final d:Lq4/b;

.field private final e:Lq4/d;

.field private final f:Lq4/b;

.field private final g:Lq4/b;

.field private final h:Lq4/b;

.field private final i:Lq4/b;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lq4/n;-><init>(Lq4/e;Lq4/o;Lq4/g;Lq4/b;Lq4/d;Lq4/b;Lq4/b;Lq4/b;Lq4/b;)V

    return-void
.end method

.method public constructor <init>(Lq4/e;Lq4/o;Lq4/g;Lq4/b;Lq4/d;Lq4/b;Lq4/b;Lq4/b;Lq4/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lq4/n;->j:Z

    iput-object p1, p0, Lq4/n;->a:Lq4/e;

    iput-object p2, p0, Lq4/n;->b:Lq4/o;

    iput-object p3, p0, Lq4/n;->c:Lq4/g;

    iput-object p4, p0, Lq4/n;->d:Lq4/b;

    iput-object p5, p0, Lq4/n;->e:Lq4/d;

    iput-object p6, p0, Lq4/n;->h:Lq4/b;

    iput-object p7, p0, Lq4/n;->i:Lq4/b;

    iput-object p8, p0, Lq4/n;->f:Lq4/b;

    iput-object p9, p0, Lq4/n;->g:Lq4/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/h;Lcom/airbnb/lottie/model/layer/a;)Lm4/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ln4/p;
    .locals 1

    new-instance v0, Ln4/p;

    invoke-direct {v0, p0}, Ln4/p;-><init>(Lq4/n;)V

    return-object v0
.end method

.method public c()Lq4/e;
    .locals 1

    iget-object v0, p0, Lq4/n;->a:Lq4/e;

    return-object v0
.end method

.method public d()Lq4/b;
    .locals 1

    iget-object v0, p0, Lq4/n;->i:Lq4/b;

    return-object v0
.end method

.method public e()Lq4/d;
    .locals 1

    iget-object v0, p0, Lq4/n;->e:Lq4/d;

    return-object v0
.end method

.method public f()Lq4/o;
    .locals 1

    iget-object v0, p0, Lq4/n;->b:Lq4/o;

    return-object v0
.end method

.method public g()Lq4/b;
    .locals 1

    iget-object v0, p0, Lq4/n;->d:Lq4/b;

    return-object v0
.end method

.method public h()Lq4/g;
    .locals 1

    iget-object v0, p0, Lq4/n;->c:Lq4/g;

    return-object v0
.end method

.method public i()Lq4/b;
    .locals 1

    iget-object v0, p0, Lq4/n;->f:Lq4/b;

    return-object v0
.end method

.method public j()Lq4/b;
    .locals 1

    iget-object v0, p0, Lq4/n;->g:Lq4/b;

    return-object v0
.end method

.method public k()Lq4/b;
    .locals 1

    iget-object v0, p0, Lq4/n;->h:Lq4/b;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lq4/n;->j:Z

    return v0
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lq4/n;->j:Z

    return-void
.end method
