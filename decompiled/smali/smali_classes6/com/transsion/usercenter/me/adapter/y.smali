.class public final synthetic Lcom/transsion/usercenter/me/adapter/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/loginapi/bean/UserInfo;

.field public final synthetic b:Lcom/transsion/usercenter/me/adapter/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/y;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    iput-object p2, p0, Lcom/transsion/usercenter/me/adapter/y;->b:Lcom/transsion/usercenter/me/adapter/b0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/y;->a:Lcom/transsnet/loginapi/bean/UserInfo;

    iget-object v1, p0, Lcom/transsion/usercenter/me/adapter/y;->b:Lcom/transsion/usercenter/me/adapter/b0;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/me/adapter/b0;->y(Lcom/transsnet/loginapi/bean/UserInfo;Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
