.class Lab/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lab/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/i;-><init>(Lab/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lab/i;


# direct methods
.method constructor <init>(Lab/i;)V
    .locals 0

    iput-object p1, p0, Lab/i$a;->a:Lab/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lab/p;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-object v0, p0, Lab/i$a;->a:Lab/i;

    invoke-static {v0}, Lab/i;->b(Lab/i;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lab/p;->e()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lab/i$a;->a:Lab/i;

    invoke-static {v0}, Lab/i;->d(Lab/i;)[Lab/p$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lab/p;->f(Landroid/graphics/Matrix;)Lab/p$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method

.method public b(Lab/p;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-object v0, p0, Lab/i$a;->a:Lab/i;

    invoke-static {v0}, Lab/i;->b(Lab/i;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lab/p;->e()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    iget-object v0, p0, Lab/i$a;->a:Lab/i;

    invoke-static {v0}, Lab/i;->c(Lab/i;)[Lab/p$g;

    move-result-object v0

    invoke-virtual {p1, p2}, Lab/p;->f(Landroid/graphics/Matrix;)Lab/p$g;

    move-result-object p1

    aput-object p1, v0, p3

    return-void
.end method
