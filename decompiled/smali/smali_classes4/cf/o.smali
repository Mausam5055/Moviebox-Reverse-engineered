.class public final synthetic Lcf/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/permissionx/guolindev/request/InvisibleFragment;

.field public final synthetic b:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/permissionx/guolindev/request/InvisibleFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf/o;->a:Lcom/permissionx/guolindev/request/InvisibleFragment;

    iput-object p2, p0, Lcf/o;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcf/o;->a:Lcom/permissionx/guolindev/request/InvisibleFragment;

    iget-object v1, p0, Lcf/o;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->c0(Lcom/permissionx/guolindev/request/InvisibleFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
