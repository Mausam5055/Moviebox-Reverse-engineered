.class public Lb8/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lb8/b;->e()Lb8/b;

    move-result-object v0

    invoke-virtual {v0}, Lb8/b;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lf8/a;
    .locals 4

    new-instance v0, Lc8/a;

    new-instance v1, Lf8/c;

    const-wide/32 v2, 0x100000

    invoke-direct {v1, v2, v3}, Lf8/c;-><init>(J)V

    invoke-direct {v0, v1}, Lc8/a;-><init>(Lf8/b;)V

    return-object v0
.end method

.method public static c()Lt7/a;
    .locals 1

    new-instance v0, Lt7/b;

    invoke-direct {v0}, Lt7/b;-><init>()V

    return-object v0
.end method

.method public static d()Lg8/a;
    .locals 1

    new-instance v0, Lg8/b;

    invoke-direct {v0}, Lg8/b;-><init>()V

    return-object v0
.end method

.method public static e()Lh8/b;
    .locals 2

    new-instance v0, Lh8/a;

    const-string v1, "log"

    invoke-direct {v0, v1}, Lh8/a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Lr7/d;
    .locals 1

    new-instance v0, Lr7/b;

    invoke-direct {v0}, Lr7/b;-><init>()V

    return-object v0
.end method

.method public static g()Lr7/c;
    .locals 1

    new-instance v0, Lr7/b;

    invoke-direct {v0}, Lr7/b;-><init>()V

    return-object v0
.end method

.method public static h()Lu7/b;
    .locals 1

    new-instance v0, Lu7/a;

    invoke-direct {v0}, Lu7/a;-><init>()V

    return-object v0
.end method

.method public static i()Le8/c;
    .locals 1

    invoke-static {}, Lb8/b;->e()Lb8/b;

    move-result-object v0

    invoke-virtual {v0}, Lb8/b;->b()Le8/c;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ly7/b;
    .locals 1

    new-instance v0, Ly7/a;

    invoke-direct {v0}, Ly7/a;-><init>()V

    return-object v0
.end method

.method public static k()Lz7/b;
    .locals 1

    new-instance v0, Lz7/a;

    invoke-direct {v0}, Lz7/a;-><init>()V

    return-object v0
.end method

.method public static l()Lw7/b;
    .locals 1

    new-instance v0, Lw7/a;

    invoke-direct {v0}, Lw7/a;-><init>()V

    return-object v0
.end method

.method public static m()Li8/b;
    .locals 1

    new-instance v0, Li8/a;

    invoke-direct {v0}, Li8/a;-><init>()V

    return-object v0
.end method

.method public static n()Lx7/b;
    .locals 1

    new-instance v0, Lx7/a;

    invoke-direct {v0}, Lx7/a;-><init>()V

    return-object v0
.end method
