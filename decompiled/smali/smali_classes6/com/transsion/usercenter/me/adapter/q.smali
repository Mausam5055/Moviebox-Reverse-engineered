.class public final synthetic Lcom/transsion/usercenter/me/adapter/q;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

.field public final synthetic b:Lcom/transsion/usercenter/me/adapter/r;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/q;->a:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/q;->b:Lcom/transsion/usercenter/me/adapter/r;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/q;->a:Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/q;->b:Lcom/transsion/usercenter/me/adapter/r;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/me/adapter/r;->y(Lcom/transsion/usercenter/profile/bean/MineNoticeConfig;Lcom/transsion/usercenter/me/adapter/r;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
