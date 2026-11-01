.class public final synthetic Lcom/transsion/postdetail/helper/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field public final synthetic b:Lcom/transsion/postdetail/helper/ImmVideoHelper;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/helper/d;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/transsion/postdetail/helper/d;->b:Lcom/transsion/postdetail/helper/ImmVideoHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/helper/d;->a:Landroidx/fragment/app/FragmentActivity;

    iget-object v1, p0, Lcom/transsion/postdetail/helper/d;->b:Lcom/transsion/postdetail/helper/ImmVideoHelper;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V

    return-void
.end method
