.class public final synthetic Lcf/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcf/o0;

.field public final synthetic b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

.field public final synthetic c:Z

.field public final synthetic d:Lcf/e;


# direct methods
.method public synthetic constructor <init>(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/k0;->a:Lcf/o0;

    iput-object p2, p0, Lcf/k0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iput-boolean p3, p0, Lcf/k0;->c:Z

    iput-object p4, p0, Lcf/k0;->d:Lcf/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcf/k0;->a:Lcf/o0;

    iget-object v1, p0, Lcf/k0;->b:Lcom/permissionx/guolindev/dialog/RationaleDialog;

    iget-boolean v2, p0, Lcf/k0;->c:Z

    iget-object v3, p0, Lcf/k0;->d:Lcf/e;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcf/o0;->f(Lcf/o0;Lcom/permissionx/guolindev/dialog/RationaleDialog;ZLcf/e;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
