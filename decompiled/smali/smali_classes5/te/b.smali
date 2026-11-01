.class public Lte/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lte/d;

.field private final b:Lte/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lte/d;

    invoke-direct {v0}, Lte/d;-><init>()V

    iput-object v0, p0, Lte/b;->a:Lte/d;

    new-instance v1, Lte/c;

    invoke-direct {v1, v0}, Lte/c;-><init>(Lte/a;)V

    iput-object v1, p0, Lte/b;->b:Lte/c;

    return-void
.end method


# virtual methods
.method public a()Lte/a;
    .locals 1

    iget-object v0, p0, Lte/b;->b:Lte/c;

    return-object v0
.end method

.method public b()Lte/a;
    .locals 1

    iget-object v0, p0, Lte/b;->a:Lte/d;

    return-object v0
.end method
