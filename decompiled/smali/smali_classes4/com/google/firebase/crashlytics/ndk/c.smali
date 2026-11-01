.class Lcom/google/firebase/crashlytics/ndk/c;
.super Ljava/lang/Object;

# interfaces
.implements Lob/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/ndk/c$a;
    }
.end annotation


# static fields
.field private static e:Lcom/google/firebase/crashlytics/ndk/c;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/ndk/a;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/google/firebase/crashlytics/ndk/c$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/ndk/a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/ndk/c;->b:Z

    return-void
.end method

.method public static synthetic e(Lcom/google/firebase/crashlytics/ndk/c;Ljava/lang/String;Ljava/lang/String;JLsb/e;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/firebase/crashlytics/ndk/c;->g(Ljava/lang/String;Ljava/lang/String;JLsb/e;)V

    return-void
.end method

.method static f(Landroid/content/Context;Z)Lcom/google/firebase/crashlytics/ndk/c;
    .locals 3

    new-instance v0, Lcom/google/firebase/crashlytics/ndk/a;

    new-instance v1, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/ndk/JniNativeApi;-><init>(Landroid/content/Context;)V

    new-instance v2, Lvb/g;

    invoke-direct {v2, p0}, Lvb/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/firebase/crashlytics/ndk/a;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/ndk/e;Lvb/g;)V

    new-instance p0, Lcom/google/firebase/crashlytics/ndk/c;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/crashlytics/ndk/c;-><init>(Lcom/google/firebase/crashlytics/ndk/a;Z)V

    sput-object p0, Lcom/google/firebase/crashlytics/ndk/c;->e:Lcom/google/firebase/crashlytics/ndk/c;

    return-object p0
.end method

.method private synthetic g(Ljava/lang/String;Ljava/lang/String;JLsb/e;)V
    .locals 8

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initializing native session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/google/firebase/crashlytics/ndk/a;->k(Ljava/lang/String;Ljava/lang/String;JLsb/e;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to initialize Crashlytics NDK for session "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lob/g;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lob/h;
    .locals 2

    new-instance v0, Lcom/google/firebase/crashlytics/ndk/g;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    invoke-virtual {v1, p1}, Lcom/google/firebase/crashlytics/ndk/a;->d(Ljava/lang/String;)Lcom/google/firebase/crashlytics/ndk/f;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/ndk/g;-><init>(Lcom/google/firebase/crashlytics/ndk/f;)V

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/ndk/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized c(Ljava/lang/String;Ljava/lang/String;JLsb/e;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/c;->c:Ljava/lang/String;

    new-instance v7, Lcom/google/firebase/crashlytics/ndk/b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/crashlytics/ndk/b;-><init>(Lcom/google/firebase/crashlytics/ndk/c;Ljava/lang/String;Ljava/lang/String;JLsb/e;)V

    iput-object v7, p0, Lcom/google/firebase/crashlytics/ndk/c;->d:Lcom/google/firebase/crashlytics/ndk/c$a;

    iget-boolean p1, p0, Lcom/google/firebase/crashlytics/ndk/c;->b:Z

    if-eqz p1, :cond_0

    invoke-interface {v7}, Lcom/google/firebase/crashlytics/ndk/c$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/c;->a:Lcom/google/firebase/crashlytics/ndk/a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/ndk/a;->j(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
