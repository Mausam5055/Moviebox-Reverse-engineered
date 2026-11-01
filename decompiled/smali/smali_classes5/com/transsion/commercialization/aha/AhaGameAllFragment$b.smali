.class public final Lcom/transsion/commercialization/aha/AhaGameAllFragment$b;
.super Ljava/lang/Object;

# interfaces
.implements Lsj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/aha/AhaGameAllFragment;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/commercialization/aha/AhaGameAllFragment$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/aha/AhaGameAllFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/commercialization/aha/AhaGameAllFragment$b;->a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 7

    iget-object p4, p0, Lcom/transsion/commercialization/aha/AhaGameAllFragment$b;->a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;

    invoke-static {p4}, Lcom/transsion/commercialization/aha/AhaGameAllFragment;->p0(Lcom/transsion/commercialization/aha/AhaGameAllFragment;)Lcom/transsion/commercialization/aha/adapter/a;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-ge p1, p4, :cond_6

    iget-object p4, p0, Lcom/transsion/commercialization/aha/AhaGameAllFragment$b;->a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;

    invoke-static {p4}, Lcom/transsion/commercialization/aha/AhaGameAllFragment;->p0(Lcom/transsion/commercialization/aha/AhaGameAllFragment;)Lcom/transsion/commercialization/aha/adapter/a;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/transsion/bean/AhaGameAllGames;

    move-object v2, p4

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/bean/AhaGameAllGames;->getGameLayoutType()Lcom/transsion/bean/GameLayoutType;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 p4, -0x1

    goto :goto_2

    :cond_3
    sget-object p4, Lcom/transsion/commercialization/aha/AhaGameAllFragment$b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    :goto_2
    const/4 v0, 0x1

    if-eq p4, v0, :cond_5

    const/4 p1, 0x2

    if-eq p4, p1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/transsion/commercialization/aha/AhaGameAllFragment$b;->a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;

    invoke-static {p1}, Lcom/transsion/commercialization/aha/AhaGameAllFragment;->q0(Lcom/transsion/commercialization/aha/AhaGameAllFragment;)Ljk/a;

    move-result-object p1

    invoke-virtual {p1, v2, p2, p3}, Ljk/a;->c(Lcom/transsion/bean/AhaGameAllGames;J)V

    goto :goto_3

    :cond_5
    iget-object p4, p0, Lcom/transsion/commercialization/aha/AhaGameAllFragment$b;->a:Lcom/transsion/commercialization/aha/AhaGameAllFragment;

    invoke-static {p4}, Lcom/transsion/commercialization/aha/AhaGameAllFragment;->q0(Lcom/transsion/commercialization/aha/AhaGameAllFragment;)Ljk/a;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/bean/AhaGameAllGames;->getGameLayoutType()Lcom/transsion/bean/GameLayoutType;

    move-result-object v6

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Ljk/a;->a(Lcom/transsion/bean/AhaGameAllGames;IJLcom/transsion/bean/GameLayoutType;)V

    :cond_6
    :goto_3
    return-void
.end method
