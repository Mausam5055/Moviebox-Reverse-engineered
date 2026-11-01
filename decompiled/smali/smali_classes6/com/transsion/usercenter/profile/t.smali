.class public final synthetic Lcom/transsion/usercenter/profile/t;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsion/usercenter/profile/ProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/usercenter/profile/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/profile/t;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/profile/t;->a:Lcom/transsion/usercenter/profile/ProfileFragment;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/ProfileFragment;->o0(Lcom/transsion/usercenter/profile/ProfileFragment;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
