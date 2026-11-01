.class public final synthetic Lul/m;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/i1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/i1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lul/m;->a:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lul/m;->a:Landroidx/compose/runtime/i1;

    invoke-static {v0}, Lcom/transsion/home/view/filter/popup/PopupFilterView;->b(Landroidx/compose/runtime/i1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
