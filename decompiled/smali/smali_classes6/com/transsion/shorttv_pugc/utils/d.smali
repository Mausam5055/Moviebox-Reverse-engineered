.class public final synthetic Lcom/transsion/shorttv_pugc/utils/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Lcom/transsion/shorttv_pugc/utils/e;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv_pugc/utils/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/utils/d;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/utils/d;->b:Lcom/transsion/shorttv_pugc/utils/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/utils/d;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/transsion/shorttv_pugc/utils/d;->b:Lcom/transsion/shorttv_pugc/utils/e;

    invoke-static {v0, v1}, Lcom/transsion/shorttv_pugc/utils/e;->a(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv_pugc/utils/e;)V

    return-void
.end method
