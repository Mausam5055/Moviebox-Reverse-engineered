.class public Lne/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lne/d;

.field private final b:Lne/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lne/d;

    invoke-direct {v0}, Lne/d;-><init>()V

    iput-object v0, p0, Lne/b;->a:Lne/d;

    new-instance v1, Lne/c;

    invoke-direct {v1, v0}, Lne/c;-><init>(Lne/a;)V

    iput-object v1, p0, Lne/b;->b:Lne/c;

    return-void
.end method


# virtual methods
.method public a()Lne/a;
    .locals 1

    iget-object v0, p0, Lne/b;->b:Lne/c;

    return-object v0
.end method

.method public b()Lne/a;
    .locals 1

    iget-object v0, p0, Lne/b;->a:Lne/d;

    return-object v0
.end method
