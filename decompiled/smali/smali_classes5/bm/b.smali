.class public Lbm/b;
.super Ljava/lang/Object;

# interfaces
.implements Lbm/c;


# static fields
.field private static d:Lbm/b;


# instance fields
.field a:Z

.field b:I

.field private c:Lcom/transsion/core/log/ObjectLogUtils;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm/b;->a:Z

    const/4 v1, 0x2

    iput v1, p0, Lbm/b;->b:I

    new-instance v1, Lcom/transsion/core/log/ObjectLogUtils$a;

    invoke-direct {v1}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils$a;->o(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->q(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    move-result-object v0

    iput-object v0, p0, Lbm/b;->c:Lcom/transsion/core/log/ObjectLogUtils;

    return-void
.end method

.method public static b()Lbm/b;
    .locals 2

    sget-object v0, Lbm/b;->d:Lbm/b;

    if-nez v0, :cond_1

    const-class v0, Lbm/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lbm/b;->d:Lbm/b;

    if-nez v1, :cond_0

    new-instance v1, Lbm/b;

    invoke-direct {v1}, Lbm/b;-><init>()V

    sput-object v1, Lbm/b;->d:Lbm/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lbm/b;->d:Lbm/b;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lbm/b;->a:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lbm/b;->a:Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lbm/b;->a:Z

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lbm/b;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lbm/b;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Lbm/b;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public f(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lbm/b;->g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0}, Lbm/b;->c()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, p1}, Lbm/b;->h(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    const/4 v3, 0x6

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbm/b;->c:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-virtual {p1, p2, v2}, Lcom/transsion/core/log/ObjectLogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbm/b;->c:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-virtual {p1, p2, v2}, Lcom/transsion/core/log/ObjectLogUtils;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lbm/b;->c:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-virtual {p1, p2, v2}, Lcom/transsion/core/log/ObjectLogUtils;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lbm/b;->c:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-virtual {p1, p2, v2}, Lcom/transsion/core/log/ObjectLogUtils;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lbm/b;->c:Lcom/transsion/core/log/ObjectLogUtils;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    aput-object p4, v2, v0

    invoke-virtual {p1, p2, v2}, Lcom/transsion/core/log/ObjectLogUtils;->y(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public h(I)Z
    .locals 1

    iget v0, p0, Lbm/b;->b:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lbm/b;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
