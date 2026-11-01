.class public final Llw/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/usercenter/edit/api/RequstUserEntity;Lcom/transsion/usercenter/edit/a;)V
    .locals 1

    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkw/c;->a:Lkw/c$a;

    invoke-virtual {v0, p1, p2}, Lkw/c$a;->b(Lcom/transsion/usercenter/edit/api/RequstUserEntity;Lcom/transsion/usercenter/edit/a;)V

    return-void
.end method

.method public final b(Lcom/transsion/usercenter/edit/a;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkw/c;->a:Lkw/c$a;

    invoke-virtual {v0, p1}, Lkw/c$a;->e(Lcom/transsion/usercenter/edit/a;)V

    return-void
.end method
