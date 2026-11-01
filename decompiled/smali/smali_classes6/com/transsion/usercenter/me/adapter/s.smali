.class public final synthetic Lcom/transsion/usercenter/me/adapter/s;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/bean/MineNovel;

.field public final synthetic b:Lcom/transsion/usercenter/me/adapter/u;

.field public final synthetic c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/s;->a:Lcom/transsion/usercenter/profile/bean/MineNovel;

    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/s;->b:Lcom/transsion/usercenter/me/adapter/u;

    iput-object p3, p0, Lcom/transsion/usercenter/me/adapter/s;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/s;->a:Lcom/transsion/usercenter/profile/bean/MineNovel;

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/s;->b:Lcom/transsion/usercenter/me/adapter/u;

    iget-object v2, p0, Lcom/transsion/usercenter/me/adapter/s;->c:Lcom/transsion/usercenter/profile/bean/MeItemInfo;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/usercenter/me/adapter/u;->B(Lcom/transsion/usercenter/profile/bean/MineNovel;Lcom/transsion/usercenter/me/adapter/u;Lcom/transsion/usercenter/profile/bean/MeItemInfo;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
