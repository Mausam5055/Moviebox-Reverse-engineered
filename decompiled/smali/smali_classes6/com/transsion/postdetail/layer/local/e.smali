.class public final synthetic Lcom/transsion/postdetail/layer/local/e;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/Fragment;

.field public final synthetic b:Lcom/transsion/postdetail/layer/local/a0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/layer/local/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/postdetail/layer/local/e;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/transsion/postdetail/layer/local/e;->b:Lcom/transsion/postdetail/layer/local/a0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/transsion/postdetail/layer/local/e;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/transsion/postdetail/layer/local/e;->b:Lcom/transsion/postdetail/layer/local/a0;

    invoke-static {v0, v1}, Lcom/transsion/postdetail/layer/local/a0;->Q(Landroidx/fragment/app/Fragment;Lcom/transsion/postdetail/layer/local/a0;)Lcom/transsion/baseui/widget/f;

    move-result-object v0

    return-object v0
.end method
