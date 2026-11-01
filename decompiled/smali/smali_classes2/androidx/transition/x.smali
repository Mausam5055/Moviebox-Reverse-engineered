.class Landroidx/transition/x;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroidx/collection/a;

.field final b:Landroid/util/SparseArray;

.field final c:Landroidx/collection/x;

.field final d:Landroidx/collection/a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/x;->a:Landroidx/collection/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/transition/x;->b:Landroid/util/SparseArray;

    new-instance v0, Landroidx/collection/x;

    invoke-direct {v0}, Landroidx/collection/x;-><init>()V

    iput-object v0, p0, Landroidx/transition/x;->c:Landroidx/collection/x;

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    iput-object v0, p0, Landroidx/transition/x;->d:Landroidx/collection/a;

    return-void
.end method
