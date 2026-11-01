.class public final Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;
.super Ljava/lang/Object;

# interfaces
.implements Ldz/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/trending/provider/RoomProvider;-><init>(Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;Lcom/transsion/home/viewmodel/TrendingViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/trending/provider/RoomProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/trending/provider/RoomProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 1

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider;

    invoke-static {p1}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->J(Lcom/transsion/home/adapter/trending/provider/RoomProvider;)Lcom/transsion/home/viewmodel/TrendingViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/home/viewmodel/TrendingViewModel;->T(Z)V

    :cond_0
    return-void
.end method

.method public onLogout()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/adapter/trending/provider/RoomProvider$d;->a:Lcom/transsion/home/adapter/trending/provider/RoomProvider;

    invoke-static {v0}, Lcom/transsion/home/adapter/trending/provider/RoomProvider;->J(Lcom/transsion/home/adapter/trending/provider/RoomProvider;)Lcom/transsion/home/viewmodel/TrendingViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/home/viewmodel/TrendingViewModel;->T(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-static {p0, p1}, Ldz/a$a;->c(Ldz/a;Lcom/transsnet/loginapi/bean/UserInfo;)V

    return-void
.end method
