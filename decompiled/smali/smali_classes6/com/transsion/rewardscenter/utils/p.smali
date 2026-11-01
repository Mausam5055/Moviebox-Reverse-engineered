.class public abstract Lcom/transsion/rewardscenter/utils/p;
.super Ljava/lang/Object;


# direct methods
.method public static final a(ZLjava/lang/String;)V
    .locals 9

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object v1, Luh/b;->a:Luh/b$a;

    sget v2, Lcom/transsion/rewardscenter/R$layout;->toast_success_layout:I

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Luh/b$a;->h(Luh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v1, Luh/b;->a:Luh/b$a;

    sget v2, Lcom/transsion/rewardscenter/R$layout;->toast_warning_layout:I

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Luh/b$a;->h(Luh/b$a;ILjava/lang/CharSequence;IIIILjava/lang/Object;)V

    :goto_0
    return-void
.end method
