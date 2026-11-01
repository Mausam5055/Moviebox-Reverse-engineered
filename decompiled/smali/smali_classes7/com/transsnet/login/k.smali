.class public final synthetic Lcom/transsnet/login/k;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/LoginLikeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/LoginLikeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsnet/login/k;->a:Lcom/transsnet/login/LoginLikeActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/login/k;->a:Lcom/transsnet/login/LoginLikeActivity;

    check-cast p1, Lcom/transsnet/loginapi/bean/UserInfo;

    invoke-static {v0, p1}, Lcom/transsnet/login/LoginLikeActivity;->f0(Lcom/transsnet/login/LoginLikeActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
