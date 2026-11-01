.class public Ltk/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Ltk/a;

.field private static c:Landroid/content/Context;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ltk/a;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Ltk/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ltk/a;
    .locals 2

    const-class v0, Ltk/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ltk/a;->b:Ltk/a;

    if-nez v1, :cond_0

    new-instance v1, Ltk/a;

    invoke-direct {v1, p0}, Ltk/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Ltk/a;->b:Ltk/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ltk/a;->b:Ltk/a;
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

.method private c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "tcrypto"

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltk/a;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    return-object p1

    :cond_2
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {v0}, Lcom/google/android/gms/internal/auth/a;->a(Landroid/os/UserManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    return-object p1

    :cond_3
    invoke-static {p1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Ltk/a;->a:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    return-object v2
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget-object v0, Ltk/a;->c:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lsk/e;->b()Lsk/e;

    move-result-object v0

    sget-object v2, Ltk/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lsk/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    sget-object v0, Ltk/a;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Ltk/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    :cond_2
    iget-object v0, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    :try_start_0
    new-instance v0, Lsk/d;

    sget-object v2, Ltk/a;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lsk/d;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lrk/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lsk/d;->d([B)[B

    move-result-object v0

    array-length v2, v0

    const/16 v2, 0x20

    new-array v3, v2, [B

    const/16 v4, 0x10

    new-array v5, v4, [B

    const/4 v6, 0x0

    invoke-static {v0, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lsk/a;

    invoke-direct {v0, v3, v5}, Lsk/a;-><init>([B[B)V

    aget-object p1, p1, v6

    invoke-virtual {v0, p1}, Lrk/a;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lsk/a;->d([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ltk/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-static {}, Lsk/e;->b()Lsk/e;

    move-result-object v0

    sget-object v1, Ltk/a;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lsk/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Ltk/a;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Ltk/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Lsk/b;

    invoke-direct {v0}, Lsk/b;-><init>()V

    new-instance v1, Lsk/d;

    sget-object v2, Ltk/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lsk/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lsk/b;->e(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lrk/a;->c([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lsk/b;->i()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lsk/d;->e([B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lrk/a;->c([B)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltk/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "sp is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "key not created"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
