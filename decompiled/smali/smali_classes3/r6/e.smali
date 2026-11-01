.class public final synthetic Lr6/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$m;

.field public final synthetic b:Lr6/f;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$m;Lr6/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr6/e;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    iput-object p2, p0, Lr6/e;->b:Lr6/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr6/e;->a:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v1, p0, Lr6/e;->b:Lr6/f;

    invoke-static {v0, v1}, Lr6/f;->d(Landroidx/recyclerview/widget/RecyclerView$m;Lr6/f;)V

    return-void
.end method
