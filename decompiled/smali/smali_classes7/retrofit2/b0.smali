.class abstract Lretrofit2/b0;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/util/concurrent/Executor;

.field static final b:Lretrofit2/d0;

.field static final c:Lretrofit2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.vm.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x0

    const-string v2, "RoboVM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Dalvik"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object v1, Lretrofit2/b0;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit2/d0$b;

    invoke-direct {v0}, Lretrofit2/d0$b;-><init>()V

    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    new-instance v0, Lretrofit2/c$a;

    invoke-direct {v0}, Lretrofit2/c$a;-><init>()V

    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    goto :goto_0

    :cond_0
    new-instance v0, Lretrofit2/a;

    invoke-direct {v0}, Lretrofit2/a;-><init>()V

    sput-object v0, Lretrofit2/b0;->a:Ljava/util/concurrent/Executor;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    new-instance v0, Lretrofit2/d0$a;

    invoke-direct {v0}, Lretrofit2/d0$a;-><init>()V

    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    new-instance v0, Lretrofit2/c$a;

    invoke-direct {v0}, Lretrofit2/c$a;-><init>()V

    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    goto :goto_0

    :cond_1
    new-instance v0, Lretrofit2/d0;

    invoke-direct {v0}, Lretrofit2/d0;-><init>()V

    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    new-instance v0, Lretrofit2/c;

    invoke-direct {v0}, Lretrofit2/c;-><init>()V

    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    goto :goto_0

    :cond_2
    sput-object v1, Lretrofit2/b0;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lretrofit2/d0;

    invoke-direct {v0}, Lretrofit2/d0;-><init>()V

    sput-object v0, Lretrofit2/b0;->b:Lretrofit2/d0;

    new-instance v0, Lretrofit2/c;

    invoke-direct {v0}, Lretrofit2/c;-><init>()V

    sput-object v0, Lretrofit2/b0;->c:Lretrofit2/c;

    :goto_0
    return-void
.end method
