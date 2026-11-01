.class public final synthetic Lcom/transsion/usercenter/profile/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/ProfileFragment;

.field public final synthetic b:Lcom/transsnet/loginapi/bean/UserInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/p;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/p;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/p;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/p;->b:Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-static {v0, v1}, Lcom/transsion/usercenter/profile/ProfileFragment;->f0(Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsnet/loginapi/bean/UserInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
