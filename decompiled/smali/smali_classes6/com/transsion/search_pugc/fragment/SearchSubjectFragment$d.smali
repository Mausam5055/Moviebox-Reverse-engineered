.class public final Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$d;
.super Ljava/lang/Object;

# interfaces
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;


# direct methods
.method constructor <init>(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$d;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 0

    invoke-static {p0}, Lnh/n$a;->a(Lnh/n;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$d;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->m0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment$d;->a:Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;

    invoke-static {p1}, Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;->m0(Lcom/transsion/search_pugc/fragment/SearchSubjectFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.transsion.search_pugc.fragment.hot.SearchHotFragment"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;

    invoke-virtual {p1}, Lcom/transsion/search_pugc/fragment/hot/SearchHotFragment;->onConnected()V

    :cond_0
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method
