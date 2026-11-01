.class public final synthetic Lcom/transsion/commercialization/gameres/aha/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/transsion/commercialization/gameres/aha/AHAGameResView;

.field public final synthetic b:Lmk/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/commercialization/gameres/aha/AHAGameResView;Lmk/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/aha/e;->a:Lcom/transsion/commercialization/gameres/aha/AHAGameResView;

    iput-object p2, p0, Lcom/transsion/commercialization/gameres/aha/e;->b:Lmk/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/commercialization/gameres/aha/e;->a:Lcom/transsion/commercialization/gameres/aha/AHAGameResView;

    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/e;->b:Lmk/a;

    invoke-static {v0, v1, p1}, Lcom/transsion/commercialization/gameres/aha/AHAGameResView;->h(Lcom/transsion/commercialization/gameres/aha/AHAGameResView;Lmk/a;Landroid/view/View;)V

    return-void
.end method
