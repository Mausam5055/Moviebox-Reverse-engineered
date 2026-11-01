.class public final Lcom/transsion/subroom/activity/MainActivity$d;
.super Ljava/lang/Object;

# interfaces
.implements Lny/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/MainActivity;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subroom/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subroom/activity/MainActivity$d;->a:Lcom/transsion/subroom/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$d;->a:Lcom/transsion/subroom/activity/MainActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lau/a;

    iget-object v0, v0, Lau/a;->m:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/subroom/activity/MainActivity$d;->a:Lcom/transsion/subroom/activity/MainActivity;

    invoke-static {v0, p1, p2}, Lcom/transsion/subroom/activity/MainActivity;->E0(Lcom/transsion/subroom/activity/MainActivity;II)V

    :cond_0
    return-void
.end method
