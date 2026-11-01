.class public final Lcom/transsion/member/premium/PremiumProvider$b;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/premium/PremiumProvider;->g(Lzm/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lzm/j;

.field final synthetic e:Lcom/transsion/member/premium/PremiumProvider;


# direct methods
.method constructor <init>(Lzm/j;Lcom/transsion/member/premium/PremiumProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/member/premium/PremiumProvider$b;->d:Lzm/j;

    iput-object p2, p0, Lcom/transsion/member/premium/PremiumProvider$b;->e:Lcom/transsion/member/premium/PremiumProvider;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch member detail failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_api"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumProvider$b;->d:Lzm/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lzm/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/memberapi/MemberDetail;

    invoke-virtual {p0, p1}, Lcom/transsion/member/premium/PremiumProvider$b;->e(Lcom/transsion/memberapi/MemberDetail;)V

    return-void
.end method

.method public e(Lcom/transsion/memberapi/MemberDetail;)V
    .locals 14

    invoke-super {p0, p1}, Lsg/a;->c(Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumProvider$b;->e:Lcom/transsion/member/premium/PremiumProvider;

    invoke-static {v0, p1}, Lcom/transsion/member/premium/PremiumProvider;->D(Lcom/transsion/member/premium/PremiumProvider;Lcom/transsion/memberapi/MemberDetail;)V

    sget-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    invoke-virtual {v0}, Lcom/transsion/member/c0;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumProvider$b;->e:Lcom/transsion/member/premium/PremiumProvider;

    invoke-static {v1}, Lcom/transsion/member/premium/PremiumProvider;->C(Lcom/transsion/member/premium/PremiumProvider;)Lcom/transsion/memberapi/MemberDetail;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a81j4vNmh4ta13ST"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getMemberInfo()Lcom/transsion/memberapi/MemberInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lyg/b;->a:Lyg/b$a;

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->getVipLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-PM-Level"

    invoke-virtual {v1, v3, v2}, Lyg/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/memberapi/MemberInfo;->isActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-PM-Active"

    invoke-virtual {v1, v2, v0}, Lyg/b$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/MemberDetail;->getEntitlements()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/memberapi/EntitlementsBean;

    invoke-virtual {v2}, Lcom/transsion/memberapi/EntitlementsBean;->getEntitlementKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subject_ad_free"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lhi/b;->a:Lhi/b;

    invoke-virtual {v0, v1}, Lhi/b;->c(Z)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Lcom/transsion/member/premium/PremiumProvider$b;->e:Lcom/transsion/member/premium/PremiumProvider;

    invoke-virtual {v0}, Lcom/transsion/member/premium/PremiumProvider;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/member/premium/PremiumProvider$b;->e:Lcom/transsion/member/premium/PremiumProvider;

    invoke-virtual {v1}, Lcom/transsion/member/premium/PremiumProvider;->f()I

    move-result v1

    iget-object v3, p0, Lcom/transsion/member/premium/PremiumProvider$b;->e:Lcom/transsion/member/premium/PremiumProvider;

    invoke-virtual {v3}, Lcom/transsion/member/premium/PremiumProvider;->i()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/member/premium/PremiumProvider$b;->e:Lcom/transsion/member/premium/PremiumProvider;

    invoke-virtual {v4}, Lcom/transsion/member/premium/PremiumProvider;->t()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fetch member detail succeed --> isActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " --> FreeDownloadTimes = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> OnceDownloadLimit = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> VipResolutionRatio = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "premium_api"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v8, Llg/a;->a:Llg/a$a;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "premium_api"

    const-string v10, "Fetch member detail failed"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/member/premium/PremiumProvider$b;->d:Lzm/j;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lzm/j;->b(Lcom/transsion/memberapi/MemberDetail;)V

    :cond_4
    return-void
.end method
