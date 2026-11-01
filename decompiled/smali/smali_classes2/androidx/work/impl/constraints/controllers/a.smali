.class public final synthetic Landroidx/work/impl/constraints/controllers/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/work/impl/constraints/controllers/BaseConstraintController;

.field public final synthetic b:Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/constraints/controllers/BaseConstraintController;Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/a;->a:Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    iput-object p2, p0, Landroidx/work/impl/constraints/controllers/a;->b:Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$a;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/constraints/controllers/a;->a:Landroidx/work/impl/constraints/controllers/BaseConstraintController;

    iget-object v1, p0, Landroidx/work/impl/constraints/controllers/a;->b:Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$a;

    invoke-static {v0, v1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1;->a(Landroidx/work/impl/constraints/controllers/BaseConstraintController;Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$a;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
