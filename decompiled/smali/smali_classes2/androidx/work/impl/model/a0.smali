.class public final synthetic Landroidx/work/impl/model/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/work/impl/model/c0;

.field public final synthetic b:Landroidx/work/impl/model/y;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/c0;Landroidx/work/impl/model/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/a0;->a:Landroidx/work/impl/model/c0;

    iput-object p2, p0, Landroidx/work/impl/model/a0;->b:Landroidx/work/impl/model/y;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/model/a0;->a:Landroidx/work/impl/model/c0;

    iget-object v1, p0, Landroidx/work/impl/model/a0;->b:Landroidx/work/impl/model/y;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Landroidx/work/impl/model/c0;->d(Landroidx/work/impl/model/c0;Landroidx/work/impl/model/y;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
