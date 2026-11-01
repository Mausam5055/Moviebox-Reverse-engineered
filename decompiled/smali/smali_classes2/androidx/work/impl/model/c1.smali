.class public final synthetic Landroidx/work/impl/model/c1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/work/impl/model/r1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/c1;->a:Ljava/lang/String;

    iput-object p2, p0, Landroidx/work/impl/model/c1;->b:Ljava/util/List;

    iput-object p3, p0, Landroidx/work/impl/model/c1;->c:Landroidx/work/impl/model/r1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/model/c1;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/model/c1;->b:Ljava/util/List;

    iget-object v2, p0, Landroidx/work/impl/model/c1;->c:Landroidx/work/impl/model/r1;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, p1}, Landroidx/work/impl/model/r1;->b0(Ljava/lang/String;Ljava/util/List;Landroidx/work/impl/model/r1;Lz3/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
