.class public Lhe/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lhe/d;

.field private final b:Lhe/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhe/d;

    invoke-direct {v0}, Lhe/d;-><init>()V

    iput-object v0, p0, Lhe/b;->a:Lhe/d;

    new-instance v1, Lhe/c;

    invoke-direct {v1, v0}, Lhe/c;-><init>(Lhe/a;)V

    iput-object v1, p0, Lhe/b;->b:Lhe/c;

    return-void
.end method


# virtual methods
.method public a()Lhe/a;
    .locals 1

    iget-object v0, p0, Lhe/b;->b:Lhe/c;

    return-object v0
.end method

.method public b()Lhe/a;
    .locals 1

    iget-object v0, p0, Lhe/b;->a:Lhe/d;

    return-object v0
.end method
