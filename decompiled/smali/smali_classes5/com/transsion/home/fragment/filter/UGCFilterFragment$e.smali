.class public final Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/filter/UGCFilterFragment;->s1(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;->HOTTEST:Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;->LATEST:Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;->FOR_U:Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;

    :goto_1
    invoke-static {v0, v1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->U0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Lcom/transsion/home/fragment/filter/UGCFilterFragment$TabType;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {v0, p1, v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->F0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->K0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;)Lhl/b;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lhl/b;->e()V

    :cond_4
    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1, v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->V0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;I)V

    iget-object p1, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    invoke-static {p1, v2}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->T0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Z)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/home/fragment/filter/UGCFilterFragment$e;->a:Lcom/transsion/home/fragment/filter/UGCFilterFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/home/fragment/filter/UGCFilterFragment;->F0(Lcom/transsion/home/fragment/filter/UGCFilterFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    :cond_0
    return-void
.end method
