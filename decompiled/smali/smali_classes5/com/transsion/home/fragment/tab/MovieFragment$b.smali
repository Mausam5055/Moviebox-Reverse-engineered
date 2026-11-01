.class public final Lcom/transsion/home/fragment/tab/MovieFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/tab/MovieFragment;->k1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/tab/MovieFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/tab/MovieFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release tab "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "MovieFragment"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 10

    sget-object v0, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected tab "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "MovieFragment"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->B1(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/home/fragment/tab/MovieFragment;->T0(Lcom/transsion/home/fragment/tab/MovieFragment;J)V

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->K0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/bean/FilterItems;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->f1(Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->S0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/lang/String;)V

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->E0(Lcom/transsion/home/fragment/tab/MovieFragment;I)V

    sget-object v1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->N0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->N0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v3

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/transsion/baselib/helper/a;->j(Lcom/transsion/baselib/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->J0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lhl/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lhl/b;->e()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->I0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->R0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/tab/MovieFragment;->O0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->I0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/transsion/home/fragment/tab/MovieFragment;->U0(Lcom/transsion/home/fragment/tab/MovieFragment;Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lgl/s;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lgl/s;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 11

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/home/fragment/tab/MovieFragment;->B1(Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    iget-object v3, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v3}, Lcom/transsion/home/fragment/tab/MovieFragment;->K0(Lcom/transsion/home/fragment/tab/MovieFragment;)Lcom/transsion/home/bean/FilterItems;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/home/fragment/tab/MovieFragment;->f1(Lcom/transsion/home/bean/FilterItems;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v4}, Lcom/transsion/home/fragment/tab/MovieFragment;->N0(Lcom/transsion/home/fragment/tab/MovieFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/home/fragment/tab/MovieFragment$b;->a:Lcom/transsion/home/fragment/tab/MovieFragment;

    invoke-static {v5}, Lcom/transsion/home/fragment/tab/MovieFragment;->P0(Lcom/transsion/home/fragment/tab/MovieFragment;)J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/transsion/baselib/helper/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Llg/a;->a:Llg/a$a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unselected tab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "MovieFragment"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
