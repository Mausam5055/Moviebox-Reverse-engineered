.class public final Lcom/transsion/fission/f$a;
.super Lsg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/fission/f;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/fission/f;


# direct methods
.method constructor <init>(Lcom/transsion/fission/f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/fission/f$a;->d:Lcom/transsion/fission/f;

    invoke-direct {p0}, Lsg/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/fission/f$a;->d:Lcom/transsion/fission/f;

    invoke-static {v0}, Lcom/transsion/fission/f;->c(Lcom/transsion/fission/f;)Landroidx/lifecycle/b0;

    move-result-object v0

    new-instance v1, Lcom/tn/lib/net/bean/BaseDto;

    const-string v2, ""

    if-nez p2, :cond_0

    move-object p2, v2

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v2

    :cond_1
    const/4 v3, 0x0

    invoke-direct {v1, p2, p1, v3, v2}, Lcom/tn/lib/net/bean/BaseDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Lcom/tn/lib/net/bean/BaseDto;)V
    .locals 1

    const-string v0, "baseDto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lsg/a;->d(Lcom/tn/lib/net/bean/BaseDto;)V

    iget-object v0, p0, Lcom/transsion/fission/f$a;->d:Lcom/transsion/fission/f;

    invoke-static {v0}, Lcom/transsion/fission/f;->c(Lcom/transsion/fission/f;)Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    return-void
.end method
