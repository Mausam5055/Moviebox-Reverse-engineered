.class public final synthetic Landroidx/work/impl/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroidx/work/impl/utils/m;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/m;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/l;->a:Landroidx/work/impl/utils/m;

    iput p2, p0, Landroidx/work/impl/utils/l;->b:I

    iput p3, p0, Landroidx/work/impl/utils/l;->c:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/utils/l;->a:Landroidx/work/impl/utils/m;

    iget v1, p0, Landroidx/work/impl/utils/l;->b:I

    iget v2, p0, Landroidx/work/impl/utils/l;->c:I

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/m;->a(Landroidx/work/impl/utils/m;II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
