.class public final synthetic Lcom/transsion/usercenter/me/adapter/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/me/adapter/b0;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/me/adapter/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/me/adapter/a0;->a:Lcom/transsion/usercenter/me/adapter/b0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/me/adapter/a0;->a:Lcom/transsion/usercenter/me/adapter/b0;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/me/adapter/b0;->A(Lcom/transsion/usercenter/me/adapter/b0;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
