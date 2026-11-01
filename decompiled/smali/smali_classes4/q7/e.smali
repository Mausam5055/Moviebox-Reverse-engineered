.class public abstract Lq7/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lq7/d;

.field static b:Lq7/a;

.field static c:Le8/c;

.field static d:Z


# direct methods
.method static a()V
    .locals 2

    sget-boolean v0, Lq7/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do you forget to initialize XLog?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lq7/e;->a()V

    sget-object v0, Lq7/e;->a:Lq7/d;

    invoke-virtual {v0, p0}, Lq7/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lq7/e;->a()V

    sget-object v0, Lq7/e;->a:Lq7/d;

    invoke-virtual {v0, p0}, Lq7/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lq7/e;->a()V

    sget-object v0, Lq7/e;->a:Lq7/d;

    invoke-virtual {v0, p0}, Lq7/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lq7/a;)V
    .locals 3

    invoke-static {}, Lb8/a;->i()Le8/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Le8/c;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lq7/e;->f(Lq7/a;[Le8/c;)V

    return-void
.end method

.method public static varargs f(Lq7/a;[Le8/c;)V
    .locals 2

    sget-boolean v0, Lq7/e;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lb8/b;->e()Lb8/b;

    move-result-object v0

    const-string v1, "XLog is already initialized, do not initialize again"

    invoke-virtual {v0, v1}, Lb8/b;->g(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lq7/e;->d:Z

    if-eqz p0, :cond_1

    sput-object p0, Lq7/e;->b:Lq7/a;

    new-instance p0, Le8/d;

    invoke-direct {p0, p1}, Le8/d;-><init>([Le8/c;)V

    sput-object p0, Lq7/e;->c:Le8/c;

    new-instance p1, Lq7/d;

    sget-object v0, Lq7/e;->b:Lq7/a;

    invoke-direct {p1, v0, p0}, Lq7/d;-><init>(Lq7/a;Le8/c;)V

    sput-object p1, Lq7/e;->a:Lq7/d;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please specify a LogConfiguration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Ljava/lang/String;)Lq7/d$a;
    .locals 1

    new-instance v0, Lq7/d$a;

    invoke-direct {v0}, Lq7/d$a;-><init>()V

    invoke-virtual {v0, p0}, Lq7/d$a;->x(Ljava/lang/String;)Lq7/d$a;

    move-result-object p0

    return-object p0
.end method
