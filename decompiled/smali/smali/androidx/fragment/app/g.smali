.class public Landroidx/fragment/app/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/fragment/app/i;


# direct methods
.method private constructor <init>(Landroidx/fragment/app/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    return-void
.end method

.method public static b(Landroidx/fragment/app/i;)Landroidx/fragment/app/g;
    .locals 2

    new-instance v0, Landroidx/fragment/app/g;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/util/i;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/i;

    invoke-direct {v0, p0}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/i;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v1, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v0, v0, p1}, Landroidx/fragment/app/FragmentManager;->n(Landroidx/fragment/app/i;Landroidx/fragment/app/f;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->z()V

    return-void
.end method

.method public d(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->C(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->D()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->F()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->O()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->S()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->T()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->V()V

    return-void
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->c0(Z)Z

    move-result v0

    return v0
.end method

.method public l()Landroidx/fragment/app/FragmentManager;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d1()V

    return-void
.end method

.method public n(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->e:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->A0()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
