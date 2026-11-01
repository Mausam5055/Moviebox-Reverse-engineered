.class public final synthetic Lul/o;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/home/view/filter/popup/PopupFilterView;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/o;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iput-object p2, p0, Lul/o;->b:Ljava/util/List;

    iput p3, p0, Lul/o;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lul/o;->a:Lcom/transsion/home/view/filter/popup/PopupFilterView;

    iget-object v1, p0, Lul/o;->b:Ljava/util/List;

    iget v2, p0, Lul/o;->c:I

    check-cast p1, Landroidx/compose/runtime/i;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->c(Lcom/transsion/home/view/filter/popup/PopupFilterView;Ljava/util/List;ILandroidx/compose/runtime/i;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
