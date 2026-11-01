.class public final synthetic Lcom/transsion/usercenter/profile/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lfw/m0;

.field public final synthetic b:Lcom/transsion/usercenter/profile/ProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lfw/m0;Lcom/transsion/usercenter/profile/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/k;->a:Lfw/m0;

    iput-object p2, p0, Lcom/transsion/usercenter/profile/k;->b:Lcom/transsion/usercenter/profile/ProfileFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/profile/k;->a:Lfw/m0;

    iget-object v1, p0, Lcom/transsion/usercenter/profile/k;->b:Lcom/transsion/usercenter/profile/ProfileFragment;

    check-cast p1, Lcom/transsion/usercenterapi/UpdateResultEvent;

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/profile/ProfileFragment;->p0(Lfw/m0;Lcom/transsion/usercenter/profile/ProfileFragment;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
