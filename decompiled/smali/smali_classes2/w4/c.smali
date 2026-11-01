.class public Lw4/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lw4/b;

.field private b:Ln4/a;

.field protected c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw4/b;

    invoke-direct {v0}, Lw4/b;-><init>()V

    iput-object v0, p0, Lw4/c;->a:Lw4/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lw4/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw4/b;

    invoke-direct {v0}, Lw4/b;-><init>()V

    iput-object v0, p0, Lw4/c;->a:Lw4/b;

    iput-object p1, p0, Lw4/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lw4/b;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lw4/c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lw4/c;->a:Lw4/b;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lw4/b;->h(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lw4/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw4/c;->a(Lw4/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ln4/a;)V
    .locals 0

    iput-object p1, p0, Lw4/c;->b:Ln4/a;

    return-void
.end method
