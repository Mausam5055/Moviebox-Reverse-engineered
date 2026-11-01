.class public final Lir/b$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/b;->h(Lcom/transsion/share/bean/ShareType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lir/b;

.field final synthetic e:Lcom/transsion/share/bean/ShareType;


# direct methods
.method constructor <init>(Lir/b;Lcom/transsion/share/bean/ShareType;)V
    .locals 0

    iput-object p1, p0, Lir/b$a;->d:Lir/b;

    iput-object p2, p0, Lir/b$a;->e:Lcom/transsion/share/bean/ShareType;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lir/b$a;->d:Lir/b;

    invoke-static {p1}, Lir/b;->d(Lir/b;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/share/bean/ShareBean;

    invoke-virtual {p0, p1}, Lir/b$a;->e(Lcom/transsion/share/bean/ShareBean;)V

    return-void
.end method

.method public e(Lcom/transsion/share/bean/ShareBean;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lir/b$a;->e:Lcom/transsion/share/bean/ShareType;

    invoke-virtual {p1, v0}, Lcom/transsion/share/bean/ShareBean;->setShareType(Lcom/transsion/share/bean/ShareType;)V

    :cond_0
    iget-object v0, p0, Lir/b$a;->d:Lir/b;

    invoke-static {v0}, Lir/b;->d(Lir/b;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
