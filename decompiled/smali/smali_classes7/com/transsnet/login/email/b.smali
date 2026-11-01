.class public final synthetic Lcom/transsnet/login/email/b;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/email/LoginEmailFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/email/LoginEmailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/email/b;->a:Lcom/transsnet/login/email/LoginEmailFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/email/b;->a:Lcom/transsnet/login/email/LoginEmailFragment;

    check-cast p1, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    invoke-static {v0, p1}, Lcom/transsnet/login/email/LoginEmailFragment;->g0(Lcom/transsnet/login/email/LoginEmailFragment;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
