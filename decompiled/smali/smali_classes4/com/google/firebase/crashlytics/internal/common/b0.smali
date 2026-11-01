.class Lcom/google/firebase/crashlytics/internal/common/b0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/internal/common/b0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/b0$a;

.field private final b:Lwb/b;

.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final d:Lob/a;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/internal/common/b0$a;Lwb/b;Ljava/lang/Thread$UncaughtExceptionHandler;Lob/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->a:Lcom/google/firebase/crashlytics/internal/common/b0$a;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lwb/b;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->d:Lob/a;

    return-void
.end method

.method private b(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Crashlytics will not record uncaught exception; null thread"

    invoke-virtual {p1, p2}, Lob/g;->d(Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Crashlytics will not record uncaught exception; null throwable"

    invoke-virtual {p1, p2}, Lob/g;->d(Ljava/lang/String;)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->d:Lob/a;

    invoke-interface {p1}, Lob/a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string p2, "Crashlytics will not record uncaught exception; native crash exists for session."

    invoke-virtual {p1, p2}, Lob/g;->b(Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7

    const-string v0, "Completed exception processing, but no default exception handler."

    const-string v1, "Completed exception processing. Invoking default exception handler."

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/b0;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->a:Lcom/google/firebase/crashlytics/internal/common/b0$a;

    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->b:Lwb/b;

    invoke-interface {v4, v5, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/b0$a;->a(Lwb/b;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_3

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v4

    const-string v5, "Uncaught exception will not be recorded by Crashlytics."

    invoke-virtual {v4, v5}, Lob/g;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_1

    :goto_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lob/g;->b(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :goto_2
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :goto_3
    :try_start_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v5

    const-string v6, "An error occurred in the uncaught exception handler"

    invoke-virtual {v5, v6, v4}, Lob/g;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v4, :cond_1

    goto :goto_1

    :goto_4
    return-void

    :goto_5
    iget-object v5, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v5, :cond_2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_2
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    invoke-virtual {p1, v0}, Lob/g;->b(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :goto_6
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/b0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v4
.end method
