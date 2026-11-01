.class public final synthetic Lcom/transsion/rewardscenter/prize/a;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/rewardscenter/prize/b;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/rewardscenter/prize/a;->a:Z

    iput-object p2, p0, Lcom/transsion/rewardscenter/prize/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/transsion/rewardscenter/prize/a;->c:Lcom/transsion/rewardscenter/prize/b;

    iput-boolean p4, p0, Lcom/transsion/rewardscenter/prize/a;->d:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/rewardscenter/prize/a;->a:Z

    iget-object v1, p0, Lcom/transsion/rewardscenter/prize/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/rewardscenter/prize/a;->c:Lcom/transsion/rewardscenter/prize/b;

    iget-boolean v3, p0, Lcom/transsion/rewardscenter/prize/a;->d:Z

    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/rewardscenter/prize/b;->y(ZLandroid/content/Context;Lcom/transsion/rewardscenter/prize/b;ZLandroid/view/View;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
