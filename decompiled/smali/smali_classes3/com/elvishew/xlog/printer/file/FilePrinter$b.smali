.class public Lcom/elvishew/xlog/printer/file/FilePrinter$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elvishew/xlog/printer/file/FilePrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lh8/b;

.field c:Lf8/a;

.field d:Lg8/a;

.field e:Lr7/c;

.field f:Li8/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->a:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->b:Lh8/b;

    if-nez v0, :cond_0

    invoke-static {}, Lb8/a;->e()Lh8/b;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->b:Lh8/b;

    :cond_0
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->c:Lf8/a;

    if-nez v0, :cond_1

    invoke-static {}, Lb8/a;->b()Lf8/a;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->c:Lf8/a;

    :cond_1
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->d:Lg8/a;

    if-nez v0, :cond_2

    invoke-static {}, Lb8/a;->d()Lg8/a;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->d:Lg8/a;

    :cond_2
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->e:Lr7/c;

    if-nez v0, :cond_3

    invoke-static {}, Lb8/a;->g()Lr7/c;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->e:Lr7/c;

    :cond_3
    iget-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->f:Li8/b;

    if-nez v0, :cond_4

    invoke-static {}, Lb8/a;->m()Li8/b;

    move-result-object v0

    iput-object v0, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->f:Li8/b;

    :cond_4
    return-void
.end method


# virtual methods
.method public a(Lf8/b;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;
    .locals 1

    instance-of v0, p1, Lf8/a;

    if-nez v0, :cond_0

    new-instance v0, Lc8/a;

    invoke-direct {v0, p1}, Lc8/a;-><init>(Lf8/b;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Lf8/a;

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->c:Lf8/a;

    invoke-static {p1}, Lc8/b;->b(Lf8/a;)V

    return-object p0
.end method

.method public b()Lcom/elvishew/xlog/printer/file/FilePrinter;
    .locals 1

    invoke-direct {p0}, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->e()V

    new-instance v0, Lcom/elvishew/xlog/printer/file/FilePrinter;

    invoke-direct {v0, p0}, Lcom/elvishew/xlog/printer/file/FilePrinter;-><init>(Lcom/elvishew/xlog/printer/file/FilePrinter$b;)V

    return-object v0
.end method

.method public c(Lg8/a;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;
    .locals 0

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->d:Lg8/a;

    return-object p0
.end method

.method public d(Lh8/b;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;
    .locals 0

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->b:Lh8/b;

    return-object p0
.end method

.method public f(Lr7/c;)Lcom/elvishew/xlog/printer/file/FilePrinter$b;
    .locals 0

    iput-object p1, p0, Lcom/elvishew/xlog/printer/file/FilePrinter$b;->e:Lr7/c;

    return-object p0
.end method
