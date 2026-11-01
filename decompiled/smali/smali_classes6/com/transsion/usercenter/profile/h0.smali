.class public final synthetic Lcom/transsion/usercenter/profile/h0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;


# direct methods
.method public synthetic constructor <init>(ZLcom/transsion/usercenter/profile/ProfileQRCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/usercenter/profile/h0;->a:Z

    iput-object p2, p0, Lcom/transsion/usercenter/profile/h0;->b:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/usercenter/profile/h0;->a:Z

    iget-object v1, p0, Lcom/transsion/usercenter/profile/h0;->b:Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/transsion/usercenter/profile/ProfileQRCodeActivity;->I0(ZLcom/transsion/usercenter/profile/ProfileQRCodeActivity;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
