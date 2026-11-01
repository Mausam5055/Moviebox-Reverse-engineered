.class public final Lcom/transsion/postdetail/layer/local/a0$d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/postdetail/layer/SystemTimeManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/layer/local/a0;->L1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/postdetail/layer/local/a0;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/a0$d;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/a0$d;->c(Lcom/transsion/postdetail/layer/local/a0;)V

    return-void
.end method

.method private static final c(Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/postdetail/layer/local/a0;->y0(Lcom/transsion/postdetail/layer/local/a0;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/a0$d;->a:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0}, Lcom/transsion/postdetail/layer/local/a0;->q0(Lcom/transsion/postdetail/layer/local/a0;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/a0$d;->a:Lcom/transsion/postdetail/layer/local/a0;

    new-instance v2, Lcom/transsion/postdetail/layer/local/b0;

    invoke-direct {v2, v1}, Lcom/transsion/postdetail/layer/local/b0;-><init>(Lcom/transsion/postdetail/layer/local/a0;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const-wide/16 v0, 0x7530

    return-wide v0
.end method
