.class public Lk4/a;
.super Ljava/lang/Object;


# static fields
.field private static c:Lk4/a;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lk4/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lk4/a;
    .locals 2

    const-class v0, Lk4/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk4/a;->c:Lk4/a;

    if-nez v1, :cond_0

    new-instance v1, Lk4/a;

    invoke-direct {v1, p0}, Lk4/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lk4/a;->c:Lk4/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lk4/a;->c:Lk4/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private f(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const-string v3, "tcrypto"

    const/4 v4, 0x0

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v4

    :cond_1
    :try_start_0
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    return-object p1

    :cond_2
    :try_start_1
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public b(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lk4/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lk4/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lk4/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lk4/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    invoke-static {}, Lnq/c;->b()Lnq/c;

    move-result-object v0

    iget-object v1, p0, Lk4/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lnq/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lnq/b;

    invoke-direct {v0}, Lnq/b;-><init>()V

    invoke-virtual {v0, p2}, Lnq/b;->e(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ln00/a;->c([B)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "rsaCrypter encrypt error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "keystore encrypt error"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "sp is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    iget-object v0, p0, Lk4/a;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lk4/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lk4/a;->b:Landroid/content/Context;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lk4/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return v1
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lk4/a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lk4/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lk4/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lk4/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    invoke-static {}, Lnq/c;->b()Lnq/c;

    move-result-object v1

    iget-object v2, p0, Lk4/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lnq/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lnq/b;

    invoke-direct {v0}, Lnq/b;-><init>()V

    invoke-virtual {v0, p1}, Ln00/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lnq/b;->d([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "rsaCrypter decrypt error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "keystore decrypt error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "sp is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lk4/a;->b:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lk4/a;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v0, p0, Lk4/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return-object v1
.end method
