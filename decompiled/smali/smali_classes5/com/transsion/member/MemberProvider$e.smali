.class public final Lcom/transsion/member/MemberProvider$e;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/MemberProvider;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/member/MemberProvider;


# direct methods
.method constructor <init>(Lcom/transsion/member/MemberProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/MemberProvider$e;->d:Lcom/transsion/member/MemberProvider;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch member detail failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {p0, p1}, Lcom/transsion/member/MemberProvider$e;->e(Lcom/transsion/memberapi/MemberDetail;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 3

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch member detail succeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/member/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/member/MemberProvider$e;->d:Lcom/transsion/member/MemberProvider;

    invoke-static {v0, p1}, Lcom/transsion/member/MemberProvider;->R(Lcom/transsion/member/MemberProvider;Lcom/transsion/memberapi/MemberDetail;)V

    sget-object p1, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {p1}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/member/MemberProvider$e;->d:Lcom/transsion/member/MemberProvider;

    invoke-static {v0}, Lcom/transsion/member/MemberProvider;->N(Lcom/transsion/member/MemberProvider;)Lcom/transsion/memberapi/MemberDetail;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMBER_JSON"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/transsion/member/a;->a:Lcom/transsion/member/a;

    const-string v0, "Fetch member detail failed"

    invoke-virtual {p1, v0}, Lcom/transsion/member/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
