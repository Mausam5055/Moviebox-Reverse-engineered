.class public final synthetic Lcf/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/permissionx/guolindev/request/InvisibleFragment;


# direct methods
.method public synthetic constructor <init>(ZLcom/permissionx/guolindev/request/InvisibleFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcf/a0;->a:Z

    iput-object p2, p0, Lcf/a0;->b:Lcom/permissionx/guolindev/request/InvisibleFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcf/a0;->a:Z

    iget-object v1, p0, Lcf/a0;->b:Lcom/permissionx/guolindev/request/InvisibleFragment;

    invoke-static {v0, v1}, Lcom/permissionx/guolindev/request/InvisibleFragment;->b0(ZLcom/permissionx/guolindev/request/InvisibleFragment;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
