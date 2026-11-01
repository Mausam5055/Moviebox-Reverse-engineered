.class public final synthetic Lrw/i;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/message/UserMessageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/message/UserMessageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrw/i;->a:Lcom/transsion/usercenter/message/UserMessageFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lrw/i;->a:Lcom/transsion/usercenter/message/UserMessageFragment;

    check-cast p1, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/message/UserMessageFragment;->Q0(Lcom/transsion/usercenter/message/UserMessageFragment;Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
