.class Landroidx/work/impl/utils/LiveDataUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/utils/LiveDataUtils;->a(Landroidx/lifecycle/LiveData;Ll/a;Lj4/c;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field final synthetic b:Lj4/c;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ll/a;

.field final synthetic e:Landroidx/lifecycle/z;


# direct methods
.method constructor <init>(Lj4/c;Ljava/lang/Object;Ll/a;Landroidx/lifecycle/z;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/impl/utils/LiveDataUtils$1;->b:Lj4/c;

    iput-object p2, p0, Landroidx/work/impl/utils/LiveDataUtils$1;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/work/impl/utils/LiveDataUtils$1;->d:Ll/a;

    iput-object p4, p0, Landroidx/work/impl/utils/LiveDataUtils$1;->e:Landroidx/lifecycle/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/utils/LiveDataUtils$1;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/LiveDataUtils$1;->b:Lj4/c;

    new-instance v1, Landroidx/work/impl/utils/LiveDataUtils$1$1;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/utils/LiveDataUtils$1$1;-><init>(Landroidx/work/impl/utils/LiveDataUtils$1;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lj4/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method
