.class public final synthetic Lcom/transsion/subroom/activity/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/loginapi/ILoginApi;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/loginapi/ILoginApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/subroom/activity/e;->a:Lcom/transsnet/loginapi/ILoginApi;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/transsion/subroom/activity/e;->a:Lcom/transsnet/loginapi/ILoginApi;

    invoke-static {v0}, Lcom/transsion/subroom/activity/MainActivity;->q0(Lcom/transsnet/loginapi/ILoginApi;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
