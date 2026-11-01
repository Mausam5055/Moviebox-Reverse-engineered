.class public Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;
.super Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;


# static fields
.field private static volatile j:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;-><init>()V

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->h()V

    return-void
.end method

.method public static c(Z)V
    .locals 0

    return-void
.end method

.method public static l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;
    .locals 2

    sget-object v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->j:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->j:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->j:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

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
    sget-object v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->j:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/setting/g;Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object p1

    :cond_0
    const-string v0, "authority_general_data"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/b;->t0()I

    move-result p1

    goto :goto_0

    :cond_1
    const-string v0, "authority_device_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/b;->s0()I

    move-result p1

    goto :goto_0

    :cond_2
    const-string v0, "authority_serial_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/mbridge/msdk/setting/b;->u0()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/setting/h;->d(Ljava/lang/String;)Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mbridge/msdk/setting/h;->b()Lcom/mbridge/msdk/setting/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/h;->a()Lcom/mbridge/msdk/setting/g;

    move-result-object v0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->h0()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->a(Lcom/mbridge/msdk/setting/g;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_1
    if-ne v4, v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->a(Lcom/mbridge/msdk/setting/g;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const-string v5, "authority_other"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v2

    :cond_4
    :goto_3
    const-string v5, "authority_device_id"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->e()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    invoke-virtual {v0}, Lcom/mbridge/msdk/setting/b;->E0()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_7

    :cond_6
    :goto_4
    move v1, v2

    goto :goto_5

    :cond_7
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->a(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_6

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    return v1
.end method
