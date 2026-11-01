.class final Lcom/transsnet/login/phone/LoginPhoneViewModel$b;
.super Ljava/lang/Object;

# interfaces
.implements Llz/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginPhoneViewModel;->q(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

.field final synthetic b:Lcom/transsnet/login/phone/LoginPhoneViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;Lcom/transsnet/login/phone/LoginPhoneViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->a:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    iput-object p2, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->a:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getAuthType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->j(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Laz/a;

    move-result-object v0

    sget-object v1, Lvg/a;->a:Lvg/a$a;

    invoke-virtual {v1}, Lvg/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Laz/a;->k(Ljava/lang/String;Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->b:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    invoke-static {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->j(Lcom/transsnet/login/phone/LoginPhoneViewModel;)Laz/a;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Laz/a$a;->a(Laz/a;Lokhttp3/RequestBody;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/RequestBody;

    invoke-virtual {p0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel$b;->a(Lokhttp3/RequestBody;)Lio/reactivex/rxjava3/core/m;

    move-result-object p1

    return-object p1
.end method
