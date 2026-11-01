.class public final synthetic Lcom/transsion/moviedetail/fragment/l1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Lcom/transsion/moviedetail/fragment/StarringFragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetail/fragment/StarringFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetail/fragment/l1;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/transsion/moviedetail/fragment/l1;->b:Lcom/transsion/moviedetail/fragment/StarringFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/moviedetail/fragment/l1;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/transsion/moviedetail/fragment/l1;->b:Lcom/transsion/moviedetail/fragment/StarringFragment;

    check-cast p1, Lkotlin/Pair;

    invoke-static {v0, v1, p1}, Lcom/transsion/moviedetail/fragment/StarringFragment;->a0(Landroidx/fragment/app/Fragment;Lcom/transsion/moviedetail/fragment/StarringFragment;Lkotlin/Pair;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
