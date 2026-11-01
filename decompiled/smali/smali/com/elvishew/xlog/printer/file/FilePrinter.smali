.class public Lcom/elvishew/xlog/printer/file/FilePrinter;
.super Ljava/lang/Object;

# interfaces
.implements Le8/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;,
        Lcom/elvishew/xlog/printer/file/FilePrinter$c;,
        Lcom/elvishew/xlog/printer/file/FilePrinter$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lh8/b;

.field private final c:Lf8/a;

.field private final d:Lg8/a;

.field private e:Lr7/c;

.field private f:Li8/b;

.field private volatile g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;


# direct methods
.method constructor <init>(Lcom/elvishew/xlog/printer/file/FilePrinter$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->b:Lh8/b;

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->b:Lh8/b;

    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->c:Lf8/a;

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->c:Lf8/a;

    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->d:Lg8/a;

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->d:Lg8/a;

    iget-object v0, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->e:Lr7/c;

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->e:Lr7/c;

    iget-object p1, p1, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->f:Li8/b;

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    new-instance p1, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;-><init>(Lcom/elvishew/xlog/printer/file/FilePrinter;Lcom/elvishew/xlog/printer/file/FilePrinter$a;)V

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    invoke-direct {p0}, Lcom/elvishew/xlog/printer/file/FilePrinter;->c()V

    return-void
.end method

.method static synthetic b(Lcom/elvishew/xlog/printer/file/FilePrinter;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/elvishew/xlog/printer/file/FilePrinter;->e(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->d:Lg8/a;

    invoke-interface {v4, v3}, Lg8/a;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private e(JILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    invoke-virtual {v0}, Li8/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    invoke-virtual {v1}, Li8/b;->e()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->b:Lh8/b;

    invoke-interface {v2}, Lh8/b;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->b:Lh8/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v2, p3, v3, v4}, Lh8/b;->a(IJ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    invoke-virtual {v0}, Li8/b;->b()Z

    invoke-direct {p0}, Lcom/elvishew/xlog/printer/file/FilePrinter;->d()V

    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li8/b;->f(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    move-object v0, v2

    :cond_4
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    invoke-virtual {v1}, Li8/b;->c()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->c:Lf8/a;

    invoke-interface {v2, v1}, Lf8/b;->b(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    invoke-virtual {v2}, Li8/b;->b()Z

    iget-object v2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->c:Lf8/a;

    invoke-static {v1, v2}, Lc8/b;->a(Ljava/io/File;Lf8/a;)V

    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Li8/b;->f(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->e:Lr7/c;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lr7/c;->a(JILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->f:Li8/b;

    invoke-virtual {p2, p1}, Li8/b;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_0
    invoke-static {}, Lb8/b;->e()Lb8/b;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "File name should not be empty, ignore log: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lb8/b;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    invoke-virtual {v0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    invoke-virtual {v0}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->start()V

    :cond_0
    iget-object v6, p0, Lcom/elvishew/xlog/printer/file/FilePrinter;->g:Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;

    new-instance v7, Lcom/elvishew/xlog/printer/file/FilePrinter$c;

    move-object v0, v7

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/elvishew/xlog/printer/file/FilePrinter$c;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/elvishew/xlog/printer/file/FilePrinter$Worker;->enqueue(Lcom/elvishew/xlog/printer/file/FilePrinter$c;)V

    return-void
.end method
