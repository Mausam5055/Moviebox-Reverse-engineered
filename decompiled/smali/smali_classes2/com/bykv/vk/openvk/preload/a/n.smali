.class public final Lcom/bykv/vk/openvk/preload/a/n;
.super Lcom/bykv/vk/openvk/preload/a/i;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/i;-><init>()V

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/i;-><init>()V

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/i;-><init>()V

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/falconx/a/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a(Lcom/bykv/vk/openvk/preload/a/n;)Z
    .locals 2

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final a()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/preload/a/b/f;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/bykv/vk/openvk/preload/a/b/f;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    check-cast v0, Ljava/lang/Number;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/bykv/vk/openvk/preload/a/n;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/bykv/vk/openvk/preload/a/n;

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/a/n;->a(Lcom/bykv/vk/openvk/preload/a/n;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/a/n;->a(Lcom/bykv/vk/openvk/preload/a/n;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double p1, v2, v4

    if-eqz p1, :cond_7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v0

    :cond_8
    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    return v0

    :cond_0
    invoke-static {p0}, Lcom/bykv/vk/openvk/preload/a/n;->a(Lcom/bykv/vk/openvk/preload/a/n;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/preload/a/n;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
