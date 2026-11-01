.class public final synthetic Landroidx/work/impl/model/y0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/work/impl/model/r1;

.field public final synthetic b:Landroidx/work/impl/model/j0;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/y0;->a:Landroidx/work/impl/model/r1;

    iput-object p2, p0, Landroidx/work/impl/model/y0;->b:Landroidx/work/impl/model/j0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/model/y0;->a:Landroidx/work/impl/model/r1;

    iget-object v1, p0, Landroidx/work/impl/model/y0;->b:Landroidx/work/impl/model/j0;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/model/r1;->Q(Landroidx/work/impl/model/r1;Landroidx/work/impl/model/j0;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
