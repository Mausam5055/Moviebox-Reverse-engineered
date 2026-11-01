.class public final synthetic Lcf/x;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Lcom/permissionx/guolindev/request/InvisibleFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/permissionx/guolindev/request/InvisibleFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/x;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcf/x;->b:Lcom/permissionx/guolindev/request/InvisibleFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcf/x;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcf/x;->b:Lcom/permissionx/guolindev/request/InvisibleFragment;

    invoke-static {v0, v1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->X(Landroidx/fragment/app/FragmentActivity;Lcom/permissionx/guolindev/request/InvisibleFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
