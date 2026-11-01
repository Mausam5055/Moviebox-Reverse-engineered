.class public Lrb/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrb/e$b;
    }
.end annotation


# static fields
.field private static final c:Lrb/e$b;


# instance fields
.field private final a:Lvb/g;

.field private b:Lrb/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lrb/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrb/e$b;-><init>(Lrb/e$a;)V

    sput-object v0, Lrb/e;->c:Lrb/e$b;

    return-void
.end method

.method public constructor <init>(Lvb/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrb/e;->a:Lvb/g;

    sget-object p1, Lrb/e;->c:Lrb/e$b;

    iput-object p1, p0, Lrb/e;->b:Lrb/c;

    return-void
.end method

.method public constructor <init>(Lvb/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lrb/e;-><init>(Lvb/g;)V

    invoke-virtual {p0, p2}, Lrb/e;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lrb/e;->a:Lvb/g;

    const-string v1, "userlog"

    invoke-virtual {v0, p1, v1}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lrb/e;->b:Lrb/c;

    invoke-interface {v0}, Lrb/c;->d()V

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lrb/e;->b:Lrb/c;

    invoke-interface {v0}, Lrb/c;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrb/e;->b:Lrb/c;

    invoke-interface {v0}, Lrb/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrb/e;->b:Lrb/c;

    invoke-interface {v0}, Lrb/c;->a()V

    sget-object v0, Lrb/e;->c:Lrb/e$b;

    iput-object v0, p0, Lrb/e;->b:Lrb/c;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lrb/e;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lrb/e;->f(Ljava/io/File;I)V

    return-void
.end method

.method f(Ljava/io/File;I)V
    .locals 1

    new-instance v0, Lrb/h;

    invoke-direct {v0, p1, p2}, Lrb/h;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Lrb/e;->b:Lrb/c;

    return-void
.end method

.method public g(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lrb/e;->b:Lrb/c;

    invoke-interface {v0, p1, p2, p3}, Lrb/c;->e(JLjava/lang/String;)V

    return-void
.end method
