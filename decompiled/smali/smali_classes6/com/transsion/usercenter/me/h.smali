.class public final synthetic Lcom/transsion/usercenter/me/h;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/me/MeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/MeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/h;->a:Lcom/transsion/usercenter/me/MeFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/h;->a:Lcom/transsion/usercenter/me/MeFragment;

    check-cast p1, Lmy/e;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/me/MeFragment;->d0(Lcom/transsion/usercenter/me/MeFragment;Lmy/e;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
