.class public final synthetic Lcom/transsion/shorttv_pugc/ui/fragment/h0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/h0;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    iput p2, p0, Lcom/transsion/shorttv_pugc/ui/fragment/h0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/fragment/h0;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lcom/transsion/shorttv_pugc/ui/fragment/h0;->b:I

    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShotTvDialogListFragment;->g0(Landroidx/recyclerview/widget/LinearLayoutManager;I)V

    return-void
.end method
