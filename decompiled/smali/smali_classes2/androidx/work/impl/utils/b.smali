.class public final synthetic Landroidx/work/impl/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/work/impl/f1;

.field public final synthetic b:Ljava/util/UUID;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/f1;Ljava/util/UUID;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/b;->a:Landroidx/work/impl/f1;

    iput-object p2, p0, Landroidx/work/impl/utils/b;->b:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/b;->a:Landroidx/work/impl/f1;

    iget-object v1, p0, Landroidx/work/impl/utils/b;->b:Ljava/util/UUID;

    invoke-static {v0, v1}, Landroidx/work/impl/utils/e;->b(Landroidx/work/impl/f1;Ljava/util/UUID;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
