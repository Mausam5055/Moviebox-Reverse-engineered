.class public final Lcom/transsion/postdetail/myactivity/MyActivityFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/myactivity/MyActivityFragment;->o0()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/myactivity/MyActivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/myactivity/MyActivityFragment$b;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/myactivity/MyActivityFragment$b;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->g0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/myactivity/MyActivityFragment$b;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->h0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    iget-object v0, p0, Lcom/transsion/postdetail/myactivity/MyActivityFragment$b;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->g0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/myactivity/MyActivityFragment$b;->a:Lcom/transsion/postdetail/myactivity/MyActivityFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/postdetail/myactivity/MyActivityFragment;->h0(Lcom/transsion/postdetail/myactivity/MyActivityFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
