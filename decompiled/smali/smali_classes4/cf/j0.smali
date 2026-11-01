.class public final synthetic Lcf/j0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcf/o0;

.field public final synthetic b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public final synthetic c:Z

.field public final synthetic d:Lcf/e;

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/j0;->a:Lcf/o0;

    iput-object p2, p0, Lcf/j0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iput-boolean p3, p0, Lcf/j0;->c:Z

    iput-object p4, p0, Lcf/j0;->d:Lcf/e;

    iput-object p5, p0, Lcf/j0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcf/j0;->a:Lcf/o0;

    iget-object v1, p0, Lcf/j0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iget-boolean v2, p0, Lcf/j0;->c:Z

    iget-object v3, p0, Lcf/j0;->d:Lcf/e;

    iget-object v4, p0, Lcf/j0;->e:Ljava/util/List;

    move-object v5, p1

    check-cast v5, Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcf/o0;->h(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Ljava/util/List;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
