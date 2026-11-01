.class public final Lcom/amazonaws/logging/ConsoleLog;
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

    iput-object v0, p0, Lcom/amazonaws/logging/ConsoleLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    iput-object p1, p0, Lcom/amazonaws/logging/ConsoleLog;->a:Ljava/lang/String;

    return-void
.end method

.method private l()Lcom/amazonaws/logging/LogFactory$Level;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/logging/ConsoleLog;->b:Lcom/amazonaws/logging/LogFactory$Level;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/amazonaws/logging/LogFactory;->a()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    return-object v0
.end method

.method private o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/amazonaws/logging/ConsoleLog;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p2, v2, p1

    const-string p1, "%s/%s: %s\n"

    invoke-virtual {v0, p1, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public c()Z
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->INFO:Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->DEBUG:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->ERROR:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lcom/amazonaws/logging/ConsoleLog;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/amazonaws/logging/ConsoleLog;->o(Lcom/amazonaws/logging/LogFactory$Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->TRACE:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public n()Z
    .locals 2

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amazonaws/logging/ConsoleLog;->l()Lcom/amazonaws/logging/LogFactory$Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v0

    sget-object v1, Lcom/amazonaws/logging/LogFactory$Level;->WARN:Lcom/amazonaws/logging/LogFactory$Level;

    invoke-virtual {v1}, Lcom/amazonaws/logging/LogFactory$Level;->getValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
