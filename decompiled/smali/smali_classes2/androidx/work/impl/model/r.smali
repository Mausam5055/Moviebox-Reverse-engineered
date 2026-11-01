.class public final synthetic Landroidx/work/impl/model/r;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/work/impl/model/v;

.field public final synthetic b:Landroidx/work/impl/model/o;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/v;Landroidx/work/impl/model/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/r;->a:Landroidx/work/impl/model/v;

    iput-object p2, p0, Landroidx/work/impl/model/r;->b:Landroidx/work/impl/model/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/model/r;->a:Landroidx/work/impl/model/v;

    iget-object v1, p0, Landroidx/work/impl/model/r;->b:Landroidx/work/impl/model/o;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/model/v;->i(Landroidx/work/impl/model/v;Landroidx/work/impl/model/o;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
