.class Landroidx/core/view/MenuHostHelper$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/MenuHostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/Lifecycle;

.field private b:Landroidx/lifecycle/r;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/MenuHostHelper$a;->a:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/core/view/MenuHostHelper$a;->b:Landroidx/lifecycle/r;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/MenuHostHelper$a;->a:Landroidx/lifecycle/Lifecycle;

    iget-object v1, p0, Landroidx/core/view/MenuHostHelper$a;->b:Landroidx/lifecycle/r;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/MenuHostHelper$a;->b:Landroidx/lifecycle/r;

    return-void
.end method
