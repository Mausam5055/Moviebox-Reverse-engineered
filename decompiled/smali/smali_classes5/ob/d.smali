.class public final Lob/d;
.super Ljava/lang/Object;

# interfaces
.implements Lob/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob/d$b;
    }
.end annotation


# static fields
.field private static final c:Lob/h;


# instance fields
.field private final a:Lic/a;

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lob/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lob/d$b;-><init>(Lob/d$a;)V

    sput-object v0, Lob/d;->c:Lob/h;

    return-void
.end method

.method public constructor <init>(Lic/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lob/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lob/d;->a:Lic/a;

    new-instance v0, Lob/b;

    invoke-direct {v0, p0}, Lob/b;-><init>(Lob/d;)V

    invoke-interface {p1, v0}, Lic/a;->a(Lic/a$a;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ljava/lang/String;JLsb/e;Lic/b;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lob/d;->h(Ljava/lang/String;Ljava/lang/String;JLsb/e;Lic/b;)V

    return-void
.end method

.method public static synthetic f(Lob/d;Lic/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lob/d;->g(Lic/b;)V

    return-void
.end method

.method private synthetic g(Lic/b;)V
    .locals 2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crashlytics native component now available."

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lob/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob/a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic h(Ljava/lang/String;Ljava/lang/String;JLsb/e;Lic/b;)V
    .locals 6

    invoke-interface {p5}, Lic/b;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lob/a;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lob/a;->c(Ljava/lang/String;Ljava/lang/String;JLsb/e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lob/h;
    .locals 1

    iget-object v0, p0, Lob/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lob/a;

    if-nez v0, :cond_0

    sget-object p1, Lob/d;->c:Lob/h;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lob/a;->a(Ljava/lang/String;)Lob/h;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lob/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lob/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lob/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;JLsb/e;)V
    .locals 8

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferring native open session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lob/d;->a:Lic/a;

    new-instance v7, Lob/c;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lob/c;-><init>(Ljava/lang/String;Ljava/lang/String;JLsb/e;)V

    invoke-interface {v0, v7}, Lic/a;->a(Lic/a$a;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lob/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lob/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lob/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
