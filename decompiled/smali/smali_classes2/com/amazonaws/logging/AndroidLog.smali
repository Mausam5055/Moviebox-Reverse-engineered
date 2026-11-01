.class public Lcom/amazonaws/logging/AndroidLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/amazonaws/logging/LogFactory$Level;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    iput-object p1, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    return-void
.end method

.method private l()Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazonaws/logging/LogFactory;->a()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result p2

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    if-gt p2, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/logging/AndroidLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/logging/AndroidLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
