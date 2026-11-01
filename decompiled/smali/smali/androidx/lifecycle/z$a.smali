.class Landroidx/lifecycle/z$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/LiveData;

.field final b:Landroidx/lifecycle/c0;

.field c:I


# direct methods
.method constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/c0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/z$a;->c:I

    iput-object p1, p0, Landroidx/lifecycle/z$a;->a:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Landroidx/lifecycle/z$a;->b:Landroidx/lifecycle/c0;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/z$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->k(Landroidx/lifecycle/c0;)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/z$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    return-void
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/z$a;->c:I

    iget-object v1, p0, Landroidx/lifecycle/z$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->g()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/z$a;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->g()I

    move-result v0

    iput v0, p0, Landroidx/lifecycle/z$a;->c:I

    iget-object v0, p0, Landroidx/lifecycle/z$a;->b:Landroidx/lifecycle/c0;

    invoke-interface {v0, p1}, Landroidx/lifecycle/c0;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
