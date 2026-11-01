.class public Lu4/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lq4/a;

.field private final b:Lq4/b;

.field private final c:Lq4/b;

.field private final d:Lq4/b;

.field private final e:Lq4/b;


# direct methods
.method constructor <init>(Lq4/a;Lq4/b;Lq4/b;Lq4/b;Lq4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu4/j;->a:Lq4/a;

    iput-object p2, p0, Lu4/j;->b:Lq4/b;

    iput-object p3, p0, Lu4/j;->c:Lq4/b;

    iput-object p4, p0, Lu4/j;->d:Lq4/b;

    iput-object p5, p0, Lu4/j;->e:Lq4/b;

    return-void
.end method


# virtual methods
.method public a()Lq4/a;
    .locals 1

    iget-object v0, p0, Lu4/j;->a:Lq4/a;

    return-object v0
.end method

.method public b()Lq4/b;
    .locals 1

    iget-object v0, p0, Lu4/j;->c:Lq4/b;

    return-object v0
.end method

.method public c()Lq4/b;
    .locals 1

    iget-object v0, p0, Lu4/j;->d:Lq4/b;

    return-object v0
.end method

.method public d()Lq4/b;
    .locals 1

    iget-object v0, p0, Lu4/j;->b:Lq4/b;

    return-object v0
.end method

.method public e()Lq4/b;
    .locals 1

    iget-object v0, p0, Lu4/j;->e:Lq4/b;

    return-object v0
.end method
