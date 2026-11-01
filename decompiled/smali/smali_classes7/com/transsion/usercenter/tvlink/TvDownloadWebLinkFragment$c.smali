.class public final Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment$c;->a:Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment$c;->a:Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;->c0(Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;I)V

    iget-object v0, p0, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment$c;->a:Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;->e0(Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    iget-object p1, p0, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment$c;->a:Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;

    invoke-static {p1}, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;->d0(Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment$c;->a:Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;->e0(Lcom/transsion/usercenter/tvlink/TvDownloadWebLinkFragment;Lcom/google/android/material/tabs/TabLayout$Tab;Z)V

    return-void
.end method
