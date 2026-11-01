.class public final synthetic Lxu/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lxu/b;

.field public final synthetic c:Lou/c;

.field public final synthetic d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lxu/b;Lou/c;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxu/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lxu/c;->b:Lxu/b;

    iput-object p3, p0, Lxu/c;->c:Lou/c;

    iput-object p4, p0, Lxu/c;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Lxu/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lxu/c;->b:Lxu/b;

    iget-object v2, p0, Lxu/c;->c:Lou/c;

    iget-object v3, p0, Lxu/c;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lxu/d;->a(Landroid/content/Context;Lxu/b;Lou/c;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
