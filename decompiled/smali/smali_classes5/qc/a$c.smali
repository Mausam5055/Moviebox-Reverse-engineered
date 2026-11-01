.class final Lqc/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Lqc/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lqc/a$c;

.field private b:Luz/a;

.field private c:Luz/a;

.field private d:Luz/a;

.field private e:Luz/a;

.field private f:Luz/a;

.field private g:Luz/a;

.field private h:Luz/a;

.field private i:Luz/a;


# direct methods
.method private constructor <init>(Lrc/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lqc/a$c;->a:Lqc/a$c;

    invoke-direct {p0, p1}, Lqc/a$c;->b(Lrc/a;)V

    return-void
.end method

.method synthetic constructor <init>(Lrc/a;Lqc/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lqc/a$c;-><init>(Lrc/a;)V

    return-void
.end method

.method private b(Lrc/a;)V
    .locals 8

    invoke-static {p1}, Lrc/c;->a(Lrc/a;)Lrc/c;

    move-result-object v0

    iput-object v0, p0, Lqc/a$c;->b:Luz/a;

    invoke-static {p1}, Lrc/e;->a(Lrc/a;)Lrc/e;

    move-result-object v0

    iput-object v0, p0, Lqc/a$c;->c:Luz/a;

    invoke-static {p1}, Lrc/d;->a(Lrc/a;)Lrc/d;

    move-result-object v0

    iput-object v0, p0, Lqc/a$c;->d:Luz/a;

    invoke-static {p1}, Lrc/h;->a(Lrc/a;)Lrc/h;

    move-result-object v0

    iput-object v0, p0, Lqc/a$c;->e:Luz/a;

    invoke-static {p1}, Lrc/f;->a(Lrc/a;)Lrc/f;

    move-result-object v0

    iput-object v0, p0, Lqc/a$c;->f:Luz/a;

    invoke-static {p1}, Lrc/b;->a(Lrc/a;)Lrc/b;

    move-result-object v0

    iput-object v0, p0, Lqc/a$c;->g:Luz/a;

    invoke-static {p1}, Lrc/g;->a(Lrc/a;)Lrc/g;

    move-result-object v7

    iput-object v7, p0, Lqc/a$c;->h:Luz/a;

    iget-object v1, p0, Lqc/a$c;->b:Luz/a;

    iget-object v2, p0, Lqc/a$c;->c:Luz/a;

    iget-object v3, p0, Lqc/a$c;->d:Luz/a;

    iget-object v4, p0, Lqc/a$c;->e:Luz/a;

    iget-object v5, p0, Lqc/a$c;->f:Luz/a;

    iget-object v6, p0, Lqc/a$c;->g:Luz/a;

    invoke-static/range {v1 .. v7}, Lpc/g;->a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Lpc/g;

    move-result-object p1

    invoke-static {p1}, Lhz/a;->a(Luz/a;)Luz/a;

    move-result-object p1

    iput-object p1, p0, Lqc/a$c;->i:Luz/a;

    return-void
.end method


# virtual methods
.method public a()Lpc/e;
    .locals 1

    iget-object v0, p0, Lqc/a$c;->i:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpc/e;

    return-object v0
.end method
