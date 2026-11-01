.class public final synthetic Lxm/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lxm/c;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lxm/c;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxm/b;->a:Lxm/c;

    iput p2, p0, Lxm/b;->b:I

    iput p3, p0, Lxm/b;->c:I

    iput p4, p0, Lxm/b;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lxm/b;->a:Lxm/c;

    iget v1, p0, Lxm/b;->b:I

    iget v2, p0, Lxm/b;->c:I

    iget v3, p0, Lxm/b;->d:I

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lxm/c;->b(Lxm/c;IIILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
